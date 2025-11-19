@interface ServiceURLList
+ (id)defaultServiceURLLists;
- ($6E15C01CA1BE37A4936191A84F7075E2)defaultsKey;
- (ServiceURLList)initWithName:(id)a3 defaultsKey:(id)a4;
- (id)URLAtIndex:(unint64_t)a3;
- (id)infoAtIndex:(unint64_t)a3;
- (id)nameAtIndex:(unint64_t)a3;
- (void)addURL:(id)a3 withName:(id)a4 info:(id)a5;
@end

@implementation ServiceURLList

- (id)infoAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_infos count]>= a3)
  {
    v6 = [(NSMutableArray *)self->_infos objectAtIndexedSubscript:a3];
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

- (id)nameAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_names count]>= a3)
  {
    v5 = [(NSMutableArray *)self->_names objectAtIndexedSubscript:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)URLAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_urls count]>= a3)
  {
    v5 = [(NSMutableArray *)self->_urls objectAtIndexedSubscript:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addURL:(id)a3 withName:(id)a4 info:(id)a5
{
  v12 = a5;
  names = self->_names;
  v9 = a3;
  [(NSMutableArray *)names addObject:a4];
  [(NSMutableArray *)self->_urls addObject:v9];

  infos = self->_infos;
  if (v12)
  {
    [(NSMutableArray *)self->_infos addObject:v12];
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

- (ServiceURLList)initWithName:(id)a3 defaultsKey:(id)a4
{
  var1 = a4.var0.var1;
  v5 = *&a4.var0.var0;
  v7 = a3;
  v19.receiver = self;
  v19.super_class = ServiceURLList;
  v8 = [(ServiceURLList *)&v19 init];
  if (v8)
  {
    v9 = [v7 copy];
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