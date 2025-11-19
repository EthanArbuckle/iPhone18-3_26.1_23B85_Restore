@interface NSConstantData
- (NSConstantData)initWithBytes:(const void *)a3 length:(unint64_t)a4;
- (NSConstantData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6;
- (NSConstantData)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4;
- (NSConstantData)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5;
- (NSConstantData)initWithData:(id)a3;
@end

@implementation NSConstantData

- (NSConstantData)initWithBytes:(void *)a3 length:(unint64_t)a4 copy:(BOOL)a5 deallocator:(id)a6
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (NSConstantData)initWithData:(id)a3
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (NSConstantData)initWithBytes:(const void *)a3 length:(unint64_t)a4
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (NSConstantData)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

- (NSConstantData)initWithBytesNoCopy:(void *)a3 length:(unint64_t)a4 freeWhenDone:(BOOL)a5
{
  qword_1EA849A30 = "attempting to allocate a constant object";
  __break(1u);
  return self;
}

@end