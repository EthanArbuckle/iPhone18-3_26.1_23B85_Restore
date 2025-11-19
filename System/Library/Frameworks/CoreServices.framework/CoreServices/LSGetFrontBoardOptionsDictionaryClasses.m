@interface LSGetFrontBoardOptionsDictionaryClasses
@end

@implementation LSGetFrontBoardOptionsDictionaryClasses

void ___LSGetFrontBoardOptionsDictionaryClasses_block_invoke()
{
  v14[2] = *MEMORY[0x1E69E9840];
  v0 = XNSGetPropertyListClasses();
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v2 = [v0 setByAddingObjectsFromArray:v1];
  v3 = _LSGetFrontBoardOptionsDictionaryClasses_result;
  _LSGetFrontBoardOptionsDictionaryClasses_result = v2;

  v4 = getBSServiceConnectionEndpointClass[0]();
  if (v4)
  {
    v5 = [_LSGetFrontBoardOptionsDictionaryClasses_result setByAddingObject:v4];
    v6 = _LSGetFrontBoardOptionsDictionaryClasses_result;
    _LSGetFrontBoardOptionsDictionaryClasses_result = v5;
  }

  v7 = getUISClickAttributionClass[0]();
  if (v7)
  {
    v8 = [_LSGetFrontBoardOptionsDictionaryClasses_result setByAddingObject:v7];
    v9 = _LSGetFrontBoardOptionsDictionaryClasses_result;
    _LSGetFrontBoardOptionsDictionaryClasses_result = v8;
  }

  v10 = getUISPasteSharingTokenClass[0]();
  if (v10)
  {
    v11 = [_LSGetFrontBoardOptionsDictionaryClasses_result setByAddingObject:v10];
    v12 = _LSGetFrontBoardOptionsDictionaryClasses_result;
    _LSGetFrontBoardOptionsDictionaryClasses_result = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end