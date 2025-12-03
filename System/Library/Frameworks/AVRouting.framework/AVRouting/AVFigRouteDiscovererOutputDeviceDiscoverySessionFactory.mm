@interface AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory
- (AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory)init;
- (AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory)initWithRouteDiscovererFactory:(id)factory;
- (id)outputDeviceDiscoverySessionOfClass:(Class)class withDeviceFeatures:(unint64_t)features;
- (void)dealloc;
@end

@implementation AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory

- (AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory)init
{
  Current = AVFigRouteDiscovererFactoryGetCurrent();

  return [(AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory *)self initWithRouteDiscovererFactory:Current];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory;
  [(AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory *)&v3 dealloc];
}

- (id)outputDeviceDiscoverySessionOfClass:(Class)class withDeviceFeatures:(unint64_t)features
{
  v6 = 0;
  if (features > 4)
  {
    switch(features)
    {
      case 5uLL:
        v7 = 3;
        goto LABEL_14;
      case 8uLL:
        v7 = 5;
        goto LABEL_14;
      case 0xFFFFuLL:
        v7 = 6;
        goto LABEL_14;
    }
  }

  else
  {
    switch(features)
    {
      case 1uLL:
        v7 = 2;
        goto LABEL_14;
      case 2uLL:
        v7 = 0;
        goto LABEL_14;
      case 4uLL:
        v7 = 1;
LABEL_14:
        v8 = [AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl alloc];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __114__AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory_outputDeviceDiscoverySessionOfClass_withDeviceFeatures___block_invoke;
        v11[3] = &unk_1E794E980;
        v11[4] = self;
        v12 = v7;
        v6 = [(AVFigRouteDiscovererOutputDeviceDiscoverySessionImpl *)v8 initWithFigRouteDiscovererCreator:v11];
        break;
    }
  }

  v9 = [[class alloc] initWithOutputDeviceDiscoverySessionImpl:v6];

  return v9;
}

uint64_t __114__AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory_outputDeviceDiscoverySessionOfClass_withDeviceFeatures___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) routeDiscovererFactory];
  v3 = *(a1 + 40);

  return AVFigRouteDiscovererFactoryCreateRouteDiscovererWithType(v2, v3);
}

- (AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory)initWithRouteDiscovererFactory:(id)factory
{
  v8.receiver = self;
  v8.super_class = AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory;
  v4 = [(AVFigRouteDiscovererOutputDeviceDiscoverySessionFactory *)&v8 init];
  if (v4 && (v5 = factory, (v4->_routeDiscovererFactory = v5) != 0))
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end