@interface _ASDSystemAlertDialogTask
- (__CFDictionary)_createNoteDictionaryWithKeys:(ButtonKey *)a3 buttonActions:(id)a4 outOptions:(unint64_t *)a5;
- (id)_reorderButtonActions;
@end

@implementation _ASDSystemAlertDialogTask

- (__CFDictionary)_createNoteDictionaryWithKeys:(ButtonKey *)a3 buttonActions:(id)a4 outOptions:(unint64_t *)a5
{
  v11.receiver = self;
  v11.super_class = _ASDSystemAlertDialogTask;
  v7 = a4;
  v8 = [(_ASDSystemAlertDialogTask *)&v11 _createNoteDictionaryWithKeys:a3 buttonActions:v7 outOptions:a5];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10039CAE8;
  v10[3] = &unk_100526450;
  v10[4] = v8;
  [v7 enumerateObjectsUsingBlock:v10];

  return v8;
}

- (id)_reorderButtonActions
{
  v2 = [(_ASDSystemAlertDialogTask *)self request];
  v3 = [v2 buttonActions];

  return v3;
}

@end