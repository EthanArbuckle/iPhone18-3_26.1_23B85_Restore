@interface MTLTypeInternal
- (BOOL)isEqual:(id)a3;
- (MTLTypeInternal)initWithDataType:(unint64_t)a3;
- (id)description;
- (id)formattedDescription:(unint64_t)a3;
- (void)dealloc;
@end

@implementation MTLTypeInternal

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLTypeInternal;
  [(MTLTypeInternal *)&v2 dealloc];
}

- (MTLTypeInternal)initWithDataType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MTLTypeInternal;
  result = [(MTLTypeInternal *)&v5 init];
  result->_dataType = a3;
  return result;
}

- (id)formattedDescription:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(MTLTypeInternal *)self formattedDescription:a3 withPrintedTypes:v5];

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MTLTypeInternal *)self formattedDescription:0 withPrintedTypes:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && self->_dataType == *(a3 + 1);
}

@end