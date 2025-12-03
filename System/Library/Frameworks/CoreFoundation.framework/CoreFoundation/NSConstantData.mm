@interface NSConstantData
- (NSConstantData)initWithBytes:(const void *)bytes length:(unint64_t)length;
- (NSConstantData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator;
- (NSConstantData)initWithBytesNoCopy:(void *)copy length:(unint64_t)length;
- (NSConstantData)initWithBytesNoCopy:(void *)copy length:(unint64_t)length freeWhenDone:(BOOL)done;
- (NSConstantData)initWithData:(id)data;
@end

@implementation NSConstantData

- (NSConstantData)initWithBytes:(void *)bytes length:(unint64_t)length copy:(BOOL)copy deallocator:(id)deallocator
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (NSConstantData)initWithData:(id)data
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (NSConstantData)initWithBytes:(const void *)bytes length:(unint64_t)length
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (NSConstantData)initWithBytesNoCopy:(void *)copy length:(unint64_t)length
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (NSConstantData)initWithBytesNoCopy:(void *)copy length:(unint64_t)length freeWhenDone:(BOOL)done
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

@end