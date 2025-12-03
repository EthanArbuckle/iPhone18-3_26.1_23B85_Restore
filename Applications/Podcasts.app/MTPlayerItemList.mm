@interface MTPlayerItemList
- (MTPlayerItemList)initWithPlayerItems:(id)items;
- (id)metricsContentIdentifier;
@end

@implementation MTPlayerItemList

- (MTPlayerItemList)initWithPlayerItems:(id)items
{
  itemsCopy = items;
  v8.receiver = self;
  v8.super_class = MTPlayerItemList;
  v5 = [(MTPlayerItemList *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MTPlayerItemList *)v5 setPlayerItems:itemsCopy];
  }

  return v6;
}

- (id)metricsContentIdentifier
{
  v3 = +[NSMutableDictionary dictionary];
  playerItems = [(MTPlayerItemList *)self playerItems];
  v5 = [playerItems count];

  if (v5)
  {
    v6 = 0;
    do
    {
      playerItems2 = [(MTPlayerItemList *)self playerItems];
      v8 = [playerItems2 objectAtIndex:v6];

      metricsContentIdentifier = [v8 metricsContentIdentifier];
      v10 = metricsContentIdentifier;
      if (metricsContentIdentifier)
      {
        v11 = metricsContentIdentifier;
      }

      else
      {
        v11 = &__NSDictionary0__struct;
      }

      v12 = v11;

      v13 = [NSString stringWithFormat:@"%d", v6];
      [v3 setObject:v12 forKey:v13];

      ++v6;
      playerItems3 = [(MTPlayerItemList *)self playerItems];
      v15 = [playerItems3 count];
    }

    while (v15 > v6);
  }

  return v3;
}

@end