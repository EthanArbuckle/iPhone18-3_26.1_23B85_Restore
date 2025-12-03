@interface MTRScenesManagementClusterViewSceneResponseParams
- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct;
- (MTRScenesManagementClusterViewSceneResponseParams)init;
- (MTRScenesManagementClusterViewSceneResponseParams)initWithDecodableStruct:(const void *)struct;
- (MTRScenesManagementClusterViewSceneResponseParams)initWithResponseValue:(id)value error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRScenesManagementClusterViewSceneResponseParams

- (MTRScenesManagementClusterViewSceneResponseParams)init
{
  v11.receiver = self;
  v11.super_class = MTRScenesManagementClusterViewSceneResponseParams;
  v2 = [(MTRScenesManagementClusterViewSceneResponseParams *)&v11 init];
  v3 = v2;
  if (v2)
  {
    status = v2->_status;
    v2->_status = &unk_284C3E4C8;

    groupID = v3->_groupID;
    v3->_groupID = &unk_284C3E4C8;

    sceneID = v3->_sceneID;
    v3->_sceneID = &unk_284C3E4C8;

    transitionTime = v3->_transitionTime;
    v3->_transitionTime = 0;

    sceneName = v3->_sceneName;
    v3->_sceneName = 0;

    extensionFieldSetStructs = v3->_extensionFieldSetStructs;
    v3->_extensionFieldSetStructs = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRScenesManagementClusterViewSceneResponseParams);
  status = [(MTRScenesManagementClusterViewSceneResponseParams *)self status];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setStatus:status];

  groupID = [(MTRScenesManagementClusterViewSceneResponseParams *)self groupID];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setGroupID:groupID];

  sceneID = [(MTRScenesManagementClusterViewSceneResponseParams *)self sceneID];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setSceneID:sceneID];

  transitionTime = [(MTRScenesManagementClusterViewSceneResponseParams *)self transitionTime];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setTransitionTime:transitionTime];

  sceneName = [(MTRScenesManagementClusterViewSceneResponseParams *)self sceneName];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setSceneName:sceneName];

  extensionFieldSetStructs = [(MTRScenesManagementClusterViewSceneResponseParams *)self extensionFieldSetStructs];
  [(MTRScenesManagementClusterViewSceneResponseParams *)v4 setExtensionFieldSetStructs:extensionFieldSetStructs];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: status:%@ groupID:%@; sceneID:%@; transitionTime:%@; sceneName:%@; extensionFieldSetStructs:%@; >", v5, self->_status, self->_groupID, self->_sceneID, self->_transitionTime, self->_sceneName, self->_extensionFieldSetStructs];;

  return v6;
}

- (MTRScenesManagementClusterViewSceneResponseParams)initWithResponseValue:(id)value error:(id *)error
{
  valueCopy = value;
  v20.receiver = self;
  v20.super_class = MTRScenesManagementClusterViewSceneResponseParams;
  v7 = [(MTRScenesManagementClusterViewSceneResponseParams *)&v20 init];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  [MTRBaseDevice _responseDataForCommand:valueCopy clusterID:98 commandID:1 error:error];
  if (v19)
  {
    sub_2393C5AAC(v18);
    sub_2393C5ADC(v18, *(v19 + 1), *(v19 + 3));
    v8 = sub_2393C6FD0(v18, 256);
    if (!v8)
    {
      v12[0] = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v8 = sub_238F26D98(v12, v18);
      if (!v8)
      {
        v8 = [(MTRScenesManagementClusterViewSceneResponseParams *)v7 _setFieldsFromDecodableStruct:v12];
        if (!v8)
        {
          v10 = v7;
          goto LABEL_8;
        }
      }
    }

    sub_238DD3F98(v8, v9, error);
  }

  v10 = 0;
LABEL_8:
  sub_238EA1758(&v19);
LABEL_10:

  return v10;
}

- (MTRScenesManagementClusterViewSceneResponseParams)initWithDecodableStruct:(const void *)struct
{
  v10.receiver = self;
  v10.super_class = MTRScenesManagementClusterViewSceneResponseParams;
  v4 = [(MTRScenesManagementClusterViewSceneResponseParams *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(MTRScenesManagementClusterViewSceneResponseParams *)v4 _setFieldsFromDecodableStruct:struct];
    if (!v6)
    {
      v8 = v5;
      goto LABEL_6;
    }

    sub_238DD3F98(v6, v7, 0);
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (ChipError)_setFieldsFromDecodableStruct:(const void *)struct
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*struct];
  [(MTRScenesManagementClusterViewSceneResponseParams *)self setStatus:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(struct + 1)];
  [(MTRScenesManagementClusterViewSceneResponseParams *)self setGroupID:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(struct + 4)];
  [(MTRScenesManagementClusterViewSceneResponseParams *)self setSceneID:v7];

  if (*(struct + 8) == 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(struct + 8)];
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setTransitionTime:v8];
  }

  else
  {
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setTransitionTime:0];
  }

  if (*(struct + 16) == 1)
  {
    v9 = sub_238DE36B8(struct + 16);
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*v9 length:v9[1] encoding:4];
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setSceneName:v10];

    sceneName = [(MTRScenesManagementClusterViewSceneResponseParams *)self sceneName];

    if (!sceneName)
    {
      v12 = 0x386700000000;
      v13 = "/Library/Caches/com.apple.xbs/Sources/CHIPFramework/connectedhomeip/src/darwin/Framework/CHIP/zap-generated/MTRCommandPayloadsObjc.mm";
      v14 = 47;
      goto LABEL_51;
    }
  }

  else
  {
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setSceneName:0];
  }

  v16 = *(struct + 40);
  v15 = struct + 40;
  if (v16 == 1)
  {
    v17 = objc_opt_new();
    v18 = sub_238DE36B8(v15);
    sub_238EA2538(v45, v18);
    while (sub_238EA1A80(v45) && sub_238EA2594(v45))
    {
      v19 = objc_opt_new();
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v46];
      [v19 setClusterID:v20];

      v21 = objc_opt_new();
      sub_238EA2634(v35, &v47);
      while (sub_238EA1A80(v35) && sub_238EA2698(v35))
      {
        v22 = objc_opt_new();
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v36];
        [v22 setAttributeID:v23];

        if (v37[0] == 1)
        {
          v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*sub_238DE36D8(v37)];
          [v22 setValueUnsigned8:v24];
        }

        else
        {
          [v22 setValueUnsigned8:0];
        }

        if (v38[0] == 1)
        {
          v25 = [MEMORY[0x277CCABB0] numberWithChar:*sub_238DE36D8(v38)];
          [v22 setValueSigned8:v25];
        }

        else
        {
          [v22 setValueSigned8:0];
        }

        if (v39[0] == 1)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*sub_238E0A934(v39)];
          [v22 setValueUnsigned16:v26];
        }

        else
        {
          [v22 setValueUnsigned16:0];
        }

        if (v40[0] == 1)
        {
          v27 = [MEMORY[0x277CCABB0] numberWithShort:*sub_238E0A934(v40)];
          [v22 setValueSigned16:v27];
        }

        else
        {
          [v22 setValueSigned16:0];
        }

        if (v41[0] == 1)
        {
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*sub_238DE3698(v41)];
          [v22 setValueUnsigned32:v28];
        }

        else
        {
          [v22 setValueUnsigned32:0];
        }

        if (v42[0] == 1)
        {
          v29 = [MEMORY[0x277CCABB0] numberWithInt:*sub_238DE3698(v42)];
          [v22 setValueSigned32:v29];
        }

        else
        {
          [v22 setValueSigned32:0];
        }

        if (v43[0] == 1)
        {
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*sub_238DE36B8(v43)];
          [v22 setValueUnsigned64:v30];
        }

        else
        {
          [v22 setValueUnsigned64:0];
        }

        if (v44[0] == 1)
        {
          v31 = [MEMORY[0x277CCABB0] numberWithLongLong:*sub_238DE36B8(v44)];
          [v22 setValueSigned64:v31];
        }

        else
        {
          [v22 setValueSigned64:0];
        }

        [v21 addObject:v22];
      }

      if (LODWORD(v35[0]) != 33)
      {
        v32 = v35[0];
        v14 = LODWORD(v35[0]);
        if (LODWORD(v35[0]))
        {
          v13 = v35[1];

          goto LABEL_50;
        }
      }

      [v19 setAttributeValueList:v21];

      [v17 addObject:v19];
    }

    if (LODWORD(v45[0]) == 33 || (v32 = v45[0], v14 = LODWORD(v45[0]), !LODWORD(v45[0])))
    {
      [(MTRScenesManagementClusterViewSceneResponseParams *)self setExtensionFieldSetStructs:v17];

      goto LABEL_48;
    }

    v13 = v45[1];
LABEL_50:
    v12 = v32 & 0xFFFFFFFF00000000;
  }

  else
  {
    [(MTRScenesManagementClusterViewSceneResponseParams *)self setExtensionFieldSetStructs:0];
LABEL_48:
    v13 = 0;
    v12 = 0;
    v14 = 0;
  }

LABEL_51:
  v33 = v14 | v12;
  v34 = v13;
  result.mFile = v34;
  result.mError = v33;
  result.mLine = HIDWORD(v33);
  return result;
}

@end