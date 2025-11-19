@interface RAPTwoLinesViewModelImpl
+ (id)viewModelFromMapItem:(id)a3;
+ (id)viewModelFromRAPMenuItem:(id)a3;
@end

@implementation RAPTwoLinesViewModelImpl

+ (id)viewModelFromMapItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(RAPTwoLinesViewModelImpl);
  v5 = +[UIScreen mainScreen];
  [v5 scale];
  v6 = [MKIconManager imageForMapItem:v3 forScale:?];
  [(RAPTwoLinesViewModelImpl *)v4 setImage:v6];

  v7 = [v3 name];
  [(RAPTwoLinesViewModelImpl *)v4 setTitle:v7];

  v8 = [v3 _shortAddress];

  [(RAPTwoLinesViewModelImpl *)v4 setSubtitle:v8];

  return v4;
}

+ (id)viewModelFromRAPMenuItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(RAPTwoLinesViewModelImpl);
  v5 = [v3 image];
  [(RAPTwoLinesViewModelImpl *)v4 setImage:v5];

  v6 = [v3 localizedTitle];
  [(RAPTwoLinesViewModelImpl *)v4 setTitle:v6];

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 localizedServerControlledDescription], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = [v3 localizedServerControlledDescription];
  }

  else
  {
    v9 = [v3 localizedDescription];
  }

  v10 = v9;
  [(RAPTwoLinesViewModelImpl *)v4 setSubtitle:v9];

  return v4;
}

@end