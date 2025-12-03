@interface AEAggregationPlugin
- (AEAggregationPlugin)initWithFileExtension:(id)extension;
- (AEAggregationPlugin)initWithUrlScheme:(id)scheme;
- (id)helperForURL:(id)l withOptions:(id)options;
- (id)supportedFileExtensions;
- (id)supportedUrlSchemes;
- (void)addPlugin:(id)plugin;
- (void)dealloc;
@end

@implementation AEAggregationPlugin

- (AEAggregationPlugin)initWithFileExtension:(id)extension
{
  extensionCopy = extension;
  v5 = [(AEAggregationPlugin *)self init];
  if (v5)
  {
    v6 = [extensionCopy copy];
    extension = v5->_extension;
    v5->_extension = v6;
  }

  return v5;
}

- (AEAggregationPlugin)initWithUrlScheme:(id)scheme
{
  schemeCopy = scheme;
  v5 = [(AEAggregationPlugin *)self init];
  if (v5)
  {
    v6 = [schemeCopy copy];
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

- (void)addPlugin:(id)plugin
{
  pluginCopy = plugin;
  plugins = self->_plugins;
  v8 = pluginCopy;
  if (!plugins)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_plugins;
    self->_plugins = v6;

    pluginCopy = v8;
    plugins = self->_plugins;
  }

  [(NSMutableArray *)plugins addObject:pluginCopy];
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

- (id)helperForURL:(id)l withOptions:(id)options
{
  optionsCopy = options;
  lCopy = l;
  v8 = [[AEAggregationhelper alloc] initWithPlugins:self->_plugins forUrl:lCopy withOptions:optionsCopy];

  return v8;
}

@end