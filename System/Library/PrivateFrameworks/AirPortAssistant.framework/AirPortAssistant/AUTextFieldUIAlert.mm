@interface AUTextFieldUIAlert
- (id)textFieldAtIndex:(unint64_t)a3;
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

- (id)textFieldAtIndex:(unint64_t)a3
{
  v4 = objc_msgSend_textFields(self->super.alert, a2, a3);
  if (objc_msgSend_count(v4, v5, v6) <= a3)
  {
    return 0;
  }

  return objc_msgSend_objectAtIndexedSubscript_(v4, v7, a3);
}

@end