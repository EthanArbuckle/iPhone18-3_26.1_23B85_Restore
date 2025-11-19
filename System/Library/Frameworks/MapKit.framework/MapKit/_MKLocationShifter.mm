@interface _MKLocationShifter
+ (BOOL)isLocationShiftRequiredForLocation:(id)a3;
- (_MKLocationShifter)init;
- (void)_prepareShiftForLocation:(id)a3 withCompletionHandler:(id)a4 withShiftRequestBlock:(id)a5;
- (void)shiftLocation:(id)a3 withCompletionHandler:(id)a4;
- (void)shiftLocation:(id)a3 withCompletionHandler:(id)a4 callbackQueue:(id)a5;
@end

@implementation _MKLocationShifter

- (void)_prepareShiftForLocation:(id)a3 withCompletionHandler:(id)a4 withShiftRequestBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    if ([objc_opt_class() isLocationShiftRequiredForLocation:v7])
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __91___MKLocationShifter__prepareShiftForLocation_withCompletionHandler_withShiftRequestBlock___block_invoke;
      v19 = &unk_1E76C8CA0;
      v11 = v7;
      v20 = v11;
      v21 = v8;
      v12 = MEMORY[0x1A58E9F30](&v16);
      v13 = objc_alloc(MEMORY[0x1E69A1E70]);
      v14 = [v13 initWithCLLocation:{v11, v16, v17, v18, v19}];
      v15 = [v14 latLng];
      (v10)[2](v10, v15, v12);
    }

    else
    {
      (*(v8 + 2))(v8, v7);
    }
  }
}

- (void)shiftLocation:(id)a3 withCompletionHandler:(id)a4 callbackQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72___MKLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke;
  v14[3] = &unk_1E76C8C78;
  v14[4] = self;
  v15 = v8;
  v16 = v10;
  v17 = v9;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(_MKLocationShifter *)self _prepareShiftForLocation:v13 withCompletionHandler:v12 withShiftRequestBlock:v14];
}

- (void)shiftLocation:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___MKLocationShifter_shiftLocation_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E76C8C50;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(_MKLocationShifter *)self _prepareShiftForLocation:v7 withCompletionHandler:a4 withShiftRequestBlock:v8];
}

- (_MKLocationShifter)init
{
  v6.receiver = self;
  v6.super_class = _MKLocationShifter;
  v2 = [(_MKLocationShifter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A1E80]);
    locationShifter = v2->_locationShifter;
    v2->_locationShifter = v3;
  }

  return v2;
}

+ (BOOL)isLocationShiftRequiredForLocation:(id)a3
{
  v3 = a3;
  if ([v3 referenceFrame] == 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69A1E80];
    [v3 coordinate];
    v4 = [v5 isLocationShiftRequiredForCoordinate:?];
  }

  return v4;
}

@end