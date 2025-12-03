@interface VOTImageExplorerCustomContentValue
- (VOTImageExplorerCustomContentValue)initWithFeatureValue:(id)value featureType:(id)type;
@end

@implementation VOTImageExplorerCustomContentValue

- (VOTImageExplorerCustomContentValue)initWithFeatureValue:(id)value featureType:(id)type
{
  valueCopy = value;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = VOTImageExplorerCustomContentValue;
  v8 = [(VOTImageExplorerCustomContentValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VOTImageExplorerCustomContentValue *)v8 setValue:valueCopy];
    [(VOTImageExplorerCustomContentValue *)v9 setType:typeCopy];
  }

  return v9;
}

@end