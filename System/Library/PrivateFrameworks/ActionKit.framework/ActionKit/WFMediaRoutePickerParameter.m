@interface WFMediaRoutePickerParameter
- (BOOL)shouldDefaultToLocalDeviceEndpoint;
- (WFMediaRoutePicker)routePicker;
- (WFMediaRoutePickerParameter)initWithDefinition:(id)a3;
- (id)accessoryImageForPossibleState:(id)a3;
- (id)defaultSerializedRepresentationForEnumeration:(id)a3;
- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4;
- (id)localizedLabelForPossibleState:(id)a3;
- (id)sortedStatesForAvailableRoutes:(id)a3;
- (int64_t)routeType;
- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5;
- (void)routePickerDidUpdateAvailableRoutes:(id)a3;
- (void)startDiscoveringRoutes;
- (void)stopDiscoveringRoutes;
@end

@implementation WFMediaRoutePickerParameter

- (void)routePickerDidUpdateAvailableRoutes:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__WFMediaRoutePickerParameter_routePickerDidUpdateAvailableRoutes___block_invoke;
  v6[3] = &unk_278C21508;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __67__WFMediaRoutePickerParameter_routePickerDidUpdateAvailableRoutes___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) availableRoutes];
  v6 = [v2 sortedStatesForAvailableRoutes:v3];

  v4 = *(a1 + 32);
  if (v6)
  {
    v5 = [objc_alloc(MEMORY[0x277CD3E28]) initWithItems:v6];
    [v4 setPossibleStatesCollection:v5];
  }

  else
  {
    [v4 setPossibleStatesCollection:0];
  }
}

- (id)accessoryImageForPossibleState:(id)a3
{
  v3 = a3;
  v4 = [v3 value];
  v5 = [v4 isLocalDevice];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D79FC8]);
    v7 = [getMPAVRoutingControllerClass() _currentDeviceRoutingIconImage];
    v8 = [v6 initWithPlatformImage:v7];
  }

  else
  {
    v7 = [v3 route];
    if (v7)
    {
      v9 = objc_alloc(MEMORY[0x277D79FC8]);
      v10 = [getMPAVRoutingControllerClass() _iconImageForRoute:v7];
      v8 = [v9 initWithPlatformImage:v10];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)sortedStatesForAvailableRoutes:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__19998;
  v21 = __Block_byref_object_dispose__19999;
  v22 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__WFMediaRoutePickerParameter_sortedStatesForAvailableRoutes___block_invoke;
  v16[3] = &unk_278C1BEC8;
  v16[4] = self;
  v16[5] = &v17;
  v5 = [v4 if_compactMap:v16];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"value.routeName" ascending:1];
  v23[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  if ([(WFMediaRoutePickerParameter *)self routeType]== 3)
  {
    v9 = v8;
  }

  else
  {
    v10 = [v8 mutableCopy];
    v9 = v10;
    if (v18[5])
    {
      [v10 removeObject:?];
      [v9 insertObject:v18[5] atIndex:0];
    }

    else
    {
      v11 = WFGetLocalDeviceMediaRoute();
      v12 = v18[5];
      v18[5] = v11;

      v13 = v18[5];
      if (v13)
      {
        [v9 insertObject:v13 atIndex:0];
      }
    }
  }

  _Block_object_dispose(&v17, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

WFMediaRouteState *__62__WFMediaRoutePickerParameter_sortedStatesForAvailableRoutes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) routeType] != 3)
  {
    goto LABEL_7;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getMPAVOutputDeviceRouteClass_softClass;
  v14 = getMPAVOutputDeviceRouteClass_softClass;
  if (!getMPAVOutputDeviceRouteClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getMPAVOutputDeviceRouteClass_block_invoke;
    v10[3] = &unk_278C222B8;
    v10[4] = &v11;
    __getMPAVOutputDeviceRouteClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  if ((objc_opt_isKindOfClass() & 1) != 0 && (WFAvailableListeningModesForRoute(v3), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 >= 2))
  {
LABEL_7:
    v8 = [[WFMediaRouteState alloc] initWithRoute:v3];
    if ([v3 isDeviceSpeakerRoute])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
    }
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  return v8;
}

- (id)enumeration:(id)a3 localizedLabelForPossibleState:(id)a4
{
  v4 = [a4 value];
  v5 = [v4 routeName];

  return v5;
}

- (BOOL)shouldDefaultToLocalDeviceEndpoint
{
  v2 = [(WFMediaRoutePickerParameter *)self definition];
  v3 = [v2 objectForKey:*MEMORY[0x277D7CE00]];
  v4 = [v3 isEqualToString:@"Local"];

  return v4;
}

- (void)loadPossibleStatesForEnumeration:(id)a3 searchTerm:(id)a4 completionHandler:(id)a5
{
  v10 = a5;
  v6 = [(WFDynamicEnumerationParameter *)self possibleStates];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277CD3E28]);
    v8 = [(WFDynamicEnumerationParameter *)self possibleStates];
    v9 = [v7 initWithItems:v8];
  }

  else
  {
    v9 = 0;
  }

  v10[2](v10, v9, 0);
}

- (id)defaultSerializedRepresentationForEnumeration:(id)a3
{
  if ([(WFMediaRoutePickerParameter *)self shouldDefaultToLocalDeviceEndpoint])
  {
    v3 = WFGetLocalDeviceMediaRoute();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 serializedRepresentation];

  return v4;
}

- (void)stopDiscoveringRoutes
{
  v3 = [(WFMediaRoutePickerParameter *)self routePicker];
  [v3 removeAvailableRoutesObserver:self];
}

- (void)startDiscoveringRoutes
{
  v3 = [(WFMediaRoutePickerParameter *)self routePicker];
  [v3 addAvailableRoutesObserver:self];
}

- (WFMediaRoutePicker)routePicker
{
  routePicker = self->_routePicker;
  if (!routePicker)
  {
    v4 = [[WFMediaRoutePicker alloc] initWithRouteType:[(WFMediaRoutePickerParameter *)self routeType]];
    v5 = self->_routePicker;
    self->_routePicker = v4;

    routePicker = self->_routePicker;
  }

  return routePicker;
}

- (id)localizedLabelForPossibleState:(id)a3
{
  v3 = [a3 value];
  v4 = [v3 displayName];

  return v4;
}

- (int64_t)routeType
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(WFMediaRoutePickerParameter *)self definition];
  v3 = [v2 objectForKey:@"RouteType"];
  v4 = objc_opt_class();
  v5 = v3;
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = getWFGeneralLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v12 = 136315906;
      v13 = "WFEnforceClass";
      v14 = 2114;
      v15 = v5;
      v16 = 2114;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = v4;
      v8 = v17;
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v12, 0x2Au);
    }

    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if ([v6 isEqualToString:@"Endpoint"])
  {
    v9 = 1;
  }

  else if ([v6 isEqualToString:@"HandoffEndpoint"])
  {
    v9 = 2;
  }

  else if ([v6 isEqualToString:@"ListeningModeCapableOutputDevice"])
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (WFMediaRoutePickerParameter)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFMediaRoutePickerParameter;
  v3 = [(WFDynamicEnumerationParameter *)&v7 initWithDefinition:a3];
  v4 = v3;
  if (v3)
  {
    [(WFDynamicEnumerationParameter *)v3 setDataSource:v3];
    v5 = v4;
  }

  return v4;
}

@end