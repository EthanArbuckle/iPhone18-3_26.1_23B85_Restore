@interface MPSNNDefaultPadding
+ (MPSNNDefaultPadding)paddingForTensorflowAveragePooling;
+ (MPSNNDefaultPadding)paddingForTensorflowAveragePoolingValidOnly;
+ (MPSNNDefaultPadding)paddingWithMethod:(MPSNNPaddingMethod)method;
+ (id)zeroPaddingWithTopAmount:(unint64_t)a3 bottomAmount:(unint64_t)a4 leftAmount:(unint64_t)a5 rightAmount:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (MPSNNDefaultPadding)initWithCoder:(id)a3;
- (MPSNNDefaultPadding)initWithPaddingMethod:(unint64_t)a3;
- (NSString)debugDescription;
- (NSString)label;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNNDefaultPadding

- (NSString)debugDescription
{
  v3 = off_278B35D20[(self->_method >> 4) & 3];
  if (*v3)
  {
    v4 = " | ";
  }

  else
  {
    v4 = "";
  }

  v5 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = MPSNNDefaultPadding;
  v6 = [(MPSNNDefaultPadding *)&v14 debugDescription];
  return objc_msgSend_stringWithFormat_(v5, v7, @"%@\t%s | %s | %s%s%s", v8, v9, v10, v11, v12, v6, off_278B35D40[self->_method & 3], off_278B35D60[(self->_method >> 2) & 3], v3, v4, *(&off_278B35D80 + (self->_method >> 13)));
}

- (NSString)label
{
  v7 = off_278B35D20[(self->_method >> 4) & 3];
  if (*v7)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%s, %s, %s%s%s", v2, v3, v4, v5, v6, off_278B35D40[self->_method & 3], off_278B35D60[(self->_method >> 2) & 3], v7, ", ", *(&off_278B35D80 + (self->_method >> 14)));
  }

  else
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%s, %s, %s%s%s", v2, v3, v4, v5, v6, off_278B35D40[self->_method & 3], off_278B35D60[(self->_method >> 2) & 3], v7, "", *(&off_278B35D80 + (self->_method >> 14)));
  }
}

- (MPSNNDefaultPadding)initWithPaddingMethod:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MPSNNDefaultPadding;
  result = [(MPSNNDefaultPadding *)&v5 init];
  if (result)
  {
    result->_method = a3;
    result->_mpsOwned = 0;
  }

  return result;
}

+ (MPSNNDefaultPadding)paddingWithMethod:(MPSNNPaddingMethod)method
{
  if ((method & 0x4000) != 0)
  {
    v14 = a1;
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if ((method & 0xFFFFFFFFFFFF3800) != 0)
  {
    v14 = a1;
    if (MTLReportFailureTypeEnabled())
    {
LABEL_15:
      MTLReportFailure();
    }

LABEL_16:

    return 0;
  }

  if ((~method & 3) != 0)
  {
    v3 = method & 0x3F | (((method >> 15) & 1) << 6);
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (v3 > 0x7F)
  {
    return 0;
  }

  result = atomic_load_explicit(&qword_280B04AC0[v3], memory_order_acquire);
  if (!result)
  {
    v6 = [MPSNNDefaultPadding alloc];
    result = objc_msgSend_initWithPaddingMethod_(v6, v7, method, v8, v9, v10, v11, v12);
    v13 = 0;
    result->_mpsOwned = 1;
    atomic_compare_exchange_strong_explicit(&qword_280B04AC0[v3], &v13, result, memory_order_release, memory_order_relaxed);
    if (v13)
    {
      result->_mpsOwned = 0;

      return atomic_load_explicit(&qword_280B04AC0[v3], memory_order_acquire);
    }
  }

  return result;
}

+ (MPSNNDefaultPadding)paddingForTensorflowAveragePooling
{
  result = atomic_load_explicit(&qword_27DF882C8, memory_order_acquire);
  if (!result)
  {
    result = objc_opt_new();
    v3 = 0;
    result->_mpsOwned = 1;
    atomic_compare_exchange_strong_explicit(&qword_27DF882C8, &v3, result, memory_order_release, memory_order_relaxed);
    if (v3)
    {
      result->_mpsOwned = 0;

      return atomic_load_explicit(&qword_27DF882C8, memory_order_acquire);
    }
  }

  return result;
}

+ (MPSNNDefaultPadding)paddingForTensorflowAveragePoolingValidOnly
{
  result = atomic_load_explicit(&qword_27DF882D0, memory_order_acquire);
  if (!result)
  {
    result = objc_opt_new();
    v3 = 0;
    result->_mpsOwned = 1;
    atomic_compare_exchange_strong_explicit(&qword_27DF882D0, &v3, result, memory_order_release, memory_order_relaxed);
    if (v3)
    {
      result->_mpsOwned = 0;

      return atomic_load_explicit(&qword_27DF882D0, memory_order_acquire);
    }
  }

  return result;
}

+ (id)zeroPaddingWithTopAmount:(unint64_t)a3 bottomAmount:(unint64_t)a4 leftAmount:(unint64_t)a5 rightAmount:(unint64_t)a6
{
  v10 = [ExplicitZeroPadding alloc];
  v14 = objc_msgSend_initWithPaddingLeft_paddingRight_paddingTop_paddingBottom_(v10, v11, a5, a6, a3, a4, v12, v13);

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  isMemberOfClass = objc_msgSend_isMemberOfClass_(a3, v6, v5, v7, v8, v9, v10, v11);
  if (isMemberOfClass)
  {
    LOBYTE(isMemberOfClass) = (objc_opt_respondsToSelector() & 1) == 0 && self->_method == *(a3 + 1);
  }

  return isMemberOfClass;
}

- (void)encodeWithCoder:(id)a3
{
  objc_msgSend_encodeInt32_forKey_(a3, a2, 1, @"kMPSNNPaddingMethod_vers", v3, v4, v5, v6);
  method_low = LODWORD(self->_method);

  objc_msgSend_encodeInt32_forKey_(a3, v9, method_low, @"kMPSNNPaddingMethod", v10, v11, v12, v13);
}

- (MPSNNDefaultPadding)initWithCoder:(id)a3
{
  if (objc_msgSend_decodeInt32ForKey_(a3, v4, @"kMPSNNPaddingMethod_vers", v5, v6, v7, v8, v9) != 1)
  {
    return 0;
  }

  v16 = objc_msgSend_decodeInt32ForKey_(a3, v10, @"kMPSNNPaddingMethod", v11, v12, v13, v14, v15);
  v23 = objc_msgSend_paddingWithMethod_(MPSNNDefaultPadding, v17, v16, v18, v19, v20, v21, v22);

  return v23;
}

- (void)dealloc
{
  if (self->_mpsOwned && MTLReportFailureTypeEnabled())
  {
    v10 = objc_msgSend_debugDescription(self, v3, v4, v5, v6, v7, v8, v9);
    MTLReportFailure();
  }

  v11.receiver = self;
  v11.super_class = MPSNNDefaultPadding;
  [(MPSNNDefaultPadding *)&v11 dealloc];
}

@end