@interface VOTImageExplorerDetailData
- (VOTImageExplorerDetailData)initWithCoder:(id)coder;
- (VOTImageExplorerDetailData)initWithKey:(id)key values:(id)values;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VOTImageExplorerDetailData

- (VOTImageExplorerDetailData)initWithKey:(id)key values:(id)values
{
  keyCopy = key;
  valuesCopy = values;
  v11.receiver = self;
  v11.super_class = VOTImageExplorerDetailData;
  v8 = [(VOTImageExplorerDetailData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VOTImageExplorerDetailData *)v8 setKey:keyCopy];
    [(VOTImageExplorerDetailData *)v9 setValues:valuesCopy];
  }

  return v9;
}

- (VOTImageExplorerDetailData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  [(VOTImageExplorerDetailData *)self setKey:v5];

  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"values"];

  [(VOTImageExplorerDetailData *)self setValues:v8];
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(VOTImageExplorerDetailData *)self key];
  [coderCopy encodeObject:v5 forKey:@"key"];

  values = [(VOTImageExplorerDetailData *)self values];
  [coderCopy encodeObject:values forKey:@"values"];
}

@end