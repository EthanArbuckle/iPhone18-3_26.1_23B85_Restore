@interface VectorKitDebugRenderController
- (id)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)featureDisableSwitchChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation VectorKitDebugRenderController

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)featureDisableSwitchChanged:(id)changed
{
  changedCopy = changed;
  delegate = [(VectorKitDebugRenderController *)self delegate];
  v5 = [delegate allVisibleMapViewsForDebugController:self];
  firstObject = [v5 firstObject];
  _mapLayer = [firstObject _mapLayer];

  switchIndex = [changedCopy switchIndex];
  if (switchIndex <= 3)
  {
    if (switchIndex > 1)
    {
      if (switchIndex == 2)
      {
        [_mapLayer setDisableRoads:{objc_msgSend(changedCopy, "isOn")}];
      }

      else
      {
        [_mapLayer setDisableTransitLines:{objc_msgSend(changedCopy, "isOn")}];
      }
    }

    else if (switchIndex)
    {
      if (switchIndex == 1)
      {
        [_mapLayer setDisablePolygons:{objc_msgSend(changedCopy, "isOn")}];
      }
    }

    else
    {
      [_mapLayer setDisableRasters:{objc_msgSend(changedCopy, "isOn")}];
    }

    goto LABEL_19;
  }

  if (switchIndex <= 5)
  {
    if (switchIndex == 4)
    {
      [_mapLayer setDisableLabels:{objc_msgSend(changedCopy, "isOn")}];
      goto LABEL_19;
    }

    [_mapLayer setDisableBuildingFootprints:{objc_msgSend(changedCopy, "isOn")}];
    isOn = [changedCopy isOn];
    v10 = +[VKDebugSettings sharedSettingsExt];
    [v10 setDisableBuildingFootprints:isOn];
    goto LABEL_18;
  }

  if (switchIndex == 6)
  {
    isOn2 = [changedCopy isOn];
    v10 = +[VKDebugSettings sharedSettingsExt];
    [v10 setDisableRoute:isOn2];
LABEL_18:

    goto LABEL_19;
  }

  if (switchIndex == 7)
  {
    [_mapLayer setDisableGrid:{objc_msgSend(changedCopy, "isOn")}];
  }

LABEL_19:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  delegate = [(VectorKitDebugRenderController *)self delegate];
  v9 = [delegate allVisibleMapViewsForDebugController:self];
  firstObject = [v9 firstObject];
  _mapLayer = [firstObject _mapLayer];

  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"Cell"];

  if (!v12)
  {
    v12 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"Cell"];
  }

  [v12 setAccessoryView:0];
  if (![pathCopy section] && objc_msgSend(pathCopy, "row") <= 7 && (objc_msgSend(pathCopy, "row") & 0x8000000000000000) == 0)
  {
    v13 = -[NSMutableArray objectAtIndexedSubscript:](self->_debugFeatureSwitches, "objectAtIndexedSubscript:", [pathCopy row]);
    v14 = +[NSNull null];
    v15 = [v13 isEqual:v14];

    if (v15)
    {
      v16 = objc_alloc_init(VKDebugRenderSwitch);

      -[VKDebugRenderSwitch setSwitchIndex:](v16, "setSwitchIndex:", [pathCopy row]);
      [(VKDebugRenderSwitch *)v16 addTarget:self action:"featureDisableSwitchChanged:" forControlEvents:4096];
      -[NSMutableArray setObject:atIndexedSubscript:](self->_debugFeatureSwitches, "setObject:atIndexedSubscript:", v16, [pathCopy row]);
      v13 = v16;
    }

    [v12 setAccessoryView:v13];
    v17 = *(&off_10164ED68 + [pathCopy row]);
    v18 = [pathCopy row];
    v19 = 0;
    if (v18 <= 3)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          roadsDisabled = [_mapLayer roadsDisabled];
        }

        else
        {
          roadsDisabled = [_mapLayer transitLinesDisabled];
        }

        goto LABEL_24;
      }

      if (!v18)
      {
        roadsDisabled = [_mapLayer rastersDisabled];
        goto LABEL_24;
      }

      if (v18 == 1)
      {
        roadsDisabled = [_mapLayer polygonsDisabled];
LABEL_24:
        v19 = roadsDisabled;
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
          roadsDisabled = [_mapLayer gridDisabled];
          goto LABEL_24;
        }

LABEL_27:
        textLabel = [v12 textLabel];
        [textLabel setText:v17];

        [v13 setOn:v19];
        goto LABEL_28;
      }

      v21 = +[VKDebugSettings sharedSettingsExt];
      disableRoute = [v21 disableRoute];
    }

    else
    {
      if (v18 == 4)
      {
        roadsDisabled = [_mapLayer labelsDisabled];
        goto LABEL_24;
      }

      v21 = +[VKDebugSettings sharedSettingsExt];
      disableRoute = [v21 disableBuildingFootprints];
    }

    v19 = disableRoute;

    goto LABEL_27;
  }

LABEL_28:

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
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