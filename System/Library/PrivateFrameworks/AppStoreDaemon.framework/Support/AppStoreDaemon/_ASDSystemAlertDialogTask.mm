@interface _ASDSystemAlertDialogTask
- (__CFDictionary)_createNoteDictionaryWithKeys:(ButtonKey *)keys buttonActions:(id)actions outOptions:(unint64_t *)options;
- (id)_reorderButtonActions;
@end

@implementation _ASDSystemAlertDialogTask

- (__CFDictionary)_createNoteDictionaryWithKeys:(ButtonKey *)keys buttonActions:(id)actions outOptions:(unint64_t *)options
{
  v11.receiver = self;
  v11.super_class = _ASDSystemAlertDialogTask;
  actionsCopy = actions;
  v8 = [(_ASDSystemAlertDialogTask *)&v11 _createNoteDictionaryWithKeys:keys buttonActions:actionsCopy outOptions:options];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10039CAE8;
  v10[3] = &unk_100526450;
  v10[4] = v8;
  [actionsCopy enumerateObjectsUsingBlock:v10];

  return v8;
}

- (id)_reorderButtonActions
{
  request = [(_ASDSystemAlertDialogTask *)self request];
  buttonActions = [request buttonActions];

  return buttonActions;
}

@end