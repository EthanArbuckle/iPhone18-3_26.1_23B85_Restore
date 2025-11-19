@interface _TUIImpressionStats
- (_TUIImpressionStats)init;
- (id)impressionForData:(id)a3 size:(CGSize)a4 create:(BOOL)a5;
- (id)impressionForIdentifier:(id)a3;
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

- (id)impressionForData:(id)a3 size:(CGSize)a4 create:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [v9 identifier];
  v11 = v10;
  if (v10)
  {
    v10 = [(NSMutableDictionary *)self->_impressions objectForKey:v10];
  }

  if (v9)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12 && v10 == 0;
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  if (v13 && v5)
  {
    v15 = [TUIImpression alloc];
    v16 = [v9 data];
    v14 = [(TUIImpression *)v15 initWithData:v16 size:v11 identifier:width, height];

    [(NSMutableDictionary *)self->_impressions setObject:v14 forKeyedSubscript:v11];
  }

  return v14;
}

- (id)impressionForIdentifier:(id)a3
{
  if (a3)
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