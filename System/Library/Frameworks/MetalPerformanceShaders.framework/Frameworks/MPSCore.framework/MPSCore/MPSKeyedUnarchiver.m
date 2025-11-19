@interface MPSKeyedUnarchiver
+ (id)unarchivedObjectOfClass:(Class)cls fromData:(NSData *)data device:(id)device error:(NSError *)error;
+ (id)unarchivedObjectOfClasses:(NSSet *)classes fromData:(NSData *)data device:(id)device error:(NSError *)error;
- (MPSKeyedUnarchiver)initForReadingFromData:(NSData *)data device:(id)device error:(NSError *)error;
- (void)dealloc;
@end

@implementation MPSKeyedUnarchiver

+ (id)unarchivedObjectOfClasses:(NSSet *)classes fromData:(NSData *)data device:(id)device error:(NSError *)error
{
  v10 = [MPSKeyedUnarchiver alloc];
  v12 = objc_msgSend_initForReadingFromData_device_error_(v10, v11, data, device, error);
  if (!v12)
  {
    return 0;
  }

  v14 = v12;
  v15 = objc_msgSend_decodeTopLevelObjectOfClasses_forKey_error_(v12, v13, classes, *MEMORY[0x277CCA308], error);

  return v15;
}

+ (id)unarchivedObjectOfClass:(Class)cls fromData:(NSData *)data device:(id)device error:(NSError *)error
{
  v17 = cls;
  v10 = objc_alloc(MEMORY[0x277CBEB98]);
  v13 = objc_msgSend_initWithObjects_count_(v10, v11, &v17, 1, v12);
  v15 = objc_msgSend_unarchivedObjectOfClasses_fromData_device_error_(a1, v14, v13, data, device, error);

  return v15;
}

- (MPSKeyedUnarchiver)initForReadingFromData:(NSData *)data device:(id)device error:(NSError *)error
{
  v9.receiver = self;
  v9.super_class = MPSKeyedUnarchiver;
  result = [(MPSKeyedUnarchiver *)&v9 initForReadingFromData:data error:error];
  if (result)
  {
    v7 = result;
    v8 = device;
    result = v7;
    v7->_device = v8;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSKeyedUnarchiver;
  [(MPSKeyedUnarchiver *)&v3 dealloc];
}

@end