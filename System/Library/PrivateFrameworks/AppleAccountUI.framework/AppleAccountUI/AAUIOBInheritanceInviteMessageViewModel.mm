@interface AAUIOBInheritanceInviteMessageViewModel
- (AAUIOBInheritanceInviteMessageViewModel)initWithBeneficiaryName:(id)name;
- (AAUIOBInheritanceInviteMessageViewModel)initWithType:(unint64_t)type recipientHandle:(id)handle;
@end

@implementation AAUIOBInheritanceInviteMessageViewModel

- (AAUIOBInheritanceInviteMessageViewModel)initWithBeneficiaryName:(id)name
{
  v10.receiver = self;
  v10.super_class = AAUIOBInheritanceInviteMessageViewModel;
  v3 = [(AAOBInheritanceInviteMessageModel *)&v10 initWithBeneficiaryName:name];
  v4 = v3;
  if (v3)
  {
    v3->_contentViewLayout = 2;
    v5 = [AAUIMessageBubbleView alloc];
    bubbleText = [(AAOBInheritanceInviteMessageModel *)v4 bubbleText];
    v7 = [(AAUIMessageBubbleView *)v5 initWithText:bubbleText];
    contentView = v4->_contentView;
    v4->_contentView = v7;
  }

  return v4;
}

- (AAUIOBInheritanceInviteMessageViewModel)initWithType:(unint64_t)type recipientHandle:(id)handle
{
  v11.receiver = self;
  v11.super_class = AAUIOBInheritanceInviteMessageViewModel;
  v4 = [(AAOBInheritanceInviteMessageModel *)&v11 initWithType:type recipientHandle:handle];
  v5 = v4;
  if (v4)
  {
    v4->_contentViewLayout = 2;
    v6 = [AAUIMessageBubbleView alloc];
    bubbleText = [(AAOBInheritanceInviteMessageModel *)v5 bubbleText];
    v8 = [(AAUIMessageBubbleView *)v6 initWithText:bubbleText];
    contentView = v5->_contentView;
    v5->_contentView = v8;
  }

  return v5;
}

@end