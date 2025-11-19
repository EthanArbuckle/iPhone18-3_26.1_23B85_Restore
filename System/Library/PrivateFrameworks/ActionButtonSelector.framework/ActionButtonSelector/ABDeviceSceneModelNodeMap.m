@interface ABDeviceSceneModelNodeMap
+ (id)thisDeviceModelNodeIdentifiers;
@end

@implementation ABDeviceSceneModelNodeMap

+ (id)thisDeviceModelNodeIdentifiers
{
  if (thisDeviceModelNodeIdentifiers_onceToken != -1)
  {
    +[ABDeviceSceneModelNodeMap thisDeviceModelNodeIdentifiers];
  }

  v3 = thisDeviceModelNodeIdentifiers_nodes;

  return v3;
}

void __59__ABDeviceSceneModelNodeMap_thisDeviceModelNodeIdentifiers__block_invoke()
{
  v0 = objc_alloc_init(ABDeviceSceneModelNodeMap);
  if (ABDeviceIsD23())
  {
    body = v0->_body;
    v0->_body = @"WibOhsJLWNvdGVb";

    button1Top = v0->_button1Top;
    v0->_button1Top = @"BgkSTfTZAfFlSpc";

    button2Top = v0->_button2Top;
    v0->_button2Top = @"CCBrWZtVpgFTbMW";

    buttonSides = v0->_buttonSides;
    v0->_buttonSides = 0;

    bodyHoles = v0->_bodyHoles;
    v0->_bodyHoles = @"SyIuqIlmQHEagpq";

    actionButtonBlocking = v0->_actionButtonBlocking;
    v0->_actionButtonBlocking = @"lpgJlboPYPnnpOw";

    screenOpaque = v0->_screenOpaque;
    v0->_screenOpaque = @"eOcETaSWvCwLRQb";

    actionButton = v0->_actionButton;
    v0->_actionButton = @"azTatffPXtyGnEn";
    v9 = @"LErlTPzMoZXqGJY";
    v10 = @"kqftLLyKuuwkLxy";
LABEL_5:
    v19 = 80;
    v20 = 72;
    goto LABEL_7;
  }

  IsV5x = ABDeviceIsV5x();
  v12 = v0->_body;
  if (IsV5x)
  {
    v0->_body = @"olnOJbUEKnYuadH";

    v13 = v0->_button1Top;
    v0->_button1Top = @"BgkSTfTZAfFlSpc";

    v14 = v0->_button2Top;
    v0->_button2Top = @"CCBrWZtVpgFTbMW";

    v15 = v0->_buttonSides;
    v0->_buttonSides = 0;

    v16 = v0->_bodyHoles;
    v0->_bodyHoles = @"AJFCBClHtOxDrNd";

    v17 = v0->_actionButtonBlocking;
    v0->_actionButtonBlocking = @"vmTAqWRIJrnHFKd";

    v18 = v0->_screenOpaque;
    v0->_screenOpaque = @"eOcETaSWvCwLRQb";

    actionButton = v0->_actionButton;
    v0->_actionButton = @"azTatffPXtyGnEn";
    v9 = @"IfFFmzTbCVWZhnd";
    v10 = @"JTvInDypCjqkgfa";
    goto LABEL_5;
  }

  v0->_body = @"GxnDRwXYWLmLHLg";

  v21 = v0->_button1Top;
  v0->_button1Top = @"cizMJLBqFievSEE";

  v22 = v0->_button2Top;
  v0->_button2Top = @"HsvnuuOFelsdpde";

  v23 = v0->_buttonSides;
  v0->_buttonSides = @"rKDJDpFrDlTumKJ";

  v24 = v0->_bodyHoles;
  v0->_bodyHoles = @"YgbJVdiVqnfLxkd";

  v25 = v0->_actionButtonBlocking;
  v0->_actionButtonBlocking = @"WsgnBpfqdWTTcEN";

  v26 = v0->_screenOpaque;
  v0->_screenOpaque = @"qoBNQvAugFFloeW";

  v27 = v0->_actionButton;
  v0->_actionButton = @"pSGcebnmcFtsOOG";

  actionButtonSides = v0->_actionButtonSides;
  v0->_actionButtonSides = @"KxLxpHjhdScjmXV";

  actionButton = v0->_muteWall;
  v0->_muteWall = @"crmKpCAtfjxkywa";
  v9 = @"GQhWfyGbSVpNdnc";
  v10 = @"ughIzqxkPkTEudm";
  v19 = 96;
  v20 = 88;
LABEL_7:

  v29 = *(&v0->super.isa + v20);
  *(&v0->super.isa + v20) = v10;

  v30 = *(&v0->super.isa + v19);
  *(&v0->super.isa + v19) = v9;

  v31 = thisDeviceModelNodeIdentifiers_nodes;
  thisDeviceModelNodeIdentifiers_nodes = v0;
}

@end