@interface _TUIImpressionStats
- (_TUIImpressionStats)init;
- (id)impressionForData:(id)data size:(CGSize)size create:(BOOL)create;
- (id)impressionForIdentifier:(id)identifier;
@end

@implementation _TUIImpressionStats

- (_TUIImpressionStats)init
{
  v6.receiver = self;
  v6.super_class = _TUIImpressionStats;
  v2 = [(_TUIImpressionStats *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    impressions = v2->_impressions;
    v2->_impressions = v3;
  }

  return v2;
}

- (id)impressionForData:(id)data size:(CGSize)size create:(BOOL)create
{
  createCopy = create;
  height = size.height;
  width = size.width;
  dataCopy = data;
  identifier = [dataCopy identifier];
  v11 = identifier;
  if (identifier)
  {
    identifier = [(NSMutableDictionary *)self->_impressions objectForKey:identifier];
  }

  if (dataCopy)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12 && identifier == 0;
  if (v13)
  {
    height = 0;
  }

  else
  {
    height = identifier;
  }

  if (v13 && createCopy)
  {
    v15 = [TUIImpression alloc];
    data = [dataCopy data];
    height = [(TUIImpression *)v15 initWithData:data size:v11 identifier:width, height];

    [(NSMutableDictionary *)self->_impressions setObject:height forKeyedSubscript:v11];
  }

  return height;
}

- (id)impressionForIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSMutableDictionary *)self->_impressions objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end