@interface _MKLocationShifter
+ (BOOL)isLocationShiftRequiredForLocation:(id)location;
- (_MKLocationShifter)init;
- (void)_prepareShiftForLocation:(id)location withCompletionHandler:(id)handler withShiftRequestBlock:(id)block;
- (void)shiftLocation:(id)location withCompletionHandler:(id)handler;
- (void)shiftLocation:(id)location withCompletionHandler:(id)handler callbackQueue:(id)queue;
@end

@implementation _MKLocationShifter

- (void)_prepareShiftForLocation:(id)location withCompletionHandler:(id)handler withShiftRequestBlock:(id)block
{
  locationCopy = location;
  handlerCopy = handler;
  blockCopy = block;
  v10 = blockCopy;
  if (handlerCopy && blockCopy)
  {
    if ([objc_opt_class() isLocationShiftRequiredForLocation:locationCopy])
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __91___MKLocationShifter__prepareShiftForLocation_withCompletionHandler_withShiftRequestBlock___block_invoke;
      v19 = &unk_1E76C8CA0;
      v11 = locationCopy;
      v20 = v11;
      v21 = handlerCopy;
      v12 = MEMORY[0x1A58E9F30](&v16);
      v13 = objc_alloc(MEMORY[0x1E69A1E70]);
      v14 = [v13 initWithCLLocation:{v11, v16, v17, v18, v19}];
      latLng = [v14 latLng];
      (v10)[2](v10, latLng, v12);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, locationCopy);
    }
  }
}

- (void)shiftLocation:(id)location withCompletionHandler:(id)handler callbackQueue:(id)queue
{
  locationCopy = location;
  handlerCopy = handler;
  queueCopy = queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72___MKLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke;
  v14[3] = &unk_1E76C8C78;
  v14[4] = self;
  v15 = locationCopy;
  v16 = queueCopy;
  v17 = handlerCopy;
  v11 = queueCopy;
  v12 = handlerCopy;
  v13 = locationCopy;
  [(_MKLocationShifter *)self _prepareShiftForLocation:v13 withCompletionHandler:v12 withShiftRequestBlock:v14];
}

- (void)shiftLocation:(id)location withCompletionHandler:(id)handler
{
  locationCopy = location;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58___MKLocationShifter_shiftLocation_withCompletionHandler___block_invoke;
  v8[3] = &unk_1E76C8C50;
  v8[4] = self;
  v9 = locationCopy;
  v7 = locationCopy;
  [(_MKLocationShifter *)self _prepareShiftForLocation:v7 withCompletionHandler:handler withShiftRequestBlock:v8];
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

+ (BOOL)isLocationShiftRequiredForLocation:(id)location
{
  locationCopy = location;
  if ([locationCopy referenceFrame] == 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69A1E80];
    [locationCopy coordinate];
    v4 = [v5 isLocationShiftRequiredForCoordinate:?];
  }

  return v4;
}

@end