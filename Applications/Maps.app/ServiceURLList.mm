@interface ServiceURLList
+ (id)defaultServiceURLLists;
- ($6E15C01CA1BE37A4936191A84F7075E2)defaultsKey;
- (ServiceURLList)initWithName:(id)name defaultsKey:(id)key;
- (id)URLAtIndex:(unint64_t)index;
- (id)infoAtIndex:(unint64_t)index;
- (id)nameAtIndex:(unint64_t)index;
- (void)addURL:(id)l withName:(id)name info:(id)info;
@end

@implementation ServiceURLList

- (id)infoAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_infos count]>= index)
  {
    v6 = [(NSMutableArray *)self->_infos objectAtIndexedSubscript:index];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)nameAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_names count]>= index)
  {
    v5 = [(NSMutableArray *)self->_names objectAtIndexedSubscript:index];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)URLAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_urls count]>= index)
  {
    v5 = [(NSMutableArray *)self->_urls objectAtIndexedSubscript:index];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addURL:(id)l withName:(id)name info:(id)info
{
  infoCopy = info;
  names = self->_names;
  lCopy = l;
  [(NSMutableArray *)names addObject:name];
  [(NSMutableArray *)self->_urls addObject:lCopy];

  infos = self->_infos;
  if (infoCopy)
  {
    [(NSMutableArray *)self->_infos addObject:infoCopy];
  }

  else
  {
    v11 = +[NSNull null];
    [(NSMutableArray *)infos addObject:v11];
  }
}

- ($6E15C01CA1BE37A4936191A84F7075E2)defaultsKey
{
  metadata = self->_defaultsKey.key.metadata;
  v3 = *&self->_defaultsKey.key.identifier;
  result.var0.var1 = metadata;
  *&result.var0.var0 = v3;
  return result;
}

- (ServiceURLList)initWithName:(id)name defaultsKey:(id)key
{
  var1 = key.var0.var1;
  v5 = *&key.var0.var0;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = ServiceURLList;
  v8 = [(ServiceURLList *)&v19 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    serviceName = v8->_serviceName;
    v8->_serviceName = v9;

    *&v8->_defaultsKey.key.identifier = v5;
    v8->_defaultsKey.key.metadata = var1;
    v11 = objc_alloc_init(NSMutableArray);
    names = v8->_names;
    v8->_names = v11;

    v13 = objc_alloc_init(NSMutableArray);
    urls = v8->_urls;
    v8->_urls = v13;

    v15 = objc_alloc_init(NSMutableArray);
    infos = v8->_infos;
    v8->_infos = v15;

    v17 = v8;
  }

  return v8;
}

+ (id)defaultServiceURLLists
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = 1;
  v4 = off_10165E8F0;
  do
  {
    if (v3 - 23 < 0x2C || v3 <= 0x15 && ((1 << v3) & 0x3DDE26) != 0)
    {
      v5 = [ServiceURLList alloc];
      v6 = *v4;
      v7 = GEOURLConfigKey();
      v9 = [(ServiceURLList *)v5 initWithName:v6 defaultsKey:v7, v8];
      v10 = GEOURLWorldDefaultURLString();
      [(ServiceURLList *)v9 setDefaultCustomURLString:v10];

      [v2 addObject:v9];
    }

    ++v3;
    ++v4;
  }

  while (v3 != 67);
  v11 = [ServiceURLList alloc];
  v12 = [(ServiceURLList *)v11 initWithName:@"Environment Manifest Format" defaultsKey:GeoServicesConfig_CustomEnvironmentURLFormat[0], GeoServicesConfig_CustomEnvironmentURLFormat[1]];
  [v2 addObject:v12];

  return v2;
}

@end