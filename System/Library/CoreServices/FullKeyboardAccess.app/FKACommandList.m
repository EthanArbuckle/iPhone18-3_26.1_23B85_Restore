@interface FKACommandList
+ (id)listWithTitle:(id)a3 items:(id)a4 footerText:(id)a5;
- (FKACommandList)initWithTitle:(id)a3 items:(id)a4 footerText:(id)a5;
@end

@implementation FKACommandList

+ (id)listWithTitle:(id)a3 items:(id)a4 footerText:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithTitle:v10 items:v9 footerText:v8];

  return v11;
}

- (FKACommandList)initWithTitle:(id)a3 items:(id)a4 footerText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = FKACommandList;
  v11 = [(FKACommandList *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    objc_storeStrong(&v11->_items, a4);
    v14 = [v10 copy];
    footerText = v11->_footerText;
    v11->_footerText = v14;
  }

  return v11;
}

@end