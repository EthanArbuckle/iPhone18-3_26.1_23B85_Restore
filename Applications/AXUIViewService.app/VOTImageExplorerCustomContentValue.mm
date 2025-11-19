@interface VOTImageExplorerCustomContentValue
- (VOTImageExplorerCustomContentValue)initWithFeatureValue:(id)a3 featureType:(id)a4;
@end

@implementation VOTImageExplorerCustomContentValue

- (VOTImageExplorerCustomContentValue)initWithFeatureValue:(id)a3 featureType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VOTImageExplorerCustomContentValue;
  v8 = [(VOTImageExplorerCustomContentValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VOTImageExplorerCustomContentValue *)v8 setValue:v6];
    [(VOTImageExplorerCustomContentValue *)v9 setType:v7];
  }

  return v9;
}

@end