@interface AAUIOBInheritanceInviteMessageViewModel
- (AAUIOBInheritanceInviteMessageViewModel)initWithBeneficiaryName:(id)a3;
- (AAUIOBInheritanceInviteMessageViewModel)initWithType:(unint64_t)a3 recipientHandle:(id)a4;
@end

@implementation AAUIOBInheritanceInviteMessageViewModel

- (AAUIOBInheritanceInviteMessageViewModel)initWithBeneficiaryName:(id)a3
{
  v10.receiver = self;
  v10.super_class = AAUIOBInheritanceInviteMessageViewModel;
  v3 = [(AAOBInheritanceInviteMessageModel *)&v10 initWithBeneficiaryName:a3];
  v4 = v3;
  if (v3)
  {
    v3->_contentViewLayout = 2;
    v5 = [AAUIMessageBubbleView alloc];
    v6 = [(AAOBInheritanceInviteMessageModel *)v4 bubbleText];
    v7 = [(AAUIMessageBubbleView *)v5 initWithText:v6];
    contentView = v4->_contentView;
    v4->_contentView = v7;
  }

  return v4;
}

- (AAUIOBInheritanceInviteMessageViewModel)initWithType:(unint64_t)a3 recipientHandle:(id)a4
{
  v11.receiver = self;
  v11.super_class = AAUIOBInheritanceInviteMessageViewModel;
  v4 = [(AAOBInheritanceInviteMessageModel *)&v11 initWithType:a3 recipientHandle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_contentViewLayout = 2;
    v6 = [AAUIMessageBubbleView alloc];
    v7 = [(AAOBInheritanceInviteMessageModel *)v5 bubbleText];
    v8 = [(AAUIMessageBubbleView *)v6 initWithText:v7];
    contentView = v5->_contentView;
    v5->_contentView = v8;
  }

  return v5;
}

@end