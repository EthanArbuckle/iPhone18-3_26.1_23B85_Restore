@interface VOTImageExplorerDetailData
- (VOTImageExplorerDetailData)initWithCoder:(id)a3;
- (VOTImageExplorerDetailData)initWithKey:(id)a3 values:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VOTImageExplorerDetailData

- (VOTImageExplorerDetailData)initWithKey:(id)a3 values:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VOTImageExplorerDetailData;
  v8 = [(VOTImageExplorerDetailData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VOTImageExplorerDetailData *)v8 setKey:v6];
    [(VOTImageExplorerDetailData *)v9 setValues:v7];
  }

  return v9;
}

- (VOTImageExplorerDetailData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  [(VOTImageExplorerDetailData *)self setKey:v5];

  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"values"];

  [(VOTImageExplorerDetailData *)self setValues:v8];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VOTImageExplorerDetailData *)self key];
  [v4 encodeObject:v5 forKey:@"key"];

  v6 = [(VOTImageExplorerDetailData *)self values];
  [v4 encodeObject:v6 forKey:@"values"];
}

@end