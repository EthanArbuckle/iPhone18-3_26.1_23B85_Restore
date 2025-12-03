@interface AUTextFieldUIAlert
- (id)textFieldAtIndex:(unint64_t)index;
- (void)prepareToShow;
@end

@implementation AUTextFieldUIAlert

- (void)prepareToShow
{
  v5.receiver = self;
  v5.super_class = AUTextFieldUIAlert;
  [(AUUIAlert *)&v5 prepareToShow];
  objc_msgSend_addTextField(self, v3, v4);
}

- (id)textFieldAtIndex:(unint64_t)index
{
  v4 = objc_msgSend_textFields(self->super.alert, a2, index);
  if (objc_msgSend_count(v4, v5, v6) <= index)
  {
    return 0;
  }

  return objc_msgSend_objectAtIndexedSubscript_(v4, v7, index);
}

@end