@interface AEAggregationPlugin
- (AEAggregationPlugin)initWithFileExtension:(id)a3;
- (AEAggregationPlugin)initWithUrlScheme:(id)a3;
- (id)helperForURL:(id)a3 withOptions:(id)a4;
- (id)supportedFileExtensions;
- (id)supportedUrlSchemes;
- (void)addPlugin:(id)a3;
- (void)dealloc;
@end

@implementation AEAggregationPlugin

- (AEAggregationPlugin)initWithFileExtension:(id)a3
{
  v4 = a3;
  v5 = [(AEAggregationPlugin *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    extension = v5->_extension;
    v5->_extension = v6;
  }

  return v5;
}

- (AEAggregationPlugin)initWithUrlScheme:(id)a3
{
  v4 = a3;
  v5 = [(AEAggregationPlugin *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    scheme = v5->_scheme;
    v5->_scheme = v6;
  }

  return v5;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_plugins removeAllObjects];
  plugins = self->_plugins;
  self->_plugins = 0;

  v4.receiver = self;
  v4.super_class = AEAggregationPlugin;
  [(AEAggregationPlugin *)&v4 dealloc];
}

- (void)addPlugin:(id)a3
{
  v4 = a3;
  plugins = self->_plugins;
  v8 = v4;
  if (!plugins)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_plugins;
    self->_plugins = v6;

    v4 = v8;
    plugins = self->_plugins;
  }

  [(NSMutableArray *)plugins addObject:v4];
}

- (id)supportedFileExtensions
{
  v3 = [(NSString *)self->_extension length];
  if (v3)
  {
    v3 = [NSArray arrayWithObject:self->_extension];
  }

  return v3;
}

- (id)supportedUrlSchemes
{
  v3 = [(NSString *)self->_scheme length];
  if (v3)
  {
    v3 = [NSArray arrayWithObject:self->_scheme];
  }

  return v3;
}

- (id)helperForURL:(id)a3 withOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AEAggregationhelper alloc] initWithPlugins:self->_plugins forUrl:v7 withOptions:v6];

  return v8;
}

@end