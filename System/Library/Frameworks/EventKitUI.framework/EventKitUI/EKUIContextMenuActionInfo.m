@interface EKUIContextMenuActionInfo
- (EKUIContextMenuActionInfo)initWithAction:(unint64_t)a3 showsInEditMenu:(BOOL)a4 group:(unint64_t)a5 positionInGroup:(unint64_t)a6 shouldShowBlock:(id)a7 configureUIActionBlock:(id)a8 actionBlock:(id)a9;
- (id)initCalendarMenuPlaceholderInGroup:(unint64_t)a3 positionInGroup:(unint64_t)a4;
@end

@implementation EKUIContextMenuActionInfo

- (EKUIContextMenuActionInfo)initWithAction:(unint64_t)a3 showsInEditMenu:(BOOL)a4 group:(unint64_t)a5 positionInGroup:(unint64_t)a6 shouldShowBlock:(id)a7 configureUIActionBlock:(id)a8 actionBlock:(id)a9
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v27.receiver = self;
  v27.super_class = EKUIContextMenuActionInfo;
  v18 = [(EKUIContextMenuActionInfo *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_showsInEditMenu = a4;
    v18->_action = a3;
    v18->_group = a5;
    v18->_positionInGroup = a6;
    v20 = _Block_copy(v15);
    shouldShowBlock = v19->_shouldShowBlock;
    v19->_shouldShowBlock = v20;

    v22 = _Block_copy(v16);
    configureUIActionBlock = v19->_configureUIActionBlock;
    v19->_configureUIActionBlock = v22;

    v24 = _Block_copy(v17);
    actionBlock = v19->_actionBlock;
    v19->_actionBlock = v24;
  }

  return v19;
}

- (id)initCalendarMenuPlaceholderInGroup:(unint64_t)a3 positionInGroup:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = EKUIContextMenuActionInfo;
  result = [(EKUIContextMenuActionInfo *)&v7 init];
  if (result)
  {
    *(result + 3) = 0x20000;
    *(result + 4) = a3;
    *(result + 5) = a4;
  }

  return result;
}

@end