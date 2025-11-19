@interface VirtualGarageMockPersister
- (VGVirtualGaragePersistingDelegate)delegate;
- (VirtualGarageMockPersister)init;
- (id)_dummyVehicles;
- (id)persistedVehicleForVehicle:(id)a3;
- (void)loadVehiclesWithCompletion:(id)a3;
@end

@implementation VirtualGarageMockPersister

- (VGVirtualGaragePersistingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)persistedVehicleForVehicle:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100FA311C;
  v17 = sub_100FA312C;
  v18 = 0;
  v5 = [v4 identifier];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FA3134;
  block[3] = &unk_101660778;
  block[4] = self;
  v11 = v5;
  v12 = &v13;
  v7 = v5;
  dispatch_sync(queue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)_dummyVehicles
{
  v2 = [VGVehicle alloc];
  v34 = &off_1016EAC10;
  v3 = [NSMeasurement alloc];
  v4 = +[NSUnitPower watts];
  v5 = [v3 initWithDoubleValue:v4 unit:55000.0];
  v35 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v26 = [v2 initWithDisplayName:@"Apple Maps EV-1" year:@"2022" manufacturer:@"Apple Maps" model:@"EV-1" colorHex:@"0F0F0F" headUnitIdentifier:0 headUnitBluetoothIdentifier:0 supportedConnectors:1 powerByConnector:v6];

  v7 = [VGVehicle alloc];
  v32 = &off_1016EAC10;
  v8 = [NSMeasurement alloc];
  v9 = +[NSUnitPower watts];
  v10 = [v8 initWithDoubleValue:v9 unit:55000.0];
  v33 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v12 = [v7 initWithDisplayName:@"Apple Maps EV-2" year:@"2022" manufacturer:@"Apple Maps" model:@"EV-2" colorHex:@"0F0F0F" headUnitIdentifier:0 headUnitBluetoothIdentifier:0 supportedConnectors:1 powerByConnector:v11];

  v13 = [[VGVehicle alloc] initWithDisplayName:@"Apple Maps LPR-1" year:@"2022" manufacturer:@"Apple Maps" model:@"LPR-1" colorHex:@"F0F0F0" headUnitIdentifier:0 headUnitBluetoothIdentifier:0 supportedConnectors:0 powerByConnector:0];
  [v13 setLicensePlate:@"3EEE333"];
  v14 = +[GEOResourceManager sharedManager];
  v15 = [v14 dataForResourceWithName:@"regional_vehicle_info.pb" fallbackBundle:0];

  if (v15)
  {
    v16 = [[GEOLPRRoot alloc] initWithData:v15];
    v17 = [v16 powerTypes];
    v18 = [v17 allKeys];
    v19 = [v18 firstObject];
    [v13 setLprPowerType:v19];

    v20 = [v16 vehicleTypes];
    v21 = [v20 allKeys];
    v22 = [v21 firstObject];
    [v13 setLprVehicleType:v22];
  }

  v31[0] = v26;
  v31[1] = v12;
  v31[2] = v13;
  v23 = [NSArray arrayWithObjects:v31 count:3];
  +[NSDate date];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100FA3674;
  v28 = v27[3] = &unk_10165FA78;
  v29 = @"{vehicle_parameters:{},model_id:0}";
  v30 = @"{vehicle_parameters:{},model_id:0}";
  v24 = v28;
  [v23 enumerateObjectsUsingBlock:v27];

  return v23;
}

- (void)loadVehiclesWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FA39A4;
  block[3] = &unk_101660648;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (VirtualGarageMockPersister)init
{
  v9.receiver = self;
  v9.super_class = VirtualGarageMockPersister;
  v2 = [(VirtualGarageMockPersister *)&v9 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.Navigation.persister.%@.%p", objc_opt_class(), v2];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = v2->_queue;
    v2->_queue = v6;
  }

  return v2;
}

@end