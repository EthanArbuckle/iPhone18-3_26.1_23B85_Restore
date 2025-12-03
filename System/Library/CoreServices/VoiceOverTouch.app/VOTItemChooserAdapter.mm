@interface VOTItemChooserAdapter
+ (id)sharedInstance;
- (void)showItemChooser:(BOOL)chooser withItems:(id)items;
@end

@implementation VOTItemChooserAdapter

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E6AB8;
  block[3] = &unk_1001C78B0;
  block[4] = self;
  if (qword_1001FEE60 != -1)
  {
    dispatch_once(&qword_1001FEE60, block);
  }

  v2 = qword_1001FEE68;

  return v2;
}

- (void)showItemChooser:(BOOL)chooser withItems:(id)items
{
  chooserCopy = chooser;
  itemsCopy = items;
  v5 = +[AXSpringBoardServer server];
  v6 = v5;
  if (itemsCopy && chooserCopy)
  {
    [v5 showRemoteView:0 withData:itemsCopy];
  }

  else
  {
    [v5 hideRemoteView:0];
  }
}

@end