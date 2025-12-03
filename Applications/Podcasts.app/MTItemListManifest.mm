@interface MTItemListManifest
- (MTItemListManifest)initWithItems:(id)items;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (void)setItems:(id)items;
@end

@implementation MTItemListManifest

- (MTItemListManifest)initWithItems:(id)items
{
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = MTItemListManifest;
  v5 = [(MTPlayerManifest *)&v12 init];
  if (v5)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C6F30;
    v10[3] = &unk_1004DB538;
    v11 = +[PFRestrictionsController isExplicitContentAllowed];
    v6 = [itemsCopy ams_filterUsingTest:v10];
    [(MTItemListManifest *)v5 setItems:v6];

    items = [(MTItemListManifest *)v5 items];
    v8 = [items count];

    if (v8)
    {
      [(MTItemListManifest *)v5 setCurrentIndex:0];
    }

    [(MTItemListManifest *)v5 setIsLoaded:1];
  }

  return v5;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  objc_storeStrong(&self->_items, items);
  if ([itemsCopy count])
  {
    currentIndex = [(MTItemListManifest *)self currentIndex];
    if (currentIndex < [itemsCopy count])
    {
      goto LABEL_6;
    }

    v6 = 0;
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(MTItemListManifest *)self setCurrentIndex:v6];
LABEL_6:
  if ([itemsCopy count])
  {
    v7 = 0;
    do
    {
      v8 = [itemsCopy objectAtIndex:v7];
      [v8 setManifestIndex:v7];

      ++v7;
    }

    while ([itemsCopy count] > v7);
  }

  [(MTItemListManifest *)self postManifestDidChangeNotification];
}

- (id)objectAtIndex:(unint64_t)index
{
  items = [(MTItemListManifest *)self items];
  v6 = [items objectAtIndex:index];

  [v6 setManifest:self];

  return v6;
}

- (unint64_t)count
{
  items = [(MTItemListManifest *)self items];
  v3 = [items count];

  return v3;
}

@end