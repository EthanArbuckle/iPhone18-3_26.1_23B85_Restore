@interface RAPTwoLinesViewModelImpl
+ (id)viewModelFromMapItem:(id)item;
+ (id)viewModelFromRAPMenuItem:(id)item;
@end

@implementation RAPTwoLinesViewModelImpl

+ (id)viewModelFromMapItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(RAPTwoLinesViewModelImpl);
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v6 = [MKIconManager imageForMapItem:itemCopy forScale:?];
  [(RAPTwoLinesViewModelImpl *)v4 setImage:v6];

  name = [itemCopy name];
  [(RAPTwoLinesViewModelImpl *)v4 setTitle:name];

  _shortAddress = [itemCopy _shortAddress];

  [(RAPTwoLinesViewModelImpl *)v4 setSubtitle:_shortAddress];

  return v4;
}

+ (id)viewModelFromRAPMenuItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(RAPTwoLinesViewModelImpl);
  image = [itemCopy image];
  [(RAPTwoLinesViewModelImpl *)v4 setImage:image];

  localizedTitle = [itemCopy localizedTitle];
  [(RAPTwoLinesViewModelImpl *)v4 setTitle:localizedTitle];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([itemCopy localizedServerControlledDescription], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    localizedServerControlledDescription = [itemCopy localizedServerControlledDescription];
  }

  else
  {
    localizedServerControlledDescription = [itemCopy localizedDescription];
  }

  v10 = localizedServerControlledDescription;
  [(RAPTwoLinesViewModelImpl *)v4 setSubtitle:localizedServerControlledDescription];

  return v4;
}

@end