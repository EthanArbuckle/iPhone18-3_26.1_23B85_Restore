@interface MTLTypeInternal
- (BOOL)isEqual:(id)equal;
- (MTLTypeInternal)initWithDataType:(unint64_t)type;
- (id)description;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLTypeInternal

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLTypeInternal;
  [(MTLTypeInternal *)&v2 dealloc];
}

- (MTLTypeInternal)initWithDataType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = MTLTypeInternal;
  result = [(MTLTypeInternal *)&v5 init];
  result->_dataType = type;
  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MTLTypeInternal *)self formattedDescription:description withPrintedTypes:v5];

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MTLTypeInternal *)self formattedDescription:0 withPrintedTypes:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_dataType == *(equal + 1);
}

@end