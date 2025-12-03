@interface EKUIContextMenuActionInfo
- (EKUIContextMenuActionInfo)initWithAction:(unint64_t)action showsInEditMenu:(BOOL)menu group:(unint64_t)group positionInGroup:(unint64_t)inGroup shouldShowBlock:(id)block configureUIActionBlock:(id)actionBlock actionBlock:(id)a9;
- (id)initCalendarMenuPlaceholderInGroup:(unint64_t)group positionInGroup:(unint64_t)inGroup;
@end

@implementation EKUIContextMenuActionInfo

- (EKUIContextMenuActionInfo)initWithAction:(unint64_t)action showsInEditMenu:(BOOL)menu group:(unint64_t)group positionInGroup:(unint64_t)inGroup shouldShowBlock:(id)block configureUIActionBlock:(id)actionBlock actionBlock:(id)a9
{
  blockCopy = block;
  actionBlockCopy = actionBlock;
  v17 = a9;
  v27.receiver = self;
  v27.super_class = EKUIContextMenuActionInfo;
  v18 = [(EKUIContextMenuActionInfo *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_showsInEditMenu = menu;
    v18->_action = action;
    v18->_group = group;
    v18->_positionInGroup = inGroup;
    v20 = _Block_copy(blockCopy);
    shouldShowBlock = v19->_shouldShowBlock;
    v19->_shouldShowBlock = v20;

    v22 = _Block_copy(actionBlockCopy);
    configureUIActionBlock = v19->_configureUIActionBlock;
    v19->_configureUIActionBlock = v22;

    v24 = _Block_copy(v17);
    actionBlock = v19->_actionBlock;
    v19->_actionBlock = v24;
  }

  return v19;
}

- (id)initCalendarMenuPlaceholderInGroup:(unint64_t)group positionInGroup:(unint64_t)inGroup
{
  v7.receiver = self;
  v7.super_class = EKUIContextMenuActionInfo;
  result = [(EKUIContextMenuActionInfo *)&v7 init];
  if (result)
  {
    *(result + 3) = 0x20000;
    *(result + 4) = group;
    *(result + 5) = inGroup;
  }

  return result;
}

@end