@interface MTRDeviceType
+ (id)deviceTypeForID:(id)d;
- (BOOL)isEqual:(id)equal;
@end

@implementation MTRDeviceType

+ (id)deviceTypeForID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy unsignedLongLongValue] >> 32)
  {
    v7 = sub_2393D9044(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v10.receiver) = 134217984;
      *(&v10.receiver + 4) = [dCopy unsignedLongLongValue];
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Invalid device type ID: 0x%llx", &v10, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      [dCopy unsignedLongLongValue];
      sub_2393D5320(0, 1);
    }
  }

  else
  {
    v4 = sub_238EA53DC([dCopy unsignedLongLongValue]);
    if (v4)
    {
      v5 = [MTRDeviceType alloc];
      if (v5)
      {
        v10.receiver = v5;
        v10.super_class = MTRDeviceType;
        v6 = objc_msgSendSuper2(&v10, sel_init);
        v6[1] = v4;
        goto LABEL_10;
      }
    }
  }

  v6 = 0;
LABEL_10:

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_meta->var0 == *equalCopy[1];

  return v6;
}

@end