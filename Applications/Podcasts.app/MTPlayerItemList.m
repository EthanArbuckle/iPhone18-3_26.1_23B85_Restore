@interface MTPlayerItemList
- (MTPlayerItemList)initWithPlayerItems:(id)a3;
- (id)metricsContentIdentifier;
@end

@implementation MTPlayerItemList

- (MTPlayerItemList)initWithPlayerItems:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MTPlayerItemList;
  v5 = [(MTPlayerItemList *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTPlayerItemList *)v5 setPlayerItems:v4];
  }

  return v6;
}

- (id)metricsContentIdentifier
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(MTPlayerItemList *)self playerItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(MTPlayerItemList *)self playerItems];
      v8 = [v7 objectAtIndex:v6];

      v9 = [v8 metricsContentIdentifier];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = &__NSDictionary0__struct;
      }

      v12 = v11;

      v13 = [NSString stringWithFormat:@"%d", v6];
      [v3 setObject:v12 forKey:v13];

      ++v6;
      v14 = [(MTPlayerItemList *)self playerItems];
      v15 = [v14 count];
    }

    while (v15 > v6);
  }

  return v3;
}

@end