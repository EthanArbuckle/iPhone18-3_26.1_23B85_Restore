@interface IMDynamicTitleAction
- (id)title;
@end

@implementation IMDynamicTitleAction

- (id)title
{
  v8.receiver = self;
  v8.super_class = IMDynamicTitleAction;
  v3 = [(IMAction *)&v8 title];
  titleBlock = self->_titleBlock;
  if (titleBlock)
  {
    v5 = [(IMAction *)self controller];
    v6 = titleBlock[2](titleBlock, v5);

    v3 = v6;
  }

  return v3;
}

@end