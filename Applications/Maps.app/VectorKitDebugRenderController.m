@interface VectorKitDebugRenderController
- (id)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)featureDisableSwitchChanged:(id)a3;
- (void)viewDidLoad;
@end

@implementation VectorKitDebugRenderController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)featureDisableSwitchChanged:(id)a3
{
  v12 = a3;
  v4 = [(VectorKitDebugRenderController *)self delegate];
  v5 = [v4 allVisibleMapViewsForDebugController:self];
  v6 = [v5 firstObject];
  v7 = [v6 _mapLayer];

  v8 = [v12 switchIndex];
  if (v8 <= 3)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        [v7 setDisableRoads:{objc_msgSend(v12, "isOn")}];
      }

      else
      {
        [v7 setDisableTransitLines:{objc_msgSend(v12, "isOn")}];
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        [v7 setDisablePolygons:{objc_msgSend(v12, "isOn")}];
      }
    }

    else
    {
      [v7 setDisableRasters:{objc_msgSend(v12, "isOn")}];
    }

    goto LABEL_19;
  }

  if (v8 <= 5)
  {
    if (v8 == 4)
    {
      [v7 setDisableLabels:{objc_msgSend(v12, "isOn")}];
      goto LABEL_19;
    }

    [v7 setDisableBuildingFootprints:{objc_msgSend(v12, "isOn")}];
    v9 = [v12 isOn];
    v10 = +[VKDebugSettings sharedSettingsExt];
    [v10 setDisableBuildingFootprints:v9];
    goto LABEL_18;
  }

  if (v8 == 6)
  {
    v11 = [v12 isOn];
    v10 = +[VKDebugSettings sharedSettingsExt];
    [v10 setDisableRoute:v11];
LABEL_18:

    goto LABEL_19;
  }

  if (v8 == 7)
  {
    [v7 setDisableGrid:{objc_msgSend(v12, "isOn")}];
  }

LABEL_19:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VectorKitDebugRenderController *)self delegate];
  v9 = [v8 allVisibleMapViewsForDebugController:self];
  v10 = [v9 firstObject];
  v11 = [v10 _mapLayer];

  v12 = [v7 dequeueReusableCellWithIdentifier:@"Cell"];

  if (!v12)
  {
    v12 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"Cell"];
  }

  [v12 setAccessoryView:0];
  if (![v6 section] && objc_msgSend(v6, "row") <= 7 && (objc_msgSend(v6, "row") & 0x8000000000000000) == 0)
  {
    v13 = -[NSMutableArray objectAtIndexedSubscript:](self->_debugFeatureSwitches, "objectAtIndexedSubscript:", [v6 row]);
    v14 = +[NSNull null];
    v15 = [v13 isEqual:v14];

    if (v15)
    {
      v16 = objc_alloc_init(VKDebugRenderSwitch);

      -[VKDebugRenderSwitch setSwitchIndex:](v16, "setSwitchIndex:", [v6 row]);
      [(VKDebugRenderSwitch *)v16 addTarget:self action:"featureDisableSwitchChanged:" forControlEvents:4096];
      -[NSMutableArray setObject:atIndexedSubscript:](self->_debugFeatureSwitches, "setObject:atIndexedSubscript:", v16, [v6 row]);
      v13 = v16;
    }

    [v12 setAccessoryView:v13];
    v17 = *(&off_10164ED68 + [v6 row]);
    v18 = [v6 row];
    v19 = 0;
    if (v18 <= 3)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v20 = [v11 roadsDisabled];
        }

        else
        {
          v20 = [v11 transitLinesDisabled];
        }

        goto LABEL_24;
      }

      if (!v18)
      {
        v20 = [v11 rastersDisabled];
        goto LABEL_24;
      }

      if (v18 == 1)
      {
        v20 = [v11 polygonsDisabled];
LABEL_24:
        v19 = v20;
        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (v18 > 5)
    {
      if (v18 != 6)
      {
        if (v18 == 7)
        {
          v20 = [v11 gridDisabled];
          goto LABEL_24;
        }

LABEL_27:
        v23 = [v12 textLabel];
        [v23 setText:v17];

        [v13 setOn:v19];
        goto LABEL_28;
      }

      v21 = +[VKDebugSettings sharedSettingsExt];
      v22 = [v21 disableRoute];
    }

    else
    {
      if (v18 == 4)
      {
        v20 = [v11 labelsDisabled];
        goto LABEL_24;
      }

      v21 = +[VKDebugSettings sharedSettingsExt];
      v22 = [v21 disableBuildingFootprints];
    }

    v19 = v22;

    goto LABEL_27;
  }

LABEL_28:

  return v12;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return @"Disable Features";
  }
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = VectorKitDebugRenderController;
  [(MapsDebugValuesViewController *)&v8 viewDidLoad];
  v3 = 8;
  v4 = [[NSMutableArray alloc] initWithCapacity:8];
  debugFeatureSwitches = self->_debugFeatureSwitches;
  self->_debugFeatureSwitches = v4;

  do
  {
    v6 = self->_debugFeatureSwitches;
    v7 = +[NSNull null];
    [(NSMutableArray *)v6 addObject:v7];

    --v3;
  }

  while (v3);
}

@end