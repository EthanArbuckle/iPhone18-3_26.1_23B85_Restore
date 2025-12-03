@interface PKTextInputDebugLogController
- (PKTextInputDebugLogController)init;
- (PKTextInputDebugSharpenerLog)sharpenerLogWithCurrentContent;
- (id)debugStateDetailViewController;
- (void)logEntryForAppliedResult:(uint64_t)result;
- (void)reportDebugStateDescription:(id)description;
@end

@implementation PKTextInputDebugLogController

- (PKTextInputDebugLogController)init
{
  v6.receiver = self;
  v6.super_class = PKTextInputDebugLogController;
  v2 = [(PKTextInputDebugLogController *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    logEntries = v2->__logEntries;
    v2->__logEntries = array;
  }

  return v2;
}

- (PKTextInputDebugSharpenerLog)sharpenerLogWithCurrentContent
{
  if (self)
  {
    self = [[PKTextInputDebugSharpenerLog alloc] initWithLogEntries:self->_logEntries];
    v1 = vars8;
  }

  return self;
}

- (void)logEntryForAppliedResult:(uint64_t)result
{
  v16 = a2;
  if (result && os_variant_has_internal_diagnostics())
  {
    v3 = [[PKTextInputDebugRecordingLogEntry alloc] initWithResultCommand:v16];
    [*(result + 8) addObject:v3];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v4 = *(result + 8);
    lastObject = [v4 lastObject];

    if (lastObject)
    {
      inputTargetContentInfo = [lastObject inputTargetContentInfo];
      textInputTarget = [inputTargetContentInfo textInputTarget];
      inputTargetIdentifier = [textInputTarget inputTargetIdentifier];

      v9 = *(result + 8);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __52__PKTextInputDebugLogController__purgeOldLogEntries__block_invoke;
      v17[3] = &unk_1E82D70A8;
      v10 = inputTargetIdentifier;
      v18 = v10;
      v19 = &v20;
      [v9 enumerateObjectsWithOptions:2 usingBlock:v17];
    }

    v11 = v21[3];
    if (v11 >= 5)
    {
      v11 = 5;
    }

    v21[3] = v11;
    v12 = *(result + 8);
    v13 = [v12 count];
    v14 = v13 - v21[3];

    if (v14 >= 1)
    {
      v15 = *(result + 8);
      [v15 removeObjectsInRange:{0, v14}];
    }

    _Block_object_dispose(&v20, 8);
    +[PKTextInputDebugStateIntrospector debugStateDidChange];
  }
}

void __52__PKTextInputDebugLogController__purgeOldLogEntries__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 inputTargetContentInfo];
  v7 = [v6 textInputTarget];
  v8 = [v7 inputTargetIdentifier];

  if ([v8 isEqualToNumber:*(a1 + 32)])
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *a4 = 1;
  }
}

- (void)reportDebugStateDescription:(id)description
{
  v4 = MEMORY[0x1E695DF70];
  descriptionCopy = description;
  array = [v4 array];
  if (self)
  {
    logEntries = self->__logEntries;
  }

  else
  {
    logEntries = 0;
  }

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __61__PKTextInputDebugLogController_reportDebugStateDescription___block_invoke;
  v15 = &unk_1E82D70D0;
  v16 = array;
  v8 = array;
  [(NSMutableArray *)logEntries enumerateObjectsWithOptions:0 usingBlock:&v12];
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v8 componentsJoinedByString:@"\n"];
  v11 = [v9 stringWithFormat:@"\n%@", v10, v12, v13, v14, v15];

  descriptionCopy[2](descriptionCopy, @"Log Entries", v11);
}

void __61__PKTextInputDebugLogController_reportDebugStateDescription___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 minimalDescription];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %ld: %@", a3, v7];
  [v5 addObject:v6];
}

- (id)debugStateDetailViewController
{
  sharpenerLogWithCurrentContent = [(PKTextInputDebugLogController *)self sharpenerLogWithCurrentContent];
  v3 = [[PKTextInputDebugSharpenerLogViewController alloc] initWithSharpenerLog:sharpenerLogWithCurrentContent];

  return v3;
}

@end