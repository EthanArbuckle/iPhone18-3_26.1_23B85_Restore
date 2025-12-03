@interface IMDynamicTitleAction
- (id)title;
@end

@implementation IMDynamicTitleAction

- (id)title
{
  v8.receiver = self;
  v8.super_class = IMDynamicTitleAction;
  title = [(IMAction *)&v8 title];
  titleBlock = self->_titleBlock;
  if (titleBlock)
  {
    controller = [(IMAction *)self controller];
    v6 = titleBlock[2](titleBlock, controller);

    title = v6;
  }

  return title;
}

@end