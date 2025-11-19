@interface BKEpubCFILocation
+ (id)deserializeLocationFromDictionary:(id)a3;
+ (id)locationForCFI:(id)a3 error:(id *)a4;
+ (id)unknownLocation;
- (BKEpubCFILocation)initWithCFI:(id)a3;
- (BKEpubCFILocation)initWithCFI:(id)a3 error:(id *)a4;
- (BKEpubCFILocation)initWithCoder:(id)a3;
- (BKEpubCFILocation)initWithLocationDictionary:(id)a3;
- (BKEpubCFILocation)locationWithAdjustedSpineIndex:(int64_t)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)cfiString;
- (NSString)debugDescription;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)ensureRange;
- (id)head;
- (id)intersectWithRangeFromHeadOf:(id)a3 toTailOf:(id)a4;
- (id)rebaseCFIWithHead:(id)a3;
- (id)serializeLocationToDictionary;
- (id)unionWithCFI:(id)a3;
- (int64_t)compare:(id)a3;
- (int64_t)ordinal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setOrdinal:(int64_t)a3;
- (void)updateOrdinalForBookInfo:(id)a3;
@end

@implementation BKEpubCFILocation

+ (id)unknownLocation
{
  if (qword_22D0F0 != -1)
  {
    sub_13850C();
  }

  v3 = qword_22D0E8;

  return v3;
}

- (NSString)cfiString
{
  v2 = [(BKEpubCFILocation *)self cfi];
  v3 = [v2 string];

  return v3;
}

+ (id)locationForCFI:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithCFI:v6 error:a4];

  return v7;
}

+ (id)deserializeLocationFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKEpubCFILocation"])
  {
    v5 = [[BKEpubCFILocation alloc] initWithLocationDictionary:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BKEpubCFILocation)initWithCFI:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKEpubCFILocation;
  v6 = [(BKEpubCFILocation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cfi, a3);
    v7->_pageOffset = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BKEpubCFILocation)initWithCFI:(id)a3 error:(id *)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = BKEpubCFILocation;
  v7 = [(BKEpubCFILocation *)&v20 init];
  if (v7)
  {
    if ([BCCFI isFragmentEpubCFIFunction:v6])
    {
      v19 = 0;
      v8 = [BCCFI cfiWithString:v6 error:&v19];
      v9 = v19;
      cfi = v7->_cfi;
      v7->_cfi = v8;
    }

    else
    {
      v11 = [v6 rangeOfString:@"epubcfi"];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [NSError errorWithDomain:@"BKEpubCFIErrorDomain" code:1 userInfo:0];
      }

      else
      {
        v12 = [v6 substringFromIndex:v11];
        v18 = 0;
        v13 = [BCCFI cfiWithString:v12 error:&v18];
        v9 = v18;
        v14 = v7->_cfi;
        v7->_cfi = v13;
      }
    }

    v7->_pageOffset = 0x7FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v15 = _AELog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v9;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Error %@ forming BCCFI from string %@", buf, 0x16u);
      }

      if (a4)
      {
        v16 = v9;
        *a4 = v9;
      }

      v7 = 0;
    }
  }

  return v7;
}

- (BKEpubCFILocation)initWithLocationDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"super"];
  v14.receiver = self;
  v14.super_class = BKEpubCFILocation;
  v6 = [(BKLocation *)&v14 initWithLocationDictionary:v5];

  if (v6)
  {
    v7 = [v4 objectForKey:@"cfi"];
    v13 = 0;
    v8 = [[BCCFI alloc] initWithCFI:v7 error:&v13];
    v9 = v13;
    cfi = v6->_cfi;
    v6->_cfi = v8;

    if (v9)
    {
      v11 = _AELog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Error %@ forming BCCFI from string %@", buf, 0x16u);
      }

      v6 = 0;
    }
  }

  return v6;
}

- (BKEpubCFILocation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BKEpubCFILocation;
  v5 = [(BKLocation *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cfi"];
    v12 = 0;
    v7 = [[BCCFI alloc] initWithCFI:v6 error:&v12];
    v8 = v12;
    cfi = v5->_cfi;
    v5->_cfi = v7;

    if (v8)
    {
      v10 = _AELog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Error %@ forming BCCFI from string %@", buf, 0x16u);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)serializeLocationToDictionary
{
  v7.receiver = self;
  v7.super_class = BKEpubCFILocation;
  v3 = [(BKLocation *)&v7 serializeLocationToDictionary];
  v4 = [(BKEpubCFILocation *)self cfiString];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:v3, @"super", @"BKEpubCFILocation", @"class", v4, @"cfi", 0];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKEpubCFILocation;
  v4 = a3;
  [(BKLocation *)&v6 encodeWithCoder:v4];
  v5 = [(BKEpubCFILocation *)self cfiString:v6.receiver];
  [v4 encodeObject:v5 forKey:@"cfi"];
}

- (void)setOrdinal:(int64_t)a3
{
  v6 = [(BKEpubCFILocation *)self cfi];
  v5 = [v6 cfiWithAdjustedSpineIndex:a3 error:0];
  [(BKEpubCFILocation *)self setCfi:v5];
}

- (int64_t)ordinal
{
  v2 = [(BKEpubCFILocation *)self cfi];
  v3 = [v2 spineIndex];

  return v3;
}

- (void)updateOrdinalForBookInfo:(id)a3
{
  v4 = a3;
  v5 = [(BKEpubCFILocation *)self cfi];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_C89B4;
  v8[3] = &unk_1E5358;
  v9 = v4;
  v6 = v4;
  v7 = [v5 cfiWithSpineIndexAdjustedUsingAssertionBlock:v8];
  [(BKEpubCFILocation *)self setCfi:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = BKEpubCFILocation, [(BKLocation *)&v9 isEqual:v4]))
  {
    v5 = [(BKEpubCFILocation *)self cfi];
    v6 = [v4 cfi];
    v7 = [v5 compare:v6] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(BKEpubCFILocation *)self cfi];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(BKEpubCFILocation *)self cfi];
  v6 = [v4 cfi];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(BKEpubCFILocation *)self cfi];
  v6 = [v5 copy];
  [v4 setCfi:v6];

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKEpubCFILocation *)self cfi];
  v6 = [v5 redactedString];
  v7 = [NSString stringWithFormat:@"<%@: %p %@ pageOffset:%lu>", v4, self, v6, [(BKEpubCFILocation *)self pageOffset]];

  return v7;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKEpubCFILocation *)self cfi];
  v6 = [v5 debugDescription];
  v7 = [NSString stringWithFormat:@"<%@: %p %@ pageOffset:%lu>", v4, self, v6, [(BKEpubCFILocation *)self pageOffset]];

  return v7;
}

- (id)intersectWithRangeFromHeadOf:(id)a3 toTailOf:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKEpubCFILocation *)self cfi];
  v9 = [v7 cfi];

  v10 = [v6 cfi];

  v11 = [v8 intersectWithRangeFromHeadOf:v9 toTailOf:v10];

  if (v11)
  {
    v12 = [[BKEpubCFILocation alloc] initWithCFI:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)rebaseCFIWithHead:(id)a3
{
  cfi = self->_cfi;
  v4 = [a3 cfi];
  v5 = [(BCCFI *)cfi rebaseCFIWithHead:v4];

  if (v5)
  {
    v6 = [[BKEpubCFILocation alloc] initWithCFI:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)unionWithCFI:(id)a3
{
  v4 = a3;
  v5 = [(BKEpubCFILocation *)self cfi];
  v6 = [v4 cfi];

  v7 = [v5 unionWithCFI:v6];

  if (v7)
  {
    v8 = [[BKEpubCFILocation alloc] initWithCFI:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)ensureRange
{
  v2 = [(BCCFI *)self->_cfi ensureRange];
  if (v2)
  {
    v3 = [[BKEpubCFILocation alloc] initWithCFI:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)head
{
  if (([(BCCFI *)self->_cfi isRange]& 1) != 0)
  {
    v3 = [BKEpubCFILocation alloc];
    v4 = [(BCCFI *)self->_cfi headCFI];
    v5 = [(BKEpubCFILocation *)v3 initWithCFI:v4];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (BKEpubCFILocation)locationWithAdjustedSpineIndex:(int64_t)a3 error:(id *)a4
{
  v4 = [(BCCFI *)self->_cfi cfiWithAdjustedSpineIndex:a3 error:a4];
  if (v4)
  {
    v5 = [[BKEpubCFILocation alloc] initWithCFI:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end