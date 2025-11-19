void sub_1001355F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = pbb_setupflow_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v7 = 136315394;
      v8 = "[COSLinkUpgradeMonitor wirelessCredentialUpdateCompletedWithResult:]_block_invoke";
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s: wireless credentials exchange complete: %d", &v7, 0x12u);
    }

    if (*(a1 + 48) == 1)
    {
      [WeakRetained setWirelessCredentialsExchangeComplete:1];
      if (![WeakRetained currentLinkSubType] && (objc_msgSend(WeakRetained, "waitingForAWDLupgradeTimeout") & 1) == 0)
      {
        v5 = [WeakRetained networkRelayDeviceMonitor];
        if ([v5 isConnected])
        {
          v6 = *(*(a1 + 32) + 17);

          if ((v6 & 1) == 0)
          {
            [WeakRetained _performLinkUpgradeToInfraWiFi];
          }
        }

        else
        {
        }
      }
    }
  }
}

void sub_100135B60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained requestLinkUpgrade];
}

void sub_100136DD8(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = [[beam_bridge_2022_v2_1 alloc] initWithMLModel:v4];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001370D8(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [beam_bridge_2022_v2_1Output alloc];
    v7 = [v14 featureValueForName:@"cell_leaf_fully_connected_BiasAdd"];
    v8 = [v7 multiArrayValue];
    v9 = [v14 featureValueForName:@"leaf_leaf_predictions_probabilities"];
    v10 = [v9 multiArrayValue];
    v11 = [(beam_bridge_2022_v2_1Output *)v6 initWithCell_leaf_fully_connected_BiasAdd:v8 leaf_leaf_predictions_probabilities:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

void sub_1001372E8(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  if (v14)
  {
    v5 = a3;
    v6 = [beam_bridge_2022_v2_1Output alloc];
    v7 = [v14 featureValueForName:@"cell_leaf_fully_connected_BiasAdd"];
    v8 = [v7 multiArrayValue];
    v9 = [v14 featureValueForName:@"leaf_leaf_predictions_probabilities"];
    v10 = [v9 multiArrayValue];
    v11 = [(beam_bridge_2022_v2_1Output *)v6 initWithCell_leaf_fully_connected_BiasAdd:v8 leaf_leaf_predictions_probabilities:v10];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 16);
    v11 = a3;
    v13(v12, 0, v11);
  }
}

__n128 sub_100137680@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = [v1 imageResource];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = [v1 imageResourceBundleIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v46[10] = v8;
    v46[11] = v10;
    v46[12] = v13;
    v46[13] = v15;
    v47 = 1;
    v16 = sub_1001632C4();
    sub_1001632CC(v16, 0, 0, v5);

    v17 = type metadata accessor for URL();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v5, 1, v17) != 1)
    {
      v19 = &v43;
      v20 = &v42;
      URL.path(percentEncoded:)(1);
      (*(v18 + 8))(v5, v17);
      v21 = &v41;
      LiveActivityImageMap.init(imagePath:)();
      goto LABEL_9;
    }

    sub_10013A05C(v5, &unk_1002BC530);
  }

  v19 = v46;
  v20 = &v45;
  v21 = v44;
  sub_1001655E4(v44);
LABEL_9:
  v22 = v19[3];
  v54 = v19[2];
  v55[0] = v22;
  *(v55 + 9) = *(v19 + 57);
  v23 = v19[1];
  v52 = *v19;
  v53 = v23;
  v24 = *(v21 + 192);
  v25 = *(v21 + 232);
  v26 = *(v20 + 3);
  v50 = *(v20 + 2);
  v51[0] = v26;
  *(v51 + 9) = *(v20 + 57);
  v27 = *(v20 + 1);
  v48 = *v20;
  v49 = v27;
  v28 = v21[3];
  v29 = *(v21 + 32);
  v30 = *(v21 + 72);
  v31 = *v21;
  *(&v40[1] + 7) = v27;
  *(&v40[2] + 7) = v50;
  *(&v40[3] + 7) = v51[0];
  v40[4] = *(v51 + 9);
  *(v40 + 7) = v48;
  *(&v39[1] + 7) = v53;
  *(&v39[2] + 7) = v54;
  *(&v39[3] + 7) = v55[0];
  v39[4] = *(v55 + 9);
  *(v39 + 7) = v52;
  *a1 = v31;
  *(a1 + 8) = *(v21 + 1);
  *(a1 + 24) = v28;
  *(a1 + 32) = v29;
  *(a1 + 40) = *(v21 + 5);
  *(a1 + 56) = *(v21 + 7);
  *(a1 + 72) = v30;
  v32 = v40[1];
  *(a1 + 73) = v40[0];
  *(a1 + 137) = v40[4];
  v33 = v40[2];
  *(a1 + 121) = v40[3];
  *(a1 + 105) = v33;
  *(a1 + 89) = v32;
  v34 = *(v21 + 11);
  *(a1 + 160) = *(v21 + 10);
  *(a1 + 176) = v34;
  *(a1 + 192) = v24;
  *(a1 + 200) = *(v21 + 25);
  *(a1 + 216) = *(v21 + 27);
  *(a1 + 232) = v25;
  v35 = v39[1];
  *(a1 + 233) = v39[0];
  result = v39[2];
  v37 = v39[4];
  *(a1 + 281) = v39[3];
  *(a1 + 297) = v37;
  *(a1 + 265) = result;
  *(a1 + 249) = v35;
  return result;
}

uint64_t sub_1001379C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double LiveActivitySetupStateProvider<>.textMap.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  v3 = [v1 titleString];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  LiveActivityText.init(title:subtitle:)();
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  v5 = [v1 detailString];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v8;
  a1[1] = v9;
  result = *&v10;
  a1[2] = v10;
  a1[3] = v11;
  return result;
}

{
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  LiveActivityText.init(title:subtitle:)();
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double _sSo28COSWatchPairedViewControllerC6BridgeE7textMap0E12LiveActivity0hi4TextG0Vvg_0@<D0>(_OWORD *a1@<X8>)
{
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  sub_100145BB8(0xD00000000000002BLL, 0x8000000100242410);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double COSSpinnerPageController.textMap.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  sub_100145BB8(0xD000000000000020, 0x8000000100242440);
  LiveActivityText.init(title:subtitle:)();
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  v3 = [v1 message];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100145BB8(0xD00000000000001FLL, 0x8000000100242470);
  }

  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v6;
  a1[1] = v7;
  result = *&v8;
  a1[2] = v8;
  a1[3] = v9;
  return result;
}

double sub_100137E98@<D0>(_OWORD *a1@<X8>)
{
  COSSpinnerPageController.textMap.getter(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

double COSInitialPropertyExchangeViewController.textMap.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_1001396E8(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

double sub_100137F5C@<D0>(_OWORD *a1@<X8>)
{
  LiveActivitySetupStateProvider<>.textMap.getter(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

double _sSo31COSPasscodeChoiceViewControllerC6BridgeE7textMap0E12LiveActivity0hi4TextG0Vvg_0@<D0>(_OWORD *a1@<X8>)
{
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  sub_100145BB8(0xD000000000000016, 0x8000000100242490);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void *COSSetupFinishedViewController.state.getter@<X0>(void *a1@<X8>)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 2;
  sub_10016486C();
  sub_100145BB8(0xD00000000000001ELL, 0x80000001002424B0);
  sub_100145BB8(0xD00000000000001FLL, 0x80000001002424D0);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  [v1 totalProgress];
  sub_100164868();
  LiveActivityMetadata.ProgressMetadata.init(progress:positionFactor:sizeFactor:watchAssetType:)();
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8 | 0x40;
  LiveActivitySetupState.init(textMap:imageMap:metadata:shouldSuppressAlert:)();
  return memcpy(a1, __src, 0x1AAuLL);
}

double COSSetupFinishedViewController.textMap.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_100145BB8(0xD00000000000001ELL, 0x80000001002424B0);
  sub_100145BB8(0xD00000000000001FLL, 0x80000001002424D0);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void sub_1001382B0()
{
  v4 = [objc_opt_self() sharedApplication];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v3 = [v1 setupController];

    if (!v3)
    {
      return;
    }

    if ([v3 areLiveActivitiesAllowed])
    {
      v16 = 0u;
      v17 = 0u;
      v18 = 2;
      sub_10016486C();
      sub_100145BB8(0xD00000000000001ELL, 0x80000001002424B0);
      sub_100145BB8(0xD00000000000001FLL, 0x80000001002424D0);
      LiveActivityText.init(title:subtitle:)();
      LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
      [v0 totalProgress];
      sub_100164868();
      LiveActivityMetadata.ProgressMetadata.init(progress:positionFactor:sizeFactor:watchAssetType:)();
      v12 = v6;
      v13 = v7;
      v14 = v8;
      v15 = v9 | 0x40;
      LiveActivitySetupState.init(textMap:imageMap:metadata:shouldSuppressAlert:)();
      memcpy(__dst, __src, 0x1A9uLL);
      __dst[425] = 1;
      sub_100145A9C(__dst);

      sub_100139D30(__dst);
      return;
    }

    v2 = v3;
  }

  else
  {
    v2 = v4;
  }
}

double COSCrownOrientationChoiceViewController.textMap.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  sub_100145BB8(0xD000000000000021, 0x80000001002424F0);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double COSTermsConditionsController.textMap.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  sub_100145BB8(0xD000000000000022, 0x8000000100242520);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double COSHelloAppleWatchViewController.textMap.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_100145BB8(0xD000000000000019, 0x8000000100242550);
  sub_100145BB8(0xD00000000000001CLL, 0x8000000100242570);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

__n128 COSHelloAppleWatchViewController.imageMap.getter@<Q0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v2 = sub_1001379C4(&qword_1002BC790);
  __chkstk_darwin(v2 - 8);
  v52 = &object - v3;
  v4 = sub_1001379C4(&unk_1002BC530);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &object - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &object - v8;
  v85 = 1;
  v86 = 0;
  v88 = 0;
  v87 = 0;
  v89 = 2;
  sub_1001628F4(3, 0x6F6C6C65685FLL, 0xE600000000000000, &object - v8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v10) == 1)
  {
    v7 = v9;
LABEL_5:
    v13 = v63;
    v14 = &v62;
    sub_10013A05C(v7, &unk_1002BC530);
    v73 = 0u;
    v74 = 0u;
    v75 = 255;
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
    v15 = LiveActivityImageSource.systemAppleWatchSFSymbol.unsafeMutableAddressor();
    v16 = *(v15 + 32);
    v17 = *(v15 + 16);
    v56[0] = *v15;
    v56[1] = v17;
    v57 = v16;
    v82 = 0u;
    v83 = 0u;
    v84 = -1;
    sub_100139D84(v56, v55);
    LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
    v18 = *v15;
    v19 = *(v15 + 16);
    v81 = *(v15 + 32);
    v79 = v18;
    v80 = v19;
    sub_100139D84(&v79, v55);
    LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
    v20 = &v61;
    goto LABEL_9;
  }

  v51 = URL.path(percentEncoded:)(1);
  v50 = *(v11 + 8);
  v50(v9, v10);
  sub_1001628F4(2, 0x6F6C6C65685FLL, 0xE600000000000000, v7);
  if (v12(v7, 1, v10) == 1)
  {

    goto LABEL_5;
  }

  v13 = &v60;
  v14 = &v59;
  v21 = URL.path(percentEncoded:)(1);
  object = v21._object;
  countAndFlagsBits = v21._countAndFlagsBits;
  v50(v7, v10);
  v22 = sub_100165F8C();
  swift_beginAccess();
  if ((*v22 & 1) == 0)
  {
    v23 = type metadata accessor for TaskPriority();
    v24 = v52;
    (*(*(v23 - 8) + 56))(v52, 1, 1, v23);
    type metadata accessor for MainActor();
    v25 = static MainActor.shared.getter();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = ObjectType;
    sub_1001390A0(0, 0, v24, &unk_1001C6DB8, v26);
  }

  memset(&v63[80], 0, 32);
  v64 = 255;
  v65 = 0u;
  v66 = 0u;
  v67 = 0;
  *&v82 = countAndFlagsBits;
  *(&v82 + 1) = object;
  v83 = 0uLL;
  v84 = 1;
  v70 = 0u;
  v71 = 0u;
  v72 = -1;
  LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
  v79 = v51;
  v80 = 0uLL;
  v81 = 1;
  LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
  v27 = LiveActivityImageSource.systemAppleWatchSFSymbol.unsafeMutableAddressor();
  v28 = *(v27 + 32);
  v29 = *(v27 + 16);
  v68[0] = *v27;
  v68[1] = v29;
  v69 = v28;
  sub_100139D84(v68, v55);
  LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
  v20 = &v58;
LABEL_9:
  LiveActivityImageMap.init(dynamicIslandCompact:dynamicIslandMinimal:dynamicIslandExpanded:lockScreen:)();
  v30 = v13[3];
  v96 = v13[2];
  v97[0] = v30;
  *(v97 + 9) = *(v13 + 57);
  v31 = v13[1];
  v94 = *v13;
  v95 = v31;
  v32 = *(v20 + 192);
  v33 = *(v20 + 232);
  v34 = *(v14 + 2);
  v35 = *(v14 + 3);
  v36 = *v14;
  v91 = *(v14 + 1);
  v92 = v34;
  v93[0] = v35;
  *(v93 + 9) = *(v14 + 57);
  v90 = v36;
  v37 = v20[3];
  v38 = *(v20 + 32);
  v39 = *(v20 + 72);
  v40 = *v20;
  *(&v55[1] + 7) = v91;
  *(&v55[2] + 7) = v34;
  *(&v55[3] + 7) = v93[0];
  v55[4] = *(v93 + 9);
  *(v55 + 7) = v36;
  *(&v54[1] + 7) = v95;
  *(&v54[2] + 7) = v96;
  *(&v54[3] + 7) = v97[0];
  v54[4] = *(v97 + 9);
  *(v54 + 7) = v94;
  *a1 = v40;
  *(a1 + 8) = *(v20 + 1);
  *(a1 + 24) = v37;
  *(a1 + 32) = v38;
  *(a1 + 40) = *(v20 + 5);
  *(a1 + 56) = *(v20 + 7);
  *(a1 + 72) = v39;
  v41 = v55[1];
  *(a1 + 73) = v55[0];
  v42 = v55[3];
  *(a1 + 137) = v55[4];
  v43 = v55[2];
  *(a1 + 121) = v42;
  *(a1 + 105) = v43;
  *(a1 + 89) = v41;
  v44 = *(v20 + 11);
  *(a1 + 160) = *(v20 + 10);
  *(a1 + 176) = v44;
  *(a1 + 192) = v32;
  *(a1 + 200) = *(v20 + 25);
  *(a1 + 216) = *(v20 + 27);
  *(a1 + 232) = v33;
  v45 = v54[1];
  *(a1 + 233) = v54[0];
  result = v54[2];
  v47 = v54[4];
  *(a1 + 281) = v54[3];
  *(a1 + 297) = v47;
  *(a1 + 265) = result;
  *(a1 + 249) = v45;
  return result;
}

uint64_t sub_100138D80()
{
  sub_1001379C4(&unk_1002BC530);
  *(v0 + 56) = swift_task_alloc();
  *(v0 + 64) = type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  *(v0 + 16) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 2;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100138E7C;

  return sub_100164D10();
}

uint64_t sub_100138E7C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100138FB8, v1, v0);
}

uint64_t sub_100138FB8()
{
  v1 = *(v0 + 56);

  sub_1001632CC(3, 0x6F6C6C65685FLL, 0xE600000000000000, v1);
  sub_10013A05C(v1, &unk_1002BC530);
  sub_1001632CC(2, 0x6F6C6C65685FLL, 0xE600000000000000, v1);
  sub_10013A05C(v1, &unk_1002BC530);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001390A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001379C4(&qword_1002BC790);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100139FEC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10013A05C(v11, &qword_1002BC790);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10013A05C(a3, &qword_1002BC790);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10013A05C(a3, &qword_1002BC790);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1001393DC()
{
  v1 = v0;
  v2 = sub_1001379C4(&qword_1002BC790);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_1001390A0(0, 0, v4, &unk_1001C7080, v7);
}

uint64_t sub_1001394F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001395F0;

  return v6(a1);
}

uint64_t sub_1001395F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1001396E8@<D0>(_OWORD *a1@<X8>)
{
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  sub_100145BB8(0xD000000000000020, 0x8000000100242440);
  LiveActivityText.init(title:subtitle:)();
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  sub_100145BB8(0xD00000000000001FLL, 0x8000000100242470);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

void *sub_10013980C@<X0>(void *a1@<X8>)
{
  sub_100145BB8(0xD00000000000001ALL, 0x8000000100242590);
  LiveActivityText.init(title:subtitle:)();
  sub_100145BB8(0xD00000000000001BLL, 0x80000001002423F0);
  sub_100145BB8(0xD00000000000001ALL, 0x8000000100242590);
  LiveActivityText.init(title:subtitle:)();
  LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
  sub_1001655E4(v3);
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v8 = 0x80;
  LiveActivitySetupState.init(textMap:imageMap:metadata:shouldSuppressAlert:)();
  return memcpy(a1, __src, 0x1AAuLL);
}

__n128 sub_100139944@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v2 - 8);
  v4 = v31 - v3;
  v75 = 0u;
  v76 = 0u;
  v77 = 2;
  v5 = sub_1001632C4();
  sub_1001632CC(v5, 0, 0, v4);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_10013A05C(v4, &unk_1002BC530);
    v63 = 0u;
    v64 = 0u;
    v65 = 255;
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
    v8 = LiveActivityImageSource.systemAppleWatchSFSymbol.unsafeMutableAddressor();
    v9 = *(v8 + 32);
    v10 = *(v8 + 16);
    v33[0] = *v8;
    v33[1] = v10;
    v34 = v9;
    v72 = 0;
    v73 = 0u;
    v74 = -1;
    sub_100139D84(v33, v32);
    LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
    v11 = *v8;
    v12 = *(v8 + 16);
    v71 = *(v8 + 32);
    v69 = v11;
    v70 = v12;
    sub_100139D84(&v69, v32);
  }

  else
  {
    v13 = URL.path(percentEncoded:)(1);
    (*(v7 + 8))(v4, v6);
    memset(&v53[2], 0, 32);
    v54 = 255;
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    v72 = v13;
    v73 = 0uLL;
    v74 = 1;
    v60 = 0u;
    v61 = 0u;
    v62 = -1;
    LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
    v14 = LiveActivityImageSource.systemAppleWatchSFSymbol.unsafeMutableAddressor();
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    v69 = *v14;
    v70 = v16;
    v71 = v15;
    sub_100139D84(&v69, v32);
    LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
    v17 = *v14;
    v18 = *(v14 + 16);
    v59 = *(v14 + 32);
    v58[0] = v17;
    v58[1] = v18;
    sub_100139D84(v58, v32);
  }

  LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
  LiveActivityImageMap.init(dynamicIslandCompact:dynamicIslandMinimal:dynamicIslandExpanded:lockScreen:)();
  v79[0] = v53[0];
  *(v79 + 9) = *(v53 + 9);
  v19 = v46;
  v20 = v49;
  v78[0] = v45[0];
  *(v78 + 9) = *(v45 + 9);
  v21 = v37;
  v22 = v38;
  v23 = v41;
  *(&v32[1] + 7) = v43;
  *(&v32[2] + 7) = v44;
  *(&v32[3] + 7) = v78[0];
  v32[4] = *(v45 + 9);
  *(v32 + 7) = v42;
  *(&v31[1] + 7) = v51;
  *(&v31[2] + 7) = v52;
  *(&v31[3] + 7) = v79[0];
  v31[4] = *(v53 + 9);
  *(v31 + 7) = v50;
  *a1 = v35;
  *(a1 + 8) = v36;
  *(a1 + 24) = v21;
  *(a1 + 32) = v22;
  *(a1 + 40) = v39;
  *(a1 + 56) = v40;
  *(a1 + 72) = v23;
  v24 = v32[1];
  *(a1 + 73) = v32[0];
  v25 = v32[3];
  *(a1 + 137) = v32[4];
  v26 = v32[2];
  *(a1 + 121) = v25;
  *(a1 + 105) = v26;
  *(a1 + 89) = v24;
  v27 = v45[3];
  *(a1 + 160) = v45[2];
  *(a1 + 176) = v27;
  *(a1 + 192) = v19;
  *(a1 + 200) = v47;
  *(a1 + 216) = v48;
  *(a1 + 232) = v20;
  v28 = v31[1];
  *(a1 + 233) = v31[0];
  result = v31[2];
  v30 = v31[4];
  *(a1 + 281) = v31[3];
  *(a1 + 297) = v30;
  *(a1 + 265) = result;
  *(a1 + 249) = v28;
  return result;
}

uint64_t sub_100139DE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10013A238;

  return sub_100138D80();
}

uint64_t sub_100139E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100139EF8;

  return sub_100138D80();
}

uint64_t sub_100139EF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100139FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001379C4(&qword_1002BC790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013A05C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1001379C4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10013A0BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10013A238;

  return sub_1001394F8(a1, v4);
}

uint64_t sub_10013A174(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100139EF8;

  return sub_1001394F8(a1, v4);
}

void sub_10013A2A4(uint64_t a1)
{
  if (*(v1 + 16))
  {
    __chkstk_darwin(a1);
    v3 = v2;
    withObservationTracking<A>(_:onChange:)();
    v4 = *(v1 + 24);
    if (v10 == 1)
    {
      if (!v4)
      {
        v5 = [objc_opt_self() displayLinkWithTarget:v1 selector:"_displayLinkFired:"];
        v6 = *(v1 + 24);
        *(v1 + 24) = v5;
        v7 = v5;

        if (v7)
        {
          v8 = [objc_opt_self() mainRunLoop];
          [v7 addToRunLoop:v8 forMode:NSRunLoopCommonModes];
        }
      }
    }

    else
    {
      v9 = v4;
      [v9 invalidate];

      v3 = *(v1 + 24);
      *(v1 + 24) = 0;
    }
  }
}

uint64_t sub_10013A420()
{
  v0 = sub_1001379C4(&qword_1002BC790);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10013A6D8(0, 0, v2, &unk_1001C70F0, v6);
}

uint64_t sub_10013A5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013A638, v6, v5);
}

uint64_t sub_10013A638()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    sub_10013A2A4(Strong);
  }

  **(v0 + 40) = v2 == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10013A6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001379C4(&qword_1002BC790);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100139FEC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10013A05C(v11, &qword_1002BC790);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_1001379C4(&qword_1002BBFD8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10013A05C(a3, &qword_1002BC790);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10013A05C(a3, &qword_1002BC790);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1001379C4(&qword_1002BBFD8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10013AA64()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10013AAA4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10013AB98;

  return v5(v2 + 32);
}

uint64_t sub_10013AB98()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void sub_10013ACAC()
{
  v55 = sub_1001379C4(&qword_1002BBFE0);
  v0 = __chkstk_darwin(v55);
  v56 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v0);
  v60 = &v51 - v2;
  v54 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v54);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DraggingMonitor();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v58 = [objc_opt_self() sharedInstance];
  v13 = [v58 getActiveDevice];
  if (v13)
  {
    v14 = v13;
    v57 = v12;
    sub_10013BBD4(0, &qword_1002BBFE8);
    v53 = "";
    (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
    (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v4);
    static OS_dispatch_queue.global(qos:)();
    (*(v5 + 8))(v7, v4);
    static DispatchQoS.unspecified.getter();
    *&v64 = &_swiftEmptyArrayStorage;
    sub_10013B958();
    sub_1001379C4(&qword_1002BBFF8);
    sub_10013B9B0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v16 = [objc_opt_self() mainScreen];
    [v16 bounds];

    v17 = v14;
    if ([v14 valueForProperty:PDRDevicePropertyKeyScreenSize])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v19 = v57;
    v64 = v62;
    v65 = v63;
    if (*(&v63 + 1))
    {
      type metadata accessor for CGSize();
      swift_dynamicCast();
    }

    else
    {
      sub_10013A05C(&v64, &unk_1002BC460);
    }

    if ([v14 valueForProperty:PDRDevicePropertyKeyScreenScale])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    if (*(&v63 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_10013A05C(&v64, &unk_1002BC460);
    }

    v20 = [objc_allocWithZone(type metadata accessor for GlanceFocusModel()) init];
    v21 = type metadata accessor for GlanceModel();
    v22 = static GlanceModel.sharedIfExists()();
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v24 = objc_allocWithZone(v21);
      v25 = v20;
      v26 = v15;
      v22 = GlanceModel.init(focusModel:workQueue:)();
      v23 = 0;
    }

    v27 = *(v19 + 16);
    *(v19 + 16) = v22;
    v28 = v22;
    v29 = v23;

    sub_10013A2A4(v30);
    if ([v17 valueForProperty:PDRDevicePropertyKeyCellularEnabled])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    v52 = v20;
    if (*(&v63 + 1))
    {
      sub_10013BBD4(0, &qword_1002BC010);
      if (swift_dynamicCast())
      {
        v31 = v61;
        [v61 BOOLValue];
LABEL_28:
        v53 = v15;
        GlanceModel.hasBaseband.setter();
        v54 = v17;
        [v17 isAltAccount];
        GlanceModel.isTinkerWatch.setter();
        GlanceModel.buttonLayout.getter();
        ButtonLayout.sideMargins.setter();
        ButtonLayout.containingViewSize.setter();
        v32 = v60;
        static BridgeGlanceView.configuredView(buttonLayout:buttonsModel:)();
        v33 = swift_allocObject();
        v34 = v59;
        swift_unknownObjectWeakInit();
        v35 = swift_allocObject();
        *(v35 + 16) = v19;
        *(v35 + 24) = v33;
        v36 = v56;
        v37 = (v32 + *(v55 + 36));
        *v37 = sub_10013BA5C;
        v37[1] = v35;
        v37[2] = 0;
        v37[3] = 0;
        sub_100010994(v32, v36);
        v38 = objc_allocWithZone(sub_1001379C4(&qword_1002BC008));

        v39 = UIHostingController.init(rootView:)();
        v40 = [v34 navigationController];
        if (v40)
        {
          v41 = v40;
          [v40 pushViewController:v39 animated:1];
        }

        v42 = v59;
        v43 = [v59 navigationController];
        v44 = swift_allocObject();
        *(v44 + 16) = v43;
        *(v44 + 24) = v39;
        v45 = v43;
        v46 = v39;
        GlanceModel.selectControlDoneBlock.setter();

        v47 = [v42 navigationController];
        *(swift_allocObject() + 16) = v47;
        v48 = v47;
        GlanceModel.selectControlNavigationBlock.setter();

        v49 = [v42 navigationController];
        *(swift_allocObject() + 16) = v49;
        v50 = v49;
        GlanceModel.selectControlNavigationBackBlock.setter();

        sub_100010A7C(v60);
        return;
      }
    }

    else
    {
      sub_10013A05C(&v64, &unk_1002BC460);
    }

    v31 = 0;
    goto LABEL_28;
  }

  v18 = v58;
}

uint64_t sub_10013B6B8@<X0>(_BYTE *a1@<X8>)
{
  result = GlanceModel.isDragging.getter();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_10013B6E8())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_10013B740;
}

uint64_t sub_10013B748(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100139EF8;

  return sub_10013A5A0(a1, v5, v6, v4);
}

uint64_t sub_10013B7E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10013A238;

  return sub_10013AAA4(a1, v4);
}

uint64_t sub_10013B8A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100139EF8;

  return sub_10013AAA4(a1, v4);
}

unint64_t sub_10013B958()
{
  result = qword_1002BBFF0;
  if (!qword_1002BBFF0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BBFF0);
  }

  return result;
}

unint64_t sub_10013B9B0()
{
  result = qword_1002BC000;
  if (!qword_1002BC000)
  {
    sub_10013BA14(&qword_1002BBFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC000);
  }

  return result;
}

uint64_t sub_10013BA14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10013BA5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10013BC6C();
  }
}

void sub_10013BAB0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [v1 popToViewController:*(v0 + 24) animated:1];
  }
}

void sub_10013BB00()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(sub_1001379C4(&qword_1002BC018));

  v3 = UIHostingController.init(rootView:)();
  if (v1)
  {
    [v1 pushViewController:v3 animated:1];
  }
}

void sub_10013BB88()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [v1 popViewControllerAnimated:1];
  }
}

uint64_t sub_10013BBD4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1002BC020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1002BC020);
    }
  }
}

uint64_t sub_10013BC6C()
{
  v0 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v0 - 8);
  v22 = &v16 - v1;
  v21 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v18 = type metadata accessor for LocalizedStringResource();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v10 = *(v2 + 104);
  v19 = v2 + 104;
  v11 = v21;
  v10(v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1001379C4(&unk_1002BC1B0);
  v17 = v7;
  *(swift_allocObject() + 16) = xmmword_1001C70B0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v10)(v4, v20, v11);
  v12 = v22;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  URL.init(string:)();
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v12, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for WatchSettingsNavigationDonation();
    static WatchSettingsNavigationDonation.emitNavigationEventForSystemSetting(iconSpecifierIdentifier:title:localizedNavigationComponents:deepLink:)();

    (*(v17 + 8))(v9, v18);
    return (*(v14 + 8))(v12, v13);
  }

  return result;
}

__n128 sub_10013C0DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10013C0EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013C10C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10013C134@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

id sub_10013C188(id result, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

id sub_10013C1B0@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v2 = type metadata accessor for EnvironmentValues();
  v50 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1001379C4(&qword_1002BC048);
  v51 = *(v55 - 8);
  __chkstk_darwin(v55);
  v6 = &v49 - v5;
  v56 = sub_1001379C4(&qword_1002BC050);
  __chkstk_darwin(v56);
  v58 = &v49 - v7;
  v52 = sub_1001379C4(&qword_1002BC058);
  __chkstk_darwin(v52);
  v53 = &v49 - v8;
  v57 = sub_1001379C4(&qword_1002BC060);
  __chkstk_darwin(v57);
  v54 = &v49 - v9;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) <= 1u)
  {
    if (!*(v1 + 32))
    {
      v14 = *(v1 + 16);
      v15 = Image.init(uiImage:)();
      LOBYTE(v68) = 0;
      *&v61 = v15;
      v63 = 0;

      sub_1001379C4(&qword_1002BC068);
      sub_10013DB88(&qword_1002BC070, &qword_1002BC068, &unk_1001C7418, sub_10013D8A8);
      _ConditionalContent<>.init(storage:)();
      v16 = v64[3];
      v17 = v58;
      *(v58 + 32) = v64[2];
      *(v17 + 48) = v16;
      *(v17 + 64) = v65;
      *(v17 + 80) = v66;
      v18 = v64[1];
      *v17 = v64[0];
      *(v17 + 16) = v18;
      swift_storeEnumTagMultiPayload();
      sub_1001379C4(&qword_1002BC0A8);
      sub_10013D9EC();
      sub_10013DCD8();
      _ConditionalContent<>.init(storage:)();
    }

    type metadata accessor for WatchSettingsNavigationDonation();
    static WatchSettingsNavigationDonation.extractSpecifierIdentifierFromApplicationIconBundleIdentifier(_:)();
    if (v26)
    {
      v27 = [objc_opt_self() sharedApplication];
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = [v28 settingsListController];

        if (v29)
        {
          v30 = String._bridgeToObjectiveC()();

          v31 = [v29 appIconForSpecifierIdentifier:v30];

          if (v31)
          {
            v32 = v31;
            Image.init(uiImage:)();
            (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
            v33 = Image.resizable(capInsets:resizingMode:)();

            (*(v11 + 8))(v13, v10);
            if (qword_1002BD710 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            [qword_1002BE7A0 size];
            [qword_1002BE7A0 size];
            static Alignment.center.getter();
            _FrameLayout.init(width:height:alignment:)();
            LOBYTE(v61) = 1;
            *(v64 + 6) = *v71;
            *(&v64[1] + 6) = *&v71[16];
            *(&v64[2] + 6) = *&v71[32];
            v68 = v33;
            LOWORD(v69[0]) = 257;
            *(v69 + 2) = v64[0];
            *(&v69[1] + 2) = v64[1];
            *(&v69[2] + 2) = v64[2];
            *&v69[3] = *&v71[40];
            v64[0] = v33;
            v64[1] = v69[0];
            v64[2] = v69[1];
            v64[3] = v69[2];
            *&v65 = *&v71[40];
            v67 = 0;
            v66 = 0;
            sub_10013DD90(&v68, &v61, &qword_1002BC0D0);
            sub_1001379C4(&qword_1002BC0D0);
            sub_1001379C4(&qword_1002BC068);
            sub_10013DB88(&qword_1002BC0C8, &qword_1002BC0D0, &unk_1001C7448, sub_10013DC0C);
            sub_10013DB88(&qword_1002BC070, &qword_1002BC068, &unk_1001C7418, sub_10013D8A8);
            _ConditionalContent<>.init(storage:)();

            sub_10013A05C(&v68, &qword_1002BC0D0);
            v64[2] = v62[1];
            v64[3] = v62[2];
            v65 = v62[3];
            v66 = v63;
            v64[0] = v61;
            v64[1] = v62[0];
LABEL_28:
            v45 = v64[3];
            v46 = v53;
            *(v53 + 2) = v64[2];
            *(v46 + 3) = v45;
            *(v46 + 4) = v65;
            v46[80] = v66;
            v47 = v64[1];
            *v46 = v64[0];
            *(v46 + 1) = v47;
            swift_storeEnumTagMultiPayload();
            sub_10013DD90(v64, &v61, &qword_1002BC0C0);
            sub_1001379C4(&qword_1002BC0C0);
            sub_10013DAA4();
            sub_10013DC90(&qword_1002BC0E8, &qword_1002BC048);
            v48 = v54;
            _ConditionalContent<>.init(storage:)();
            sub_10013DD90(v48, v58, &qword_1002BC060);
            swift_storeEnumTagMultiPayload();
            sub_1001379C4(&qword_1002BC0A8);
            sub_10013D9EC();
            sub_10013DCD8();
            _ConditionalContent<>.init(storage:)();
            sub_10013A05C(v64, &qword_1002BC0C0);
            v38 = v48;
            v39 = &qword_1002BC060;
            return sub_10013A05C(v38, v39);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    result = PSBlankIconImage();
    if (result)
    {
      Image.init(uiImage:)();
      (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
      v44 = Image.resizable(capInsets:resizingMode:)();

      (*(v11 + 8))(v13, v10);
      if (qword_1002BD710 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      [qword_1002BE7A0 size];
      [qword_1002BE7A0 size];
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v60[22] = v69[0];
      *&v60[38] = v69[1];
      *&v60[6] = v68;
      *(v62 + 10) = *v60;
      LOBYTE(v75) = 1;
      v67 = 1;
      *&v61 = v44;
      WORD4(v61) = 256;
      *&v62[0] = 0;
      WORD4(v62[0]) = 257;
      *(&v62[1] + 10) = *&v60[16];
      *(&v62[2] + 10) = *&v60[32];
      *(&v62[3] + 1) = *(&v69[1] + 1);
      v63 = 1;
      sub_1001379C4(&qword_1002BC0D0);
      sub_1001379C4(&qword_1002BC068);
      sub_10013DB88(&qword_1002BC0C8, &qword_1002BC0D0, &unk_1001C7448, sub_10013DC0C);
      sub_10013DB88(&qword_1002BC070, &qword_1002BC068, &unk_1001C7418, sub_10013D8A8);
      _ConditionalContent<>.init(storage:)();
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  if (*(v1 + 32) != 2)
  {
    result = PSBlankIconImage();
    if (result)
    {
      Image.init(uiImage:)();
      (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
      v34 = Image.resizable(capInsets:resizingMode:)();

      (*(v11 + 8))(v13, v10);
      if (qword_1002BD710 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      [qword_1002BE7A0 size];
      [qword_1002BE7A0 size];
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v72 = 1;
      *&v71[6] = v75;
      *&v71[22] = v76;
      *&v71[38] = v77;
      *&v68 = v34;
      WORD4(v68) = 256;
      HIWORD(v68) = v74;
      *(&v68 + 10) = v73;
      *&v69[0] = 0;
      WORD4(v69[0]) = 257;
      *(&v69[3] + 1) = *(&v77 + 1);
      *(&v69[2] + 10) = *&v71[32];
      *(&v69[1] + 10) = *&v71[16];
      *(v69 + 10) = *v71;
      v61 = v68;
      v62[0] = v69[0];
      v62[1] = v69[1];
      v62[2] = v69[2];
      v62[3] = v69[3];
      v70 = 1;
      v63 = 1;
      sub_10013DD90(&v68, v64, &qword_1002BC068);
      sub_1001379C4(&qword_1002BC068);
      sub_10013DB88(&qword_1002BC070, &qword_1002BC068, &unk_1001C7418, sub_10013D8A8);
      _ConditionalContent<>.init(storage:)();
      v35 = v64[3];
      v36 = v58;
      *(v58 + 32) = v64[2];
      *(v36 + 48) = v35;
      *(v36 + 64) = v65;
      *(v36 + 80) = v66;
      v37 = v64[1];
      *v36 = v64[0];
      *(v36 + 16) = v37;
      swift_storeEnumTagMultiPayload();
      sub_1001379C4(&qword_1002BC0A8);
      sub_10013D9EC();
      sub_10013DCD8();
      _ConditionalContent<>.init(storage:)();
      v38 = &v68;
      v39 = &qword_1002BC068;
      return sub_10013A05C(v38, v39);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v20 = objc_allocWithZone(ISIcon);
  v21 = String._bridgeToObjectiveC()();
  [v20 initWithType:v21];

  if (qword_1002BD710 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = *v1;
  *&v61 = *v1;
  BYTE8(v61) = *(v1 + 8);
  v23 = BYTE8(v61);
  v24 = qword_1002BE7A0;
  if (v23 == 1)
  {
    v25 = v22;
  }

  else
  {
    sub_10013DD90(&v61, &v68, &qword_1002BC0F8);
    static os_log_type_t.fault.getter();
    v40 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10013A05C(&v61, &qword_1002BC0F8);
    (*(v50 + 8))(v4, v2);
    v25 = *&v68;
  }

  [v24 setScale:v25];
  [v24 setDrawBorder:1];
  AsyncIconImage.init<>(icon:descriptor:)();
  v41 = v51;
  v42 = v55;
  (*(v51 + 16))(v53, v6, v55);
  swift_storeEnumTagMultiPayload();
  sub_1001379C4(&qword_1002BC0C0);
  sub_10013DAA4();
  sub_10013DC90(&qword_1002BC0E8, &qword_1002BC048);
  v43 = v54;
  _ConditionalContent<>.init(storage:)();
  sub_10013DD90(v43, v58, &qword_1002BC060);
  swift_storeEnumTagMultiPayload();
  sub_1001379C4(&qword_1002BC0A8);
  sub_10013D9EC();
  sub_10013DCD8();
  _ConditionalContent<>.init(storage:)();
  sub_10013A05C(v43, &qword_1002BC060);
  return (*(v41 + 8))(v6, v42);
}

uint64_t sub_10013D200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = swift_getKeyPath();
  *a4 = result;
  *(a4 + 8) = 0;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  return result;
}

Swift::Int sub_10013D294()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }

    v2 = 3;
    goto LABEL_7;
  }

  if (v1)
  {
    v2 = 2;
LABEL_7:
    Hasher._combine(_:)(v2);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

void sub_10013D344()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      Hasher._combine(_:)(0);
      return;
    }

    v1 = 3;
  }

  else
  {
    if (!*(v0 + 16))
    {
      Hasher._combine(_:)(1uLL);
      NSObject.hash(into:)();
      return;
    }

    v1 = 2;
  }

  Hasher._combine(_:)(v1);

  String.hash(into:)();
}

Swift::Int sub_10013D3F0()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }

    v2 = 3;
    goto LABEL_7;
  }

  if (v1)
  {
    v2 = 2;
LABEL_7:
    Hasher._combine(_:)(v2);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1uLL);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10013D49C()
{
  if (*(v0 + 16) - 1 > 1)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

void sub_10013D4E8()
{
  v0 = kISImageDescriptorTableUIName;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 imageDescriptorNamed:v2];

  qword_1002BE7A0 = v3;
}

uint64_t sub_10013D554(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      if (!a6)
      {
        sub_10013D85C();
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_18;
    }

    return 0;
  }

  if (a3 != 2)
  {
    return a6 == 3 && !(a5 | a4);
  }

  if (a6 != 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_18:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10013D660()
{
  result = qword_1002BC028;
  if (!qword_1002BC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC028);
  }

  return result;
}

uint64_t sub_10013D6C0(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10013D6DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10013D6F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10013D738(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 sub_10013D790(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10013D7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10013D7EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10013D834(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10013D85C()
{
  result = qword_1002BC040;
  if (!qword_1002BC040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002BC040);
  }

  return result;
}

unint64_t sub_10013D8A8()
{
  result = qword_1002BC078;
  if (!qword_1002BC078)
  {
    sub_10013BA14(&qword_1002BC080);
    sub_10013D934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC078);
  }

  return result;
}

unint64_t sub_10013D934()
{
  result = qword_1002BC088;
  if (!qword_1002BC088)
  {
    sub_10013BA14(&qword_1002BC090);
    sub_10013DC90(&qword_1002BC098, &qword_1002BC0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC088);
  }

  return result;
}

unint64_t sub_10013D9EC()
{
  result = qword_1002BC0B0;
  if (!qword_1002BC0B0)
  {
    sub_10013BA14(&qword_1002BC060);
    sub_10013DAA4();
    sub_10013DC90(&qword_1002BC0E8, &qword_1002BC048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC0B0);
  }

  return result;
}

unint64_t sub_10013DAA4()
{
  result = qword_1002BC0B8;
  if (!qword_1002BC0B8)
  {
    sub_10013BA14(&qword_1002BC0C0);
    sub_10013DB88(&qword_1002BC0C8, &qword_1002BC0D0, &unk_1001C7448, sub_10013DC0C);
    sub_10013DB88(&qword_1002BC070, &qword_1002BC068, &unk_1001C7418, sub_10013D8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC0B8);
  }

  return result;
}

uint64_t sub_10013DB88(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10013BA14(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10013DC0C()
{
  result = qword_1002BC0D8;
  if (!qword_1002BC0D8)
  {
    sub_10013BA14(&qword_1002BC0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC0D8);
  }

  return result;
}

uint64_t sub_10013DC90(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10013BA14(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10013DCD8()
{
  result = qword_1002BC0F0;
  if (!qword_1002BC0F0)
  {
    sub_10013BA14(&qword_1002BC0A8);
    sub_10013DB88(&qword_1002BC070, &qword_1002BC068, &unk_1001C7418, sub_10013D8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC0F0);
  }

  return result;
}

uint64_t sub_10013DD90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001379C4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10013DDF8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ButtonStyleConfiguration.label.getter();
  v6 = 0;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v7 = [objc_opt_self() systemGray5Color];
    v6 = Color.init(uiColor:)();
  }

  v8 = static Alignment.center.getter();
  v10 = v9;
  (*(v3 + 32))(a1, v5, v2);
  result = sub_1001379C4(&qword_1002BC100);
  v12 = (a1 + *(result + 36));
  *v12 = v6;
  v12[1] = v8;
  v12[2] = v10;
  return result;
}

unint64_t sub_10013DF64()
{
  result = qword_1002BC108;
  if (!qword_1002BC108)
  {
    sub_10013BA14(&qword_1002BC100);
    sub_10013DFF0();
    sub_10013E048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC108);
  }

  return result;
}

unint64_t sub_10013DFF0()
{
  result = qword_1002BC110;
  if (!qword_1002BC110)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC110);
  }

  return result;
}

unint64_t sub_10013E048()
{
  result = qword_1002BC118;
  if (!qword_1002BC118)
  {
    sub_10013BA14(&qword_1002BC120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC118);
  }

  return result;
}

id sub_10013E110()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchSuggestionsViewHost();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id HeadphoneNotificationChartFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TheftAndLossModalBuilderHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TheftAndLossModalBuilderHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id TheftAndLossModalBuilderHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TheftAndLossModalBuilderHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013E308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TnLDeviceType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TheftAndLossModalBuilder();
  (*(v9 + 104))(v11, enum case for TnLDeviceType.iPhone_Paired_With_Watch(_:), v8);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  sub_10013E62C(a3);
  v14 = static TheftAndLossModalBuilder.createTnLDisclaimerViewController(deviceClass:confirmActionHandler:cancelActionHandler:)();
  (*(v9 + 8))(v11, v8);

  return v14;
}

uint64_t sub_10013E5FC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_10013E62C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *sub_10013E63C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_10013E6A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___COSHapticsViewController_hapticStateSpecifierIdentifierMap;
  v7 = sub_10013F624(&off_10026D270);
  sub_1001379C4(&qword_1002BC190);
  swift_arrayDestroy();
  *&v3[v6] = v7;
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 proxyVolumeControllerWithAudioCategory:v9];

  if (v10)
  {
    *&v3[OBJC_IVAR___COSHapticsViewController_volumeController] = v10;
    if (a2)
    {
      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    v15.receiver = v3;
    v15.super_class = type metadata accessor for HapticsViewController();
    v12 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", v11, a3);

    v13 = *&v12[OBJC_IVAR___COSHapticsViewController_volumeController];
    v14 = v12;
    [v13 setDelegate:v14];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10013E9BC(char a1)
{
  v2 = v1;
  v4 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v4 - 8);
  v40 = &v34 - v5;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  v37 = v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = type metadata accessor for HapticsViewController();
  v36 = v2;
  v41.receiver = v2;
  v41.super_class = v19;
  objc_msgSendSuper2(&v41, "viewWillAppear:", a1 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v7 + 104);
  v21(v9, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  v35 = v18;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = v6;
  v23 = v37;
  v21(v9, v20, v22);
  v24 = v38;
  v25 = v16;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  sub_1001379C4(&unk_1002BC1B0);
  v26 = v40;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1001C70B0;
  (*(v23 + 16))(v28 + v27, v25, v24);
  URL.init(string:)();
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v26, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for WatchSettingsNavigationDonation();
    v32 = v35;
    static WatchSettingsNavigationDonation.emitNavigationEventForSystemSetting(iconSpecifierIdentifier:title:localizedNavigationComponents:deepLink:)();

    (*(v30 + 8))(v26, v29);
    [*&v36[OBJC_IVAR___COSHapticsViewController_volumeController] beginObservingHaptics];
    v33 = *(v23 + 8);
    v33(v25, v24);
    return (v33)(v32, v24);
  }

  return result;
}

void sub_10013EF9C(uint64_t a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HapticsViewController();
  objc_msgSendSuper2(&v12, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v4 = *&v1[OBJC_IVAR___COSHapticsViewController_volumeController];
  v5 = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [v1 specifierAtIndexPath:v5];

  if (v6)
  {
    v7 = [v6 propertyForKey:PSValueKey];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10013F75C(&v10, &v11);
      sub_10013F76C();
      swift_dynamicCast();
      v8 = [v9 integerValue];

      [v4 setHapticState:v8];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10013F234()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___COSHapticsViewController_hapticStateSpecifierIdentifierMap];
  v3 = [*&v1[OBJC_IVAR___COSHapticsViewController_volumeController] hapticState];
  if (*(v2 + 16))
  {
    sub_10013F54C(v3);
    if (v4)
    {

      v5 = String._bridgeToObjectiveC()();
      v9 = [v1 specifierForID:v5];

      if (v9)
      {
        v6 = String._bridgeToObjectiveC()();

        v8 = [v1 specifierForID:v6];

        if (v8)
        {
          [v9 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
          [v1 reloadSpecifier:v9];

          v7 = v8;
        }

        else
        {
          v7 = v9;
        }
      }

      else
      {
      }
    }
  }
}

id sub_10013F3E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HapticsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_10013F464()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10013F4D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_10013F530@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_10013F54C(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_10013F5B8(a1, v2);
}

unint64_t sub_10013F5B8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_10013F624(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1001379C4(&unk_1002BC260);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_10013F54C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_10013F54C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_10013F75C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10013F76C()
{
  result = qword_1002BC010;
  if (!qword_1002BC010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002BC010);
  }

  return result;
}

void type metadata accessor for NACHapticState()
{
  if (!qword_1002BC248)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1002BC248);
    }
  }
}

unint64_t sub_10013F80C()
{
  result = qword_1002BC250;
  if (!qword_1002BC250)
  {
    type metadata accessor for NACHapticState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC250);
  }

  return result;
}

uint64_t sub_10013F864(uint64_t a1)
{
  v2 = sub_1001379C4(&unk_1002BC460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10013F8CC()
{
  result = [objc_allocWithZone(type metadata accessor for HeadphoneAudioNotificationModel()) init];
  static HeadphoneAudioNotificationModel.shared = result;
  return result;
}

uint64_t *HeadphoneAudioNotificationModel.shared.unsafeMutableAddressor()
{
  if (qword_1002BDB20 != -1)
  {
    swift_once();
  }

  return &static HeadphoneAudioNotificationModel.shared;
}

id static HeadphoneAudioNotificationModel.shared.getter()
{
  if (qword_1002BDB20 != -1)
  {
    swift_once();
  }

  v1 = static HeadphoneAudioNotificationModel.shared;

  return v1;
}

uint64_t sub_10013FA58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

Swift::Void __swiftcall HeadphoneAudioNotificationModel.setData(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_1001379C4(&qword_1002BC2D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - v4;
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v64 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.FormatStyle();
  v10 = *(v9 - 8);
  v61 = v9;
  v62 = v10;
  v11 = __chkstk_darwin(v9);
  v60 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v44 - v13;
  v14 = sub_1001379C4(&qword_1002BC2E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = type metadata accessor for Date();
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1._rawValue + 2);
  if (v21)
  {
    v57 = v8;
    v58 = v5;
    v54 = v6;
    v55 = v3;
    v56 = v2;
    v22 = a1._rawValue + 32;
    v23 = (v18 + 56);
    v24 = (v18 + 48);
    v25 = (v18 + 32);
    v26 = (v18 + 8);
    ++v62;
    v52 = (v18 + 16);
    v53 = (v64 + 1);
    v64 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v27 = *v22;
      if (!*(*v22 + 16))
      {
        goto LABEL_4;
      }

      v28 = sub_100140B78(1702125924, 0xE400000000000000);
      if ((v29 & 1) == 0)
      {
        break;
      }

      sub_100140CA4(*(v27 + 56) + 32 * v28, &v67);
      v30 = swift_dynamicCast();
      (*v23)(v16, v30 ^ 1u, 1, v17);
      if ((*v24)(v16, 1, v17) == 1)
      {

        goto LABEL_5;
      }

      (*v25)(v20, v16, v17);
      if (!*(v27 + 16))
      {
        goto LABEL_22;
      }

      v31 = sub_100140B78(0x746E756F63, 0xE500000000000000);
      if ((v32 & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_100140CA4(*(v27 + 56) + 32 * v31, &v67);
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*v26)(v20, v17);

        goto LABEL_6;
      }

      if (*(v27 + 16) && (v51 = v65, v33 = sub_100140B78(1668506980, 0xE400000000000000), (v34 & 1) != 0))
      {
        sub_100140CA4(*(v27 + 56) + 32 * v33, &v67);

        if (swift_dynamicCast())
        {
          v50 = v65;
          v49 = v66;
          static FormatStyle<>.dateTime.getter();
          static Date.FormatStyle.Symbol.Month.wide.getter();
          Date.FormatStyle.month(_:)();
          (*v53)(v57, v54);
          v48 = *v62;
          v48(v60, v61);
          sub_100140D00(&qword_1002BC2F0, &type metadata accessor for Date.FormatStyle);
          Date.formatted<A>(_:)();
          v48(v59, v61);
          v48 = v68;
          v65 = v67;
          v66 = v68;

          v35._countAndFlagsBits = 58;
          v35._object = 0xE100000000000000;
          String.append(_:)(v35);

          v48 = v65;
          v47 = v66;
          v46 = v56[12];
          v36 = v58;
          v45 = &v58[v56[16]];
          v44 = &v58[v56[20]];
          (*v52)(v58, v20, v17);
          *(v36 + v46) = v51;
          v37 = v45;
          v38 = v47;
          *v45 = v48;
          *(v37 + 1) = v38;
          v39 = v44;
          v40 = v49;
          *v44 = v50;
          *(v39 + 1) = v40;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_100140D48(0, v64[2] + 1, 1, v64);
          }

          v42 = v64[2];
          v41 = v64[3];
          v51 = (v42 + 1);
          if (v42 >= v41 >> 1)
          {
            v64 = sub_100140D48(v41 > 1, v42 + 1, 1, v64);
          }

          (*v26)(v20, v17);
          v43 = v64;
          v64[2] = v51;
          sub_100140F38(v58, v43 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v42);
          goto LABEL_6;
        }
      }

      else
      {
LABEL_22:
      }

      (*v26)(v20, v17);
LABEL_6:
      v22 += 8;
      if (!--v21)
      {
        goto LABEL_26;
      }
    }

LABEL_4:
    (*v23)(v16, 1, 1, v17);
LABEL_5:
    sub_100140BF0(v16);
    goto LABEL_6;
  }

  v64 = &_swiftEmptyArrayStorage;
LABEL_26:
  (*((swift_isaMask & *v63) + 0x68))(v64);
  type metadata accessor for HeadphoneAudioNotificationModel();
  sub_100140D00(&qword_1002BC2E8, type metadata accessor for HeadphoneAudioNotificationModel);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_1001403C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100140438@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_100140494(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x68);

  return v2(v3);
}

void (*sub_1001404F8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10014059C;
}

void sub_10014059C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_100140604()
{
  swift_beginAccess();
  sub_1001379C4(&qword_1002BC2F8);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100140678(uint64_t a1)
{
  v2 = sub_1001379C4(&qword_1002BC300);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1001379C4(&qword_1002BC2F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1001407B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1001379C4(&qword_1002BC300);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC6Bridge31HeadphoneAudioNotificationModel__data;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1001379C4(&qword_1002BC2F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100140920;
}

void sub_100140920(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id HeadphoneAudioNotificationModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneAudioNotificationModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100140B38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HeadphoneAudioNotificationModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100140B78(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1001410B4(a1, a2, v4);
}

uint64_t sub_100140BF0(uint64_t a1)
{
  v2 = sub_1001379C4(&qword_1002BC2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HeadphoneAudioNotificationModel()
{
  result = qword_1002BDBC0;
  if (!qword_1002BDBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100140CA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100140D00(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_100140D48(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001379C4(&qword_1002BC340);
  v10 = *(sub_1001379C4(&qword_1002BC2D8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1001379C4(&qword_1002BC2D8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100140F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001379C4(&qword_1002BC2D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100140FBC()
{
  sub_10014104C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10014104C()
{
  if (!qword_1002BC330)
  {
    sub_10013BA14(&qword_1002BC2D0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1002BC330);
    }
  }
}

unint64_t sub_1001410B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1001411A0(void *a1)
{
  sub_100142DD4(a1);
}

void sub_1001411D8()
{
  v1 = [v0 layer];
  [v1 setMask:*&v0[OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer]];

  v2 = [v0 layer];
  v3 = [v0 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 CGColor];

    [v2 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1001412C0(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = (*((swift_isaMask & *v1) + 0x90))();
  return sub_100141338;
}

void sub_100141338(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_100142DD4(v4);

    v3 = v2;
  }

  else
  {
    sub_100142DD4(*a1);
    v3 = v4;
  }
}

void *sub_1001413A4()
{
  v1 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView__spriteImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1001413F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView__spriteImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1001414AC()
{
  v1 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_spriteFrameCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001414F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_spriteFrameCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001415A0()
{
  v1 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_spriteColumnCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001415E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_spriteColumnCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100141694()
{
  v1 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_framesPerSecond;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001416D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_framesPerSecond;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_100141788()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 animationForKey:v2];

  if (v3)
  {
  }

  return v3 != 0;
}

id sub_100141808(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

char *sub_10014186C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer;
  *&v4[v9] = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView__spriteImage] = 0;
  *&v4[OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_spriteFrameCount] = 0;
  *&v4[OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_spriteColumnCount] = 0;
  *&v4[OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_framesPerSecond] = 60;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ControlCenterAnimatingSpriteImageView();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer;
  v12 = *&v10[OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer];
  v13 = v10;
  [v12 setAnchorPoint:{0.0, 0.0}];
  [v13 setClipsToBounds:1];
  v14 = [v13 layer];
  [v14 addSublayer:*&v10[v11]];

  return v13;
}

void sub_100141B18()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ControlCenterAnimatingSpriteImageView();
  v1 = objc_msgSendSuper2(&v9, "layoutSubviews");
  v2 = (*((swift_isaMask & *v0) + 0x78))(v1);
  if (v2)
  {
    v3 = v2;
    [v2 size];
    v5 = v4;
    v7 = v6;
    v8 = objc_opt_self();
    [v8 begin];
    [v8 setDisableActions:1];
    [*(v0 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer) setFrame:{0.0, 0.0, v5, v7}];
    [v8 commit];
  }
}

void sub_100141CC0()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x78))();
  if (!v2)
  {
    return;
  }

  [v0 frame];
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = 0.0;
  v32.size.height = 0.0;
  if (CGRectEqualToRect(v31, v32))
  {
    return;
  }

  v3 = sub_100142048();
  v4 = (*((swift_isaMask & *v0) + 0xF0))();
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer);
    v6 = [*(v1 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer) presentationLayer];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 position];
    v9 = v8;
    v11 = v10;

    v12 = *(v3 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = (v3 + 40);
      while (*(v14 - 1) != v9 || *v14 != v11)
      {
        ++v13;
        v14 += 2;
        if (v12 == v13)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v13 = 0;
    }

    v16 = String._bridgeToObjectiveC()();
    [v5 removeAnimationForKey:v16];

    if (v13 != v12 - 1)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
      }

      else if (v12 >= v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          v18 = *(v3 + 16);
          if (v18 >= v17 && v18 >= v12)
          {

            if (v18 == v12 - v17)
            {

LABEL_22:
              v20 = v3;
              if (v18 != v17)
              {
                v25 = v19;
                sub_1001429A0(v3, v3 + 32, 0, (2 * v17) | 1);
                v27 = v26;

                v20 = v27;
                v19 = v25;
              }

              v29 = v19;
              sub_1001427B0(v20);

              v3 = v29;
              goto LABEL_25;
            }

LABEL_32:
            sub_1001429A0(v3, v3 + 32, v17, (2 * v12) | 1);
            v18 = *(v3 + 16);
            goto LABEL_22;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_30;
    }
  }

LABEL_25:
  v21 = (*((swift_isaMask & *v1) + 0xA8))(v4);
  v22 = (*((swift_isaMask & *v1) + 0xD8))();
  v23 = sub_100142CC4(v3, v21 / v22, 3.4028e38);

  v24 = *(v1 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer);
  v28 = String._bridgeToObjectiveC()();
  [v24 addAnimation:v23 forKey:v28];
}

int64_t sub_100142048()
{
  sub_100141804();
  v12 = v2;
  v13 = v1;
  v3 = (*((swift_isaMask & *v0) + 0xC0))();
  result = (*((swift_isaMask & *v0) + 0xA8))();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  result = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return result;
  }

  result = sub_100142A70(0, v5, 0);
  if (!v3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = 0;
  result = &_swiftEmptyArrayStorage;
  v7.f64[0] = v13;
  v7.f64[1] = v12;
  v8 = vnegq_f64(v7);
  do
  {
    v15 = result;
    v10 = *(result + 16);
    v9 = *(result + 24);
    if (v10 >= v9 >> 1)
    {
      v14 = v8;
      sub_100142A70((v9 > 1), v10 + 1, 1);
      v8 = v14;
      result = v15;
    }

    v11.f64[0] = (v6 % v3);
    v11.f64[1] = (v6 / v3);
    ++v6;
    *(result + 16) = v10 + 1;
    *(result + 16 * v10 + 32) = vmulq_f64(v11, v8);
  }

  while (v5 != v6);
  return result;
}

void sub_1001421A4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer);
  if (a1)
  {
    v3 = [*(v1 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer) presentationLayer];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 position];
    v6 = v5;
    v8 = v7;

    v9 = sub_100142048();
    v10 = v9;
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = (v9 + 40);
      while (*(v13 - 1) != v6 || *v13 != v8)
      {
        ++v12;
        v13 += 2;
        if (v11 == v12)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v12 = 0;
    }

    v15 = String._bridgeToObjectiveC()();
    [v2 removeAnimationForKey:v15];

    if (v12 == v11 - 1)
    {

      return;
    }

    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else if (v11 >= v16)
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = *(v10 + 16);
        if (v17 >= v16 && v17 >= v11)
        {
          if (v17 == v11 - v16)
          {
LABEL_22:
            v18 = v17;
            v19 = (*((swift_isaMask & *v1) + 0xD8))();
            v20 = sub_100142CC4(v10, v18 / v19, 0.0);

            v23 = String._bridgeToObjectiveC()();
            [v2 addAnimation:v20 forKey:v23];

            goto LABEL_23;
          }

LABEL_30:
          sub_1001429A0(v10, v10 + 32, v16, (2 * v11) | 1);
          v22 = v21;

          v17 = *(v22 + 16);
          v10 = v22;
          goto LABEL_22;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  v23 = String._bridgeToObjectiveC()();
  [v2 removeAnimationForKey:v23];
LABEL_23:
}

void sub_100142428()
{
  if ((*((swift_isaMask & *v0) + 0xF0))())
  {
    v1 = *(v0 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer);
    v12 = String._bridgeToObjectiveC()();
    [v1 removeAnimationForKey:v12];
  }

  else
  {
    v2 = sub_100142048();
    v3 = (*((swift_isaMask & *v0) + 0xA8))();
    v4 = (*((swift_isaMask & *v0) + 0xD8))();
    v12 = sub_100142CC4(v2, v3 / v4, 1.0);
    v5 = *(v0 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer);
    v6 = String._bridgeToObjectiveC()();
    [v5 addAnimation:v12 forKey:v6];

    v7 = objc_opt_self();
    [v7 begin];
    [v7 setDisableActions:1];
    v8 = *(v2 + 16);
    if (v8)
    {
      v9 = (v2 + 16 + 16 * v8);
      v10 = *v9;
      v11 = v9[1];
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
    }

    [v5 setPosition:{v10, v11}];
    [v7 commit];
  }
}

id sub_100142630()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlCenterAnimatingSpriteImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t *sub_1001426B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_100142A90(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 32;
    type metadata accessor for CGPoint(0);
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100142A90((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10013F75C(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1001427B0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10014289C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10014289C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001379C4(&qword_1002BC398);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1001429A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = &_swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      sub_1001379C4(&qword_1002BC398);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_100142A70(char *a1, int64_t a2, char a3)
{
  result = sub_100142AB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100142A90(char *a1, int64_t a2, char a3)
{
  result = sub_100142BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100142AB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001379C4(&qword_1002BC398);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100142BB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001379C4(&unk_1002BC180);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_100142CC4(uint64_t a1, double a2, float a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() animationWithKeyPath:v6];

  sub_1001426B0(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setValues:isa];

  [v7 setCalculationMode:kCAAnimationDiscrete];
  v9 = v7;
  [v9 setDuration:a2];
  *&v10 = a3;
  [v9 setRepeatCount:v10];

  return v9;
}

id sub_100142DD4(void *a1)
{
  (*((swift_isaMask & *v1) + 0x108))(0);
  if (a1)
  {
    v3 = a1;
    result = [v1 tintColor];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = [v3 imageWithTintColor:result renderingMode:2];
  }

  else
  {
    v6 = 0;
  }

  v7 = (*((swift_isaMask & *v1) + 0x98))(v6);
  v8 = *(v1 + OBJC_IVAR____TtC6Bridge37ControlCenterAnimatingSpriteImageView_imageLayer);
  v9 = (*((swift_isaMask & *v1) + 0x90))(v7);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 CGImage];

    if (v11)
    {
      v12 = v11;
      type metadata accessor for CGImage(0);
      v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    }
  }

  else
  {
    v11 = 0;
  }

  [v8 setContents:v11];
  swift_unknownObjectRelease();
  sub_1001411D8();
  return [v1 setNeedsLayout];
}

void sub_100142FC0()
{
  v1 = (*((swift_isaMask & *v0) + 0x78))();
  if (v1)
  {
    v2 = v1;
    v3 = (*((swift_isaMask & *v0) + 0xA8))();
    v4 = *((swift_isaMask & *v0) + 0xC0);
    v5 = v4();
    if (v5)
    {
      if (v3 == 0x8000000000000000 && v5 == -1)
      {
        goto LABEL_12;
      }

      if (!__OFADD__(v3 / v5, v3 % v5 != 0))
      {
        (v4)([v2 size]);
        [v2 size];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

void sub_100143140(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_100143190()
{
  v1 = OBJC_IVAR___COSSearchContainerViewController_currentChildController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1001431DC(uint64_t a1)
{
  v3 = OBJC_IVAR___COSSearchContainerViewController_currentChildController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_100143294(void *a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    sub_1001435A8();
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return;
    }
  }

  v9 = v4();
  if (v9)
  {
    v10 = v9;
    [v9 willMoveToParentViewController:0];
  }

  v11 = v4();
  if (v11)
  {
    v12 = v11;
    v13 = [v11 view];

    if (!v13)
    {
LABEL_21:
      __break(1u);
      return;
    }

    [v13 removeFromSuperview];
  }

  v14 = v4();
  if (v14)
  {
    v15 = v14;
    [v14 didMoveToParentViewController:0];
  }

  v16 = v4();
  [v16 removeFromParentViewController];

  [a1 willMoveToParentViewController:v2];
  [v2 addChildViewController:a1];
  v17 = [a1 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = v17;
  v19 = [v2 view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v18 setFrame:{v22, v24, v26, v28}];
  v29 = [v2 view];
  if (!v29)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = v29;
  v31 = [a1 view];
  if (!v31)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32 = v31;
  [v30 addSubview:v31];

  [a1 didMoveToParentViewController:v2];
  v34 = *((swift_isaMask & *v2) + 0x60);
  v33 = a1;

  v34(a1);
}

unint64_t sub_1001435A8()
{
  result = qword_1002BC3B8;
  if (!qword_1002BC3B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002BC3B8);
  }

  return result;
}

void sub_100143698(SEL *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x58))();
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      [v5 *a1];
    }
  }
}

void sub_100143730(void *a1, uint64_t a2, SEL *a3)
{
  v4 = *((swift_isaMask & *a1) + 0x58);
  v8 = a1;
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      [v7 *a3];
    }

    else
    {
    }
  }

  else
  {
  }
}

id sub_100143970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001439B4()
{
  v1 = v0;
  v2 = sub_1001379C4(&qword_1002BC450);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - v3;
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001379C4(&qword_1002BC458);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - v11;
  v13 = type metadata accessor for ToneViewController();
  v63.receiver = v0;
  v63.super_class = v13;
  objc_msgSendSuper2(&v63, "viewDidLoad");
  v14 = [v0 specifier];
  if (!v14)
  {
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  v58 = v6;
  v59 = v5;
  v16 = [v14 name];

  [v1 setTitle:v16];
  v17 = [v1 specifier];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 propertyForKey:v19];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v62[0] = v60;
  v62[1] = v61;
  v56 = v10;
  v57 = v9;
  if (*(&v61 + 1))
  {
    if (swift_dynamicCast())
    {
      v21 = String._bridgeToObjectiveC()();

      goto LABEL_11;
    }
  }

  else
  {
    sub_10013A05C(v62, &unk_1002BC460);
  }

  v21 = 0;
LABEL_11:
  v22 = TLAlertTypeFromString();

  v23 = [objc_allocWithZone(TKTonePickerViewController) initWithAlertType:v22 tableViewStyle:2];
  [v23 setTargetDevice:1];
  [v23 setShowsToneStore:0];
  [v23 setShowsNone:v22 != 1];
  v55 = objc_opt_self();
  v24 = [v55 sharedToneManager];
  if (!v24)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v25 = v24;
  v26 = [v24 defaultWatchToneIdentifierForAlertType:v22];

  [v23 setDefaultToneIdentifier:v26];
  v27 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_1001444E0();
  v28 = static OS_dispatch_queue.main.getter();
  *&v62[0] = v28;
  v29 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v29 - 8) + 56))(v4, 1, 1, v29);
  sub_10014452C(&qword_1002BC470, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_10014452C(&qword_1002BC478, sub_1001444E0);
  v30 = v59;
  Publisher.receive<A>(on:options:)();
  sub_10013A05C(v4, &qword_1002BC450);

  (*(v58 + 8))(v8, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v23;
  *(v31 + 24) = v22;
  sub_10013DC90(&qword_1002BC480, &qword_1002BC458);
  v32 = v23;
  v33 = v57;
  Publisher<>.sink(receiveValue:)();

  (*(v56 + 8))(v12, v33);
  swift_beginAccess();
  sub_1001379C4(&qword_1002BC490);
  sub_10013DC90(&qword_1002BC498, &qword_1002BC490);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v34 = [v55 sharedToneManager];
  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v34;
  v36 = [v34 currentWatchToneIdentifierForAlertType:v22];

  [v32 setSelectedToneIdentifier:v36];
  [v32 setDelegate:v1];
  v37 = v32;
  [v1 addChildViewController:v37];
  v38 = [v37 view];
  if (!v38)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v38;
  [v38 setAutoresizingMask:18];

  v40 = [v37 view];
  if (!v40)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v41 = [v1 view];
  if (!v41)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v42 = v41;
  [v41 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  [v40 setFrame:{v44, v46, v48, v50}];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v52 = v51;
  v53 = [v37 view];

  if (v53)
  {
    [v52 addSubview:v53];

    [v37 didMoveToParentViewController:v1];
    return;
  }

LABEL_27:
  __break(1u);
}

id sub_100144478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ToneViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001444E0()
{
  result = qword_1002BBFE8;
  if (!qword_1002BBFE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002BBFE8);
  }

  return result;
}

uint64_t sub_10014452C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100144574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() sharedToneManager];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 currentWatchToneIdentifierForAlertType:v2];

    [v1 setSelectedToneIdentifier:v5];
  }

  else
  {
    __break(1u);
  }
}

id sub_100144618()
{
  v1 = v0;
  v2 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v2 - 8);
  v43 = &v38 - v3;
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v38 - v13;
  v14 = type metadata accessor for ToneViewController();
  v49.receiver = v1;
  v49.super_class = v14;
  objc_msgSendSuper2(&v49, "viewWillAppear:", 1);
  result = [v1 specifier];
  if (!result)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = result;
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 propertyForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48[0] = v46;
  v48[1] = v47;
  if (*(&v47 + 1))
  {
    if (swift_dynamicCast())
    {
      v19 = v45;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_10013A05C(v48, &unk_1002BC460);
    v19 = 0;
  }

  result = [v1 specifier];
  if (!result)
  {
    goto LABEL_18;
  }

  v20 = result;
  v21 = [result identifier];

  if (!v21)
  {
  }

  v22 = v12;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (!v19 || !v25)
  {
  }

  String.LocalizationValue.init(_:)();
  static Locale.current.getter();
  v26 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v39 = v23;
  v27 = *(v40 + 13);
  v27(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27(v6, v26, v4);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1001379C4(&unk_1002BC1B0);
  v28 = v41;
  v29 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1001C70B0;
  v31 = v42;
  (*(v28 + 16))(v30 + v29, v22, v42);
  *&v48[0] = 0;
  *(&v48[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  *&v48[0] = 0xD00000000000001BLL;
  *(&v48[0] + 1) = 0x8000000100242C50;
  v32._countAndFlagsBits = v39;
  v32._object = v25;
  String.append(_:)(v32);
  v40 = v22;
  v33 = v43;
  URL.init(string:)();

  v34 = type metadata accessor for URL();
  v35 = *(v34 - 8);
  result = (*(v35 + 48))(v33, 1, v34);
  if (result != 1)
  {

    type metadata accessor for WatchSettingsNavigationDonation();
    v36 = v44;
    static WatchSettingsNavigationDonation.emitNavigationEventForSystemSetting(iconSpecifierIdentifier:title:localizedNavigationComponents:deepLink:)();

    v37 = *(v28 + 8);
    v37(v40, v31);
    v37(v36, v31);
    return (*(v35 + 8))(v33, v34);
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_100144C80(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedToneManager];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (!a3)
  {
    v7 = 0;
    if (a1)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v7 = String._bridgeToObjectiveC()();
  if (!a1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

LABEL_4:
  [v6 setCurrentWatchToneIdentifier:v7 forAlertType:{objc_msgSend(a1, "alertType")}];
}

void type metadata accessor for TLAlertType()
{
  if (!qword_1002BC528)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1002BC528);
    }
  }
}

unint64_t sub_100144D98()
{
  result = qword_1002BC540;
  if (!qword_1002BC540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC540);
  }

  return result;
}

id sub_100144F0C(unint64_t *a1)
{
  result = [v1 buddyControllers];
  if (result)
  {
    v4 = result;
    v5 = [result lastObject];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11[0] = v9;
    v11[1] = v10;
    if (*(&v10 + 1))
    {
      sub_10013BBD4(0, a1);
      if (swift_dynamicCast())
      {
        v6 = v8;
LABEL_10:
        v7 = v6 != 0;

        return v7;
      }
    }

    else
    {
      sub_10013A05C(v11, &unk_1002BC460);
    }

    v6 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_10014501C()
{
  result = [v0 areLiveActivitiesAllowed];
  if (result)
  {
    sub_10016233C();
    v2 = [objc_opt_self() defaultCenter];
    [v2 addObserver:v0 selector:"updateActivityAndRegenerateImages" name:PBBridgeMobileAssetsChangedNotification object:0];

    if (qword_1002BDCD0 != -1)
    {
      swift_once();
    }

    sub_1001464B0();
  }

  return result;
}

void sub_10014514C(id a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v62 - v8;
  if ([v2 areLiveActivitiesAllowed])
  {
    v10 = [v2 lastLiveActivityProvider];
    if (!v10 || (v11 = v10, swift_unknownObjectRelease(), v11 != a1))
    {
      v12 = LiveActivitySetupLogger.unsafeMutableAddressor();
      v13 = *(v5 + 16);
      v66 = v12;
      v67 = v5 + 16;
      v65 = v13;
      (v13)(v9);
      swift_unknownObjectRetain();
      v14 = v2;
      v15 = v5;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      swift_unknownObjectRelease();
      v18 = os_log_type_enabled(v16, v17);
      v68 = v14;
      if (v18)
      {
        v19 = swift_slowAlloc();
        v63 = v5;
        v20 = v19;
        *&v74[0] = swift_slowAlloc();
        *v20 = 136315650;
        *(v20 + 4) = sub_10014A094(0xD00000000000001DLL, 0x8000000100242C70, v74);
        *(v20 + 12) = 2080;
        v71[0] = a1;
        swift_unknownObjectRetain();
        v21 = String.init<A>(describing:)();
        v23 = sub_10014A094(v21, v22, v74);
        v64 = v4;
        v24 = v23;

        *(v20 + 14) = v24;
        *(v20 + 22) = 2080;
        v71[0] = [v14 lastLiveActivityProvider];
        sub_1001379C4(&qword_1002BC570);
        v25 = String.init<A>(describing:)();
        v27 = sub_10014A094(v25, v26, v74);

        *(v20 + 24) = v27;
        v4 = v64;
        _os_log_impl(&_mh_execute_header, v16, v17, "%s (provider): %s, lastLiveActivityProvider: %s", v20, 0x20u);
        swift_arrayDestroy();

        v15 = v63;
      }

      else
      {
      }

      v28 = *(v15 + 8);
      v28(v9, v4);
      if (qword_1002BDCD0 != -1)
      {
        swift_once();
      }

      if (!*(qword_1002BDCD8 + 16))
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          [v68 startLiveActivity];
        }
      }

      if (*(qword_1002BDCD8 + 16))
      {
        [v68 setLastLiveActivityProvider:a1];
        v29 = objc_opt_self();
        v30 = [v29 sharedApplication];
        v31 = [v30 applicationState];

        if (!v31)
        {
          v32 = [v68 activePairingDevice];
          if (v32)
          {

            sub_100165F98();
          }
        }

        v70 = a1;
        swift_unknownObjectRetain();
        sub_1001379C4(&qword_1002BC560);
        if (swift_dynamicCast())
        {
          sub_10014A688(v74, v71);
          v33 = v72;
          v34 = v73;
          sub_10014A6A0(v71, v72);
          (*(v34 + 8))(v74, v33, v34);
          v35 = v68;
          if ([v68 areLiveActivitiesAllowed])
          {

            v36 = sub_100144F0C(&qword_1002BC558);
            sub_100147390(v74, v36 & 1);
            sub_100139D30(v74);

            v37 = [v29 sharedApplication];
            v38 = [v37 applicationState];

            if (v38 != 2)
            {
              [v35 endLiveActivityIfNeeded];
            }
          }

          else
          {
            sub_100139D30(v74);
          }

          sub_10014A63C(v71);
        }

        else
        {
          v75 = 0;
          memset(v74, 0, sizeof(v74));
          sub_10013A05C(v74, &qword_1002BC568);
          if (qword_1002BDCE0 != -1)
          {
            swift_once();
          }

          v39 = *(qword_1002BDCE8 + 16);
          v40 = (qword_1002BDCE8 + 32);
          while (v39)
          {
            v41 = *v40++;
            --v39;
            if (v41 == swift_getObjectType())
            {
              return;
            }
          }

          v42 = v69;
          v65(v69, v66, v4);
          swift_unknownObjectRetain();
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            *&v74[0] = v46;
            *v45 = 136315138;
            v71[0] = a1;
            swift_unknownObjectRetain();
            v47 = String.init<A>(describing:)();
            v49 = sub_10014A094(v47, v48, v74);

            *(v45 + 4) = v49;
            _os_log_impl(&_mh_execute_header, v43, v44, "%s does not provide activity updates but a generic update will be done", v45, 0xCu);
            sub_10014A63C(v46);

            v50 = v69;
          }

          else
          {

            v50 = v42;
          }

          v28(v50, v4);
          v51 = objc_opt_self();
          v52 = [v51 mainBundle];
          v76._object = 0xE000000000000000;
          v53._object = 0x80000001002423F0;
          v53._countAndFlagsBits = 0xD00000000000001BLL;
          v54.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v54.value._object = 0xEB00000000656C62;
          v55._countAndFlagsBits = 0;
          v55._object = 0xE000000000000000;
          v76._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v76);

          v56 = String._bridgeToObjectiveC()();

          v57 = [v51 mainBundle];
          v77._object = 0xE000000000000000;
          v58._countAndFlagsBits = 0xD00000000000002BLL;
          v58._object = 0x8000000100242410;
          v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v59.value._object = 0xEB00000000656C62;
          v60._countAndFlagsBits = 0;
          v60._object = 0xE000000000000000;
          v77._countAndFlagsBits = 0;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v58, v59, v57, v60, v77);

          v61 = String._bridgeToObjectiveC()();

          [v68 updateLiveActivityWithTitle:v56 subtitle:v61];
        }
      }
    }
  }
}

void sub_100145A9C(const void *a1)
{
  v2 = v1;
  if ([v1 areLiveActivitiesAllowed])
  {
    if (qword_1002BDCD0 != -1)
    {
      swift_once();
    }

    v4 = sub_100144F0C(&qword_1002BC558);
    sub_100147390(a1, v4 & 1);

    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 applicationState];

    if (v6 != 2)
    {

      [v2 endLiveActivityIfNeeded];
    }
  }
}

uint64_t sub_100145BB8(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = a1;
  v6._object = a2;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_100145C64()
{
  v1 = v0;
  if ([v0 areLiveActivitiesAllowed])
  {

    LiveActivityText.init(title:subtitle:)();
    LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
    sub_1001655E4(v5);
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    v10 = 0x80;
    LiveActivitySetupState.init(textMap:imageMap:metadata:shouldSuppressAlert:)();
    if ([v0 areLiveActivitiesAllowed])
    {
      if (qword_1002BDCD0 != -1)
      {
        swift_once();
      }

      v2 = sub_100144F0C(&qword_1002BC558);
      sub_100147390(v6, v2 & 1);
      sub_100139D30(v6);

      v3 = [objc_opt_self() sharedApplication];
      v4 = [v3 applicationState];

      if (v4 != 2)
      {
        [v1 endLiveActivityIfNeeded];
      }
    }

    else
    {
      sub_100139D30(v6);
    }
  }
}

void sub_100145EB0(uint64_t a1)
{
  v2 = v1;
  v7 = &type metadata for FeatureFlags;
  v8 = sub_100144D98();
  v6[0] = 0;
  v4 = isFeatureEnabled(_:)();
  sub_10014A63C(v6);
  if (v4)
  {
    if (qword_1002BDCD0 != -1)
    {
      swift_once();
    }

    sub_1001494A4(a1);

    v5 = [objc_opt_self() defaultCenter];
    [v5 removeObserver:v2];

    sub_10016233C();
  }
}

uint64_t sub_10014606C(uint64_t a1)
{
  sub_100140CA4(a1, v3);
  result = swift_dynamicCast();
  if (result)
  {
    memcpy(__dst, v2, 0x1AAuLL);
    if (qword_1002BDCD0 != -1)
    {
      swift_once();
    }

    if (!*(qword_1002BDCD8 + 16))
    {

      sub_1001464B0();
    }

    sub_100165F98();

    sub_100147390(__dst, 0);

    return sub_100139D30(__dst);
  }

  return result;
}

void sub_100146158()
{
  if (qword_1002BDCD0 != -1)
  {
    swift_once();
  }

  sub_1001494A4(0);

  sub_10016233C();
}

uint64_t sub_1001461D4()
{
  v1 = sub_100165F8C();
  swift_beginAccess();
  *v1 = 0;
  result = [v0 buddyControllers];
  if (result)
  {
    v3 = result;
    v4 = [result lastObject];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      sub_1001379C4(&qword_1002BC578);
      result = swift_dynamicCast();
      if (result)
      {
        [v0 updateLiveActivityWithBuddyController:v5];
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return sub_10013A05C(v8, &unk_1002BC460);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014634C()
{
  type metadata accessor for LiveActivity(0);
  v0 = swift_allocObject();
  type metadata accessor for LiveActivityProcessAssertion();
  v0[2] = 0;
  v0[3] = 0;
  sub_100153B5C();
  v0[4] = v1;
  v2 = v0 + OBJC_IVAR____TtC6BridgeP33_9C0BFB6E6F5347CD940ADB033E1E86B112LiveActivity_lastUpdateInfo;
  sub_10014A704(v6);
  static Date.distantPast.getter();
  updated = type metadata accessor for LiveActivityUpdateInfo(0);
  v4 = *(updated + 20);
  memcpy(__dst, v6, 0x1AAuLL);
  memcpy(&v2[v4], v6, 0x1AAuLL);
  result = sub_10013A05C(__dst, &qword_1002BC580);
  v2[*(updated + 24)] = 0;
  qword_1002BDCD8 = v0;
  return result;
}

uint64_t sub_100146424()
{
  sub_1001379C4(&qword_1002BC7B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001C7860;
  *(v0 + 32) = sub_10013BBD4(0, &qword_1002BC7C0);
  result = sub_10013BBD4(0, &qword_1002BC7C8);
  *(v0 + 40) = result;
  qword_1002BDCE8 = v0;
  return result;
}

uint64_t sub_1001464B0()
{
  type metadata accessor for Date();
  __chkstk_darwin();
  v1 = type metadata accessor for LiveActivitySetupAttributes();
  __chkstk_darwin();
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23[3] = &type metadata for FeatureFlags;
  v23[4] = sub_100144D98();
  LOBYTE(v23[0]) = 0;
  v4 = isFeatureEnabled(_:)();
  result = sub_10014A63C(v23);
  if ((v4 & 1) != 0 && !*(v0 + 16))
  {
    v6 = *LiveActivityService.shared.unsafeMutableAddressor();

    Date.init()();
    LiveActivitySetupAttributes.init(startTime:)();
    v7 = [objc_opt_self() mainBundle];
    v41._object = 0xE000000000000000;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._object = 0x80000001002423F0;
    v9._countAndFlagsBits = 0xD00000000000001BLL;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v41._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v41);

    LiveActivityText.init(title:subtitle:)();
    LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
    v29 = 0u;
    v28 = 0u;
    v30 = 255;
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    v11 = LiveActivityImageSource.systemAppleWatchSFSymbol.unsafeMutableAddressor();
    v12 = *(v11 + 32);
    v13 = *(v11 + 16);
    v39[0] = *v11;
    v39[1] = v13;
    v40 = v12;
    v36 = 0u;
    v37 = 0u;
    v38 = -1;
    sub_100139D84(v39, v22);
    LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
    v14 = *v11;
    v15 = *(v11 + 16);
    v35 = *(v11 + 32);
    v34[0] = v14;
    v34[1] = v15;
    sub_100139D84(v34, v22);
    LiveActivityImages.init(leadingImageSource:trailingImageSource:)();
    LiveActivityImageMap.init(dynamicIslandCompact:dynamicIslandMinimal:dynamicIslandExpanded:lockScreen:)();
    v26 = 0;
    v25 = 0u;
    v24 = 0u;
    v27 = 0x80;
    LiveActivitySetupState.init(textMap:imageMap:metadata:shouldSuppressAlert:)();
    v16 = *(*v6 + 80);
    v17 = sub_10014ABCC(&unk_1002BC7D0, &type metadata accessor for LiveActivitySetupAttributes);
    v18 = v16(v3, v22, v1, v17);

    memcpy(v23, v22, 0x1AAuLL);
    sub_100139D30(v23);
    sub_10014AC14(v3, &type metadata accessor for LiveActivitySetupAttributes);
    *(v0 + 16) = v18;

    v19 = *(v0 + 16) != 0;
    v20 = *(**(v0 + 32) + 128);

    v20(v19);

    if (*(v0 + 16))
    {
      v21 = sub_100165F8C();
      result = swift_beginAccess();
      *v21 = 0;
    }
  }

  return result;
}

uint64_t sub_1001468A8()
{
  v1 = type metadata accessor for Logger();
  v67 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v64[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ActivityState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v70 = &v64[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = sub_1001379C4(&qword_1002BC770);
  v7 = __chkstk_darwin(v80);
  v76 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v64[-v9];
  v11 = sub_1001379C4(&qword_1002BC778);
  v12 = __chkstk_darwin(v11 - 8);
  v13 = __chkstk_darwin(v12);
  v74 = &v64[-v14];
  v15 = __chkstk_darwin(v13);
  v75 = &v64[-v16];
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v20 = &v64[-v19];
  __chkstk_darwin(v18);
  v22 = &v64[-v21];
  v77 = v0;
  v78 = v23;
  v24 = *(v0 + 16);
  v68 = v3;
  v69 = v1;
  v66 = v25;
  if (v24)
  {

    dispatch thunk of Activity.activityState.getter();

    v26 = *(v5 + 56);
    v26(v22, 0, 1, v4);
  }

  else
  {
    v26 = *(v5 + 56);
    v26(&v64[-v21], 1, 1, v4);
  }

  v27 = v5;
  v71 = *(v5 + 104);
  v71(v20, enum case for ActivityState.ended(_:), v4);
  v73 = v26;
  v26(v20, 0, 1, v4);
  v28 = *(v80 + 48);
  sub_10013DD90(v22, v10, &qword_1002BC778);
  sub_10013DD90(v20, &v10[v28], &qword_1002BC778);
  v79 = v27;
  v29 = *(v27 + 48);
  v30 = v29(v10, 1, v4);
  v72 = v29;
  if (v30 != 1)
  {
    sub_10013DD90(v10, v78, &qword_1002BC778);
    if (v29(&v10[v28], 1, v4) != 1)
    {
      v34 = v70;
      (*(v79 + 32))(v70, &v10[v28], v4);
      sub_10014ABCC(&qword_1002BC788, &type metadata accessor for ActivityState);
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v79 + 8);
      v35(v34, v4);
      sub_10013A05C(v20, &qword_1002BC778);
      sub_10013A05C(v22, &qword_1002BC778);
      v35(v78, v4);
      sub_10013A05C(v10, &qword_1002BC778);
      v31 = v77;
      if (v65)
      {
        goto LABEL_18;
      }

LABEL_10:
      if (*(v31 + 16))
      {

        v32 = v75;
        dispatch thunk of Activity.activityState.getter();

        v33 = 0;
      }

      else
      {
        v33 = 1;
        v32 = v75;
      }

      v10 = v76;
      v36 = v73;
      v73(v32, v33, 1, v4);
      v37 = v74;
      v71(v74, enum case for ActivityState.dismissed(_:), v4);
      v36(v37, 0, 1, v4);
      v38 = *(v80 + 48);
      sub_10013DD90(v32, v10, &qword_1002BC778);
      sub_10013DD90(v37, &v10[v38], &qword_1002BC778);
      v39 = v72;
      if (v72(v10, 1, v4) == 1)
      {
        sub_10013A05C(v37, &qword_1002BC778);
        sub_10013A05C(v32, &qword_1002BC778);
        if (v39(&v10[v38], 1, v4) == 1)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v55 = v66;
        sub_10013DD90(v10, v66, &qword_1002BC778);
        v56 = v39(&v10[v38], 1, v4);
        v57 = v79;
        if (v56 != 1)
        {
          v61 = &v10[v38];
          v62 = v70;
          (*(v79 + 32))(v70, v61, v4);
          sub_10014ABCC(&qword_1002BC788, &type metadata accessor for ActivityState);
          LODWORD(v80) = dispatch thunk of static Equatable.== infix(_:_:)();
          v63 = *(v57 + 8);
          v63(v62, v4);
          sub_10013A05C(v37, &qword_1002BC778);
          sub_10013A05C(v32, &qword_1002BC778);
          v63(v55, v4);
          result = sub_10013A05C(v10, &qword_1002BC778);
          if ((v80 & 1) == 0)
          {
            return result;
          }

          goto LABEL_18;
        }

        sub_10013A05C(v37, &qword_1002BC778);
        sub_10013A05C(v32, &qword_1002BC778);
        (*(v57 + 8))(v55, v4);
      }

      return sub_10013A05C(v10, &qword_1002BC770);
    }

    sub_10013A05C(v20, &qword_1002BC778);
    sub_10013A05C(v22, &qword_1002BC778);
    (*(v79 + 8))(v78, v4);
LABEL_9:
    sub_10013A05C(v10, &qword_1002BC770);
    v31 = v77;
    goto LABEL_10;
  }

  sub_10013A05C(v20, &qword_1002BC778);
  sub_10013A05C(v22, &qword_1002BC778);
  if (v29(&v10[v28], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  v31 = v77;
LABEL_17:
  sub_10013A05C(v10, &qword_1002BC778);
LABEL_18:
  if (*(v31 + 16))
  {

    v40 = LiveActivitySetupLogger.unsafeMutableAddressor();
    v42 = v67;
    v41 = v68;
    v43 = v69;
    (*(v67 + 16))(v68, v40, v69);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *v46 = 136315394;
      v47 = Activity.id.getter();
      v49 = sub_10014A094(v47, v48, &v81);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v50 = v70;
      dispatch thunk of Activity.activityState.getter();
      sub_10014ABCC(&qword_1002BC780, &type metadata accessor for ActivityState);
      v51 = Encodable.stringValue.getter();
      v53 = v52;
      (*(v79 + 8))(v50, v4);
      v54 = sub_10014A094(v51, v53, &v81);
      v31 = v77;

      *(v46 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v44, v45, "Starting a new activity is required. Previous activity: %s,  %s", v46, 0x16u);
      swift_arrayDestroy();

      (*(v42 + 8))(v68, v69);
    }

    else
    {

      (*(v42 + 8))(v41, v43);
    }

    *(v31 + 16) = 0;

    v59 = *(v31 + 16) != 0;
    v60 = *(**(v31 + 32) + 128);

    v60(v59);
  }

  return sub_1001464B0();
}

uint64_t sub_100147390(const void *a1, int a2)
{
  v3 = v2;
  sub_1001379C4(&qword_1002BC790);
  (__chkstk_darwin)();
  v44 = &v40[-v6];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = (__chkstk_darwin)();
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v40[-v12];
  v46[3] = &type metadata for FeatureFlags;
  v14 = sub_100144D98();
  v46[4] = v14;
  LOBYTE(v46[0]) = 0;
  v15 = isFeatureEnabled(_:)();
  sub_10014A63C(v46);
  if ((v15 & 1) != 0 && *(v3 + 16))
  {
    v43 = a2;
    v16 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v8 + 16))(v13, v16, v7);
    sub_10014A9C0(a1, v46);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    sub_100139D30(a1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v19 = 136315138;
      memcpy(v46, a1, 0x1AAuLL);
      sub_10014AB78();
      v41 = v18;
      v20 = Encodable.stringValue.getter();
      v22 = v3;
      v23 = sub_10014A094(v20, v21, &v45);

      *(v19 + 4) = v23;
      v3 = v22;
      _os_log_impl(&_mh_execute_header, v17, v41, "Queueing activity state update: %s", v19, 0xCu);
      sub_10014A63C(v42);

      v24 = v13;
      v25 = a1;
      (*(v8 + 8))(v24, v7);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
      v25 = a1;
    }

    v32 = v44;
    static TaskPriority.userInitiated.getter();
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = v3;
    v35 = *(v3 + 24);
    v36 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();
    sub_10014A9C0(v25, v46);

    v37 = static MainActor.shared.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = &protocol witness table for MainActor;
    *(v38 + 32) = v35;
    *(v38 + 40) = v36;
    memcpy((v38 + 48), v25, 0x1AAuLL);
    *(v38 + 474) = v43 & 1;

    result = sub_1001491F8(0, 0, v32, &unk_1001C79F8, v38);
    v39 = *(v34 + 24);
    *(v34 + 24) = result;
    if (v39)
    {

      sub_1001379C4(&qword_1002BC798);
      Task.cancel()();
    }
  }

  else
  {
    v26 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v8 + 16))(v11, v26, v7);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109376;
      v46[3] = &type metadata for FeatureFlags;
      v46[4] = v14;
      LOBYTE(v46[0]) = 0;
      v30 = isFeatureEnabled(_:)();
      sub_10014A63C(v46);
      *(v29 + 4) = v30 & 1;
      *(v29 + 8) = 1024;
      *(v29 + 10) = *(v3 + 16) == 0;

      _os_log_impl(&_mh_execute_header, v27, v28, "Attempted to update activity but isEnabled: %{BOOL}d,  activityIsNil: %{BOOL}d", v29, 0xEu);
    }

    else
    {
    }

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_10014790C(int a1, int a2, int a3, uint64_t a4, uint64_t a5, void *__src, char a7)
{
  *(v7 + 442) = a7;
  *(v7 + 4880) = __src;
  *(v7 + 4872) = a5;
  *(v7 + 4864) = a4;
  memcpy((v7 + 16), __src, 0x1AAuLL);
  v8 = type metadata accessor for Date();
  *(v7 + 4888) = v8;
  *(v7 + 4896) = *(v8 - 8);
  *(v7 + 4904) = swift_task_alloc();
  sub_1001379C4(&qword_1002BC7A8);
  *(v7 + 4912) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v7 + 4920) = v9;
  *(v7 + 4928) = *(v9 - 8);
  *(v7 + 4936) = swift_task_alloc();
  *(v7 + 4944) = swift_task_alloc();
  *(v7 + 4952) = swift_task_alloc();
  *(v7 + 4960) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 4968) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 4976) = v11;
  *(v7 + 4984) = v10;

  return _swift_task_switch(sub_100147AD8, v11, v10);
}

uint64_t sub_100147AD8()
{
  v81 = v0;
  v1 = v0[608];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[624] = v2;
    v3 = sub_1001379C4(&qword_1002BC798);
    *v2 = v0;
    v2[1] = sub_1001483C0;

    return Task.value.getter(v3, v1, &type metadata for () + 8, v3, &protocol self-conformance witness table for Error);
  }

  v4 = static Task<>.isCancelled.getter();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[625] = Strong;
  if (!Strong)
  {
LABEL_12:
    v36 = v0[617];
    v37 = v0[616];
    v38 = v0[615];
    v39 = v0[610];

    v40 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v37 + 16))(v36, v40, v38);

    sub_10014A9C0(v39, (v0 + 56));

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    sub_100139D30(v39);
    if (!os_log_type_enabled(v41, v42))
    {
      v48 = v0[617];
      v49 = v0[616];
      v50 = v0[615];

      (*(v49 + 8))(v48, v50);
      goto LABEL_20;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v80 = v44;
    *v43 = 67109634;
    *(v43 + 4) = v4 & 1;
    *(v43 + 8) = 1024;
    swift_beginAccess();
    v45 = swift_weakLoadStrong();
    if (v45)
    {
      v46 = *(v45 + 16);

      if (v46)
      {

        v47 = 0;
LABEL_19:
        v51 = v0[617];
        v52 = v0[616];
        v53 = v0[615];
        v54 = v0[610];
        *(v43 + 10) = v47;

        *(v43 + 14) = 2080;
        memcpy(v0 + 110, v54, 0x1AAuLL);
        sub_10014AB78();
        v55 = Encodable.stringValue.getter();
        v57 = sub_10014A094(v55, v56, &v80);

        *(v43 + 16) = v57;
        _os_log_impl(&_mh_execute_header, v41, v42, "Activity state update CANCELED: isTaskCanceled: %{BOOL}d, isActivityNil: %{BOOL}d, state: %s", v43, 0x18u);
        sub_10014A63C(v44);

        (*(v52 + 8))(v51, v53);
        goto LABEL_20;
      }
    }

    else
    {
    }

    v47 = 1;
    goto LABEL_19;
  }

  if ((v4 & 1) != 0 || !*(Strong + 16))
  {

    goto LABEL_12;
  }

  v6 = Strong;
  sub_1001468A8();
  v7 = v6;
  v8 = *(v6 + 16);
  v0[626] = v8;
  if (v8)
  {
    v9 = v0[619];
    v10 = v0[616];
    v11 = v0[615];
    v12 = v0[614];
    v13 = v0[610];

    sub_100149838(v13, v12);
    v14 = type metadata accessor for AlertConfiguration();
    LOBYTE(v12) = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
    v15 = OBJC_IVAR____TtC6BridgeP33_9C0BFB6E6F5347CD940ADB033E1E86B112LiveActivity_lastUpdateInfo;
    v0[627] = OBJC_IVAR____TtC6BridgeP33_9C0BFB6E6F5347CD940ADB033E1E86B112LiveActivity_lastUpdateInfo;
    v16 = v7 + v15;
    swift_beginAccess();
    updated = type metadata accessor for LiveActivityUpdateInfo(0);
    v0[628] = updated;
    *(v16 + *(updated + 24)) = v12;
    memcpy(v0 + 218, v0 + 2, 0x1AAuLL);
    LiveActivityEndStatus.rawValue.getter(v0 + 218);
    v18 = *(updated + 20);
    memcpy(v0 + 164, (v16 + v18), 0x1AAuLL);
    memcpy((v16 + v18), v0 + 218, 0x1AAuLL);
    sub_10014A9C0(v13, (v0 + 272));
    sub_10013A05C((v0 + 164), &qword_1002BC580);
    v19 = LiveActivitySetupLogger.unsafeMutableAddressor();
    v0[629] = v19;
    v20 = *(v10 + 16);
    v0[630] = v20;
    v0[631] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v9, v19, v11);

    sub_10014A9C0(v13, (v0 + 326));
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    sub_100139D30(v13);
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[619];
    v25 = v0[616];
    v26 = v0[615];
    if (v23)
    {
      v27 = v0[610];
      v79 = v0[615];
      v28 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v28 = 136315394;
      v29 = Activity.id.getter();
      v77 = v24;
      v31 = sub_10014A094(v29, v30, &v80);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      memcpy(v0 + 542, v27, 0x1AAuLL);
      sub_10014AB78();
      v32 = Encodable.stringValue.getter();
      v34 = sub_10014A094(v32, v33, &v80);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "Requesting activity: %s, state update with state: %s", v28, 0x16u);
      swift_arrayDestroy();

      v35 = *(v25 + 8);
      v35(v77, v79);
    }

    else
    {

      v35 = *(v25 + 8);
      v35(v24, v26);
    }

    v0[632] = v35;
    v70 = v0[610];
    v71 = LiveActivityService.shared.unsafeMutableAddressor();
    v72 = *v71;
    v0[633] = *v71;
    memcpy(v0 + 380, v70, 0x1AAuLL);
    v73 = *(*v72 + 96);

    v78 = (v73 + *v73);
    v74 = swift_task_alloc();
    v0[634] = v74;
    *v74 = v0;
    v74[1] = sub_100148D20;
    v75 = v0[614];

    return (v78)(v8, v0 + 380, v75);
  }

  v59 = v0[620];
  v60 = v0[616];
  v61 = v0[615];

  v62 = LiveActivitySetupLogger.unsafeMutableAddressor();
  (*(v60 + 16))(v59, v62, v61);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v0[620];
  v67 = v0[616];
  v68 = v0[615];
  if (v65)
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "Received call to update live activity but there is no active live activity and we are unable to create one", v69, 2u);
  }

  else
  {
  }

  (*(v67 + 8))(v66, v68);
LABEL_20:

  v58 = v0[1];

  return v58();
}

uint64_t sub_1001483C0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 4984);
    v4 = *(v2 + 4976);
    v5 = sub_10014AC74;
  }

  else
  {
    v3 = *(v2 + 4984);
    v4 = *(v2 + 4976);
    v5 = sub_1001484EC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001484EC()
{
  v78 = v0;
  v1 = static Task<>.isCancelled.getter();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[625] = Strong;
  if (!Strong)
  {
LABEL_8:
    v33 = v0[617];
    v34 = v0[616];
    v35 = v0[615];
    v36 = v0[610];

    v37 = LiveActivitySetupLogger.unsafeMutableAddressor();
    (*(v34 + 16))(v33, v37, v35);

    sub_10014A9C0(v36, (v0 + 56));

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    sub_100139D30(v36);
    if (!os_log_type_enabled(v38, v39))
    {
      v45 = v0[617];
      v46 = v0[616];
      v47 = v0[615];

      (*(v46 + 8))(v45, v47);
      goto LABEL_16;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v77 = v41;
    *v40 = 67109634;
    *(v40 + 4) = v1 & 1;
    *(v40 + 8) = 1024;
    swift_beginAccess();
    v42 = swift_weakLoadStrong();
    if (v42)
    {
      v43 = *(v42 + 16);

      if (v43)
      {

        v44 = 0;
LABEL_15:
        v48 = v0[617];
        v49 = v0[616];
        v50 = v0[615];
        v51 = v0[610];
        *(v40 + 10) = v44;

        *(v40 + 14) = 2080;
        memcpy(v0 + 110, v51, 0x1AAuLL);
        sub_10014AB78();
        v52 = Encodable.stringValue.getter();
        v54 = sub_10014A094(v52, v53, &v77);

        *(v40 + 16) = v54;
        _os_log_impl(&_mh_execute_header, v38, v39, "Activity state update CANCELED: isTaskCanceled: %{BOOL}d, isActivityNil: %{BOOL}d, state: %s", v40, 0x18u);
        sub_10014A63C(v41);

        (*(v49 + 8))(v48, v50);
        goto LABEL_16;
      }
    }

    else
    {
    }

    v44 = 1;
    goto LABEL_15;
  }

  if ((v1 & 1) != 0 || !*(Strong + 16))
  {

    goto LABEL_8;
  }

  v3 = Strong;
  sub_1001468A8();
  v4 = v3;
  v5 = *(v3 + 16);
  v0[626] = v5;
  if (v5)
  {
    v6 = v0[619];
    v7 = v0[616];
    v8 = v0[615];
    v9 = v0[614];
    v10 = v0[610];

    sub_100149838(v10, v9);
    v11 = type metadata accessor for AlertConfiguration();
    LOBYTE(v9) = (*(*(v11 - 8) + 48))(v9, 1, v11) != 1;
    v12 = OBJC_IVAR____TtC6BridgeP33_9C0BFB6E6F5347CD940ADB033E1E86B112LiveActivity_lastUpdateInfo;
    v0[627] = OBJC_IVAR____TtC6BridgeP33_9C0BFB6E6F5347CD940ADB033E1E86B112LiveActivity_lastUpdateInfo;
    v13 = v4 + v12;
    swift_beginAccess();
    updated = type metadata accessor for LiveActivityUpdateInfo(0);
    v0[628] = updated;
    *(v13 + *(updated + 24)) = v9;
    memcpy(v0 + 218, v0 + 2, 0x1AAuLL);
    LiveActivityEndStatus.rawValue.getter(v0 + 218);
    v15 = *(updated + 20);
    memcpy(v0 + 164, (v13 + v15), 0x1AAuLL);
    memcpy((v13 + v15), v0 + 218, 0x1AAuLL);
    sub_10014A9C0(v10, (v0 + 272));
    sub_10013A05C((v0 + 164), &qword_1002BC580);
    v16 = LiveActivitySetupLogger.unsafeMutableAddressor();
    v0[629] = v16;
    v17 = *(v7 + 16);
    v0[630] = v17;
    v0[631] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v6, v16, v8);

    sub_10014A9C0(v10, (v0 + 326));
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    sub_100139D30(v10);
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[619];
    v22 = v0[616];
    v23 = v0[615];
    if (v20)
    {
      v24 = v0[610];
      v76 = v0[615];
      v25 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = Activity.id.getter();
      v74 = v21;
      v28 = sub_10014A094(v26, v27, &v77);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      memcpy(v0 + 542, v24, 0x1AAuLL);
      sub_10014AB78();
      v29 = Encodable.stringValue.getter();
      v31 = sub_10014A094(v29, v30, &v77);

      *(v25 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "Requesting activity: %s, state update with state: %s", v25, 0x16u);
      swift_arrayDestroy();

      v32 = *(v22 + 8);
      v32(v74, v76);
    }

    else
    {

      v32 = *(v22 + 8);
      v32(v21, v23);
    }

    v0[632] = v32;
    v68 = v0[610];
    v69 = LiveActivityService.shared.unsafeMutableAddressor();
    v70 = *v69;
    v0[633] = *v69;
    memcpy(v0 + 380, v68, 0x1AAuLL);
    v71 = *(*v70 + 96);

    v75 = (v71 + *v71);
    v72 = swift_task_alloc();
    v0[634] = v72;
    *v72 = v0;
    v72[1] = sub_100148D20;
    v73 = v0[614];

    return (v75)(v5, v0 + 380, v73);
  }

  v57 = v0[620];
  v58 = v0[616];
  v59 = v0[615];

  v60 = LiveActivitySetupLogger.unsafeMutableAddressor();
  (*(v58 + 16))(v57, v60, v59);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v0[620];
  v65 = v0[616];
  v66 = v0[615];
  if (v63)
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Received call to update live activity but there is no active live activity and we are unable to create one", v67, 2u);
  }

  else
  {
  }

  (*(v65 + 8))(v64, v66);
LABEL_16:

  v55 = v0[1];

  return v55();
}

uint64_t sub_100148D20()
{
  v1 = *v0;

  v2 = *(v1 + 4984);
  v3 = *(v1 + 4976);

  return _swift_task_switch(sub_100148E64, v3, v2);
}

uint64_t sub_100148E64()
{
  v32 = v0;
  v1 = *(v0 + 5040);
  v2 = *(v0 + 5032);
  v3 = *(v0 + 4944);
  v4 = *(v0 + 4920);
  v5 = *(v0 + 4880);

  v1(v3, v2, v4);

  sub_10014A9C0(v5, v0 + 3472);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  sub_100139D30(v5);
  if (os_log_type_enabled(v6, v7))
  {
    v29 = *(v0 + 4944);
    v30 = *(v0 + 5056);
    v8 = *(v0 + 4920);
    v9 = *(v0 + 4880);
    v10 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = Activity.id.getter();
    v13 = sub_10014A094(v11, v12, &v31);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    memcpy((v0 + 3904), v9, 0x1AAuLL);
    sub_10014AB78();
    v14 = Encodable.stringValue.getter();
    v16 = sub_10014A094(v14, v15, &v31);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Updated state for activity: %s, state: %s", v10, 0x16u);
    swift_arrayDestroy();

    v30(v29, v8);
  }

  else
  {
    v17 = *(v0 + 5056);
    v18 = *(v0 + 4944);
    v19 = *(v0 + 4920);

    v17(v18, v19);
  }

  v20 = *(v0 + 5024);
  v21 = *(v0 + 5000) + *(v0 + 5016);
  if (*(v21 + *(v20 + 24)) == 1)
  {
    v22 = *(v0 + 4904);
    v23 = *(v0 + 4896);
    v24 = *(v0 + 4888);
    Date.init()();
    swift_beginAccess();
    (*(v23 + 40))(v21, v22, v24);
    *(v21 + *(v20 + 24)) = 0;
    swift_endAccess();
  }

  if (*(v0 + 442) == 1)
  {
    v25 = *(**(*(v0 + 5000) + 32) + 128);

    v25(0);
  }

  v26 = *(v0 + 4912);

  sub_10013A05C(v26, &qword_1002BC7A8);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1001491F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1001379C4(&qword_1002BC790);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_10013DD90(a3, v21 - v8, &qword_1002BC790);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_10013A05C(v9, &qword_1002BC790);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_10013A05C(a3, &qword_1002BC790);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10013A05C(a3, &qword_1002BC790);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1001494A4(uint64_t a1)
{
  v3 = type metadata accessor for ActivityUIDismissalPolicy();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = &type metadata for FeatureFlags;
  v27[4] = sub_100144D98();
  LOBYTE(v27[0]) = 0;
  v7 = isFeatureEnabled(_:)();
  result = sub_10014A63C(v27);
  if (v7)
  {
    v9 = *(v1 + 16);
    if (v9)
    {
      v24 = v4;

      static ActivityUIDismissalPolicy.immediate.getter();
      v25 = v1;
      if (a1 && a1 != 2)
      {
        if (a1 != 1)
        {
          v27[0] = a1;
          result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return result;
        }

        v10 = objc_opt_self();
        v11 = [v10 mainBundle];
        v31._object = 0xE000000000000000;
        v12._object = 0x8000000100242550;
        v12._countAndFlagsBits = 0xD000000000000019;
        v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v13.value._object = 0xEB00000000656C62;
        v14._countAndFlagsBits = 0;
        v14._object = 0xE000000000000000;
        v31._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v31);

        v15 = [v10 mainBundle];
        v32._object = 0xE000000000000000;
        v16._countAndFlagsBits = 0xD00000000000001CLL;
        v16._object = 0x8000000100242570;
        v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v17.value._object = 0xEB00000000656C62;
        v18._countAndFlagsBits = 0;
        v18._object = 0xE000000000000000;
        v32._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v32);
      }

      v19 = *LiveActivityService.shared.unsafeMutableAddressor();

      LiveActivityText.init(title:subtitle:)();
      LiveActivityTextMap.init(dynamicIslandExpanded:lockScreen:)();
      sub_1001655E4(v28);
      v29 = 0;
      memset(&v28[320], 0, 32);
      v30 = 0x80;
      LiveActivitySetupState.init(textMap:imageMap:metadata:shouldSuppressAlert:)();
      (*(*v19 + 88))(v9, v26, v6);

      memcpy(v27, v26, 0x1AAuLL);
      sub_100139D30(v27);
      v20 = v25;
      *(v25 + 16) = 0;

      v21 = *(v20 + 32);
      v22 = *(v20 + 16) != 0;
      v23 = *(*v21 + 128);

      v23(v22);

      return (*(v24 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_100149838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for Logger();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = __chkstk_darwin(v3);
  v63 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v54[-v6];
  v8 = type metadata accessor for AlertConfiguration.AlertSound();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v11 = type metadata accessor for AlertConfiguration();
  v59 = *(v11 - 8);
  v60 = v11;
  __chkstk_darwin(v11);
  v56 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Date();
  v58 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = [objc_opt_self() sharedApplication];
  v62 = [v16 applicationState];

  v57 = *(a1 + 425);
  if (v57 & 1) != 0 || v62 != 2 || (v17 = v64 + OBJC_IVAR____TtC6BridgeP33_9C0BFB6E6F5347CD940ADB033E1E86B112LiveActivity_lastUpdateInfo, swift_beginAccess(), v18 = v7, v19 = v58, (*(v58 + 16))(v15, v17, v13), Date.timeIntervalSinceNow.getter(), v21 = v20, (*(v19 + 8))(v15, v13), v21 > -2.0) || (*(v17 + *(type metadata accessor for LiveActivityUpdateInfo(0) + 24)))
  {
    v22 = LiveActivitySetupLogger.unsafeMutableAddressor();
    v24 = v65;
    v23 = v66;
    v25 = v63;
    (*(v65 + 16))(v63, v22, v66);
    v26 = a1;
    v27 = v64;

    sub_10014A9C0(v26, v68);

    sub_10014A9C0(v26, v68);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v62;
      v62 = v28;
      v31 = v30 == 2;
      v32 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v67 = v56;
      *v32 = 67109890;
      *(v32 + 4) = v31;
      *(v32 + 8) = 2080;
      v55 = v29;
      v33 = v27 + OBJC_IVAR____TtC6BridgeP33_9C0BFB6E6F5347CD940ADB033E1E86B112LiveActivity_lastUpdateInfo;
      swift_beginAccess();
      v34 = v58;
      (*(v58 + 16))(v15, v33, v13);
      sub_10014ABCC(&qword_1002BC768, &type metadata accessor for Date);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v34 + 8))(v15, v13);
      v38 = sub_10014A094(v35, v37, &v67);

      *(v32 + 10) = v38;
      *(v32 + 18) = 1024;
      sub_100139D30(v26);
      *(v32 + 20) = v57 & 1;
      sub_100139D30(v26);
      *(v32 + 24) = 1024;
      LODWORD(v38) = *(v33 + *(type metadata accessor for LiveActivityUpdateInfo(0) + 24));

      *(v32 + 26) = v38;

      v39 = v62;
      _os_log_impl(&_mh_execute_header, v62, v55, "Live Activity will not alert. applicationStateInBackground: %{BOOL}d, lastAlertPostedDate: %s, shouldSuppressAlert: %{BOOL}d isPreviousUpdateBlocking: %{BOOL}d", v32, 0x1Eu);
      sub_10014A63C(v56);

      (*(v65 + 8))(v63, v66);
    }

    else
    {

      sub_100139D30(v26);

      sub_100139D30(v26);

      (*(v24 + 8))(v25, v23);
    }

    v40 = 1;
    v42 = v60;
    v41 = v61;
    v43 = v59;
  }

  else
  {

    LocalizedStringResource.init(stringLiteral:)();

    LocalizedStringResource.init(stringLiteral:)();
    static AlertConfiguration.AlertSound.default.getter();
    v45 = v56;
    AlertConfiguration.init(title:body:sound:)();
    v46 = LiveActivitySetupLogger.unsafeMutableAddressor();
    v48 = v65;
    v47 = v66;
    (*(v65 + 16))(v18, v46, v66);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Live activity will alert when presented", v51, 2u);
    }

    (*(v48 + 8))(v18, v47);
    v43 = v59;
    v52 = v60;
    v53 = v61;
    (*(v59 + 32))(v61, v45, v60);
    v42 = v52;
    v41 = v53;
    v40 = 0;
  }

  return (*(v43 + 56))(v41, v40, 1, v42);
}

uint64_t sub_100149FD8()
{

  sub_10014AC14(v0 + OBJC_IVAR____TtC6BridgeP33_9C0BFB6E6F5347CD940ADB033E1E86B112LiveActivity_lastUpdateInfo, type metadata accessor for LiveActivityUpdateInfo);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

unint64_t LiveActivityEndStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_10014A078@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_10014A094(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10014A160(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100140CA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10014A63C(v11);
  return v7;
}

unint64_t sub_10014A160(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10014A26C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10014A26C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10014A2B8(a1, a2);
  sub_10014A3E8(&off_10026D458);
  return v3;
}

char *sub_10014A2B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10014A4D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10014A4D4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10014A3E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10014A548(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10014A4D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1001379C4(&qword_1002BC7B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10014A548(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001379C4(&qword_1002BC7B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10014A63C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10014A688(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10014A6A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_10014A704(_OWORD *a1)
{
  result = 0.0;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 410) = 0u;
  return result;
}

unint64_t sub_10014A74C()
{
  result = qword_1002BC588;
  if (!qword_1002BC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC588);
  }

  return result;
}

uint64_t sub_10014A7C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014A800()
{
  result = type metadata accessor for LiveActivityUpdateInfo(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10014A8D4()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10014A960();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10014A960()
{
  if (!qword_1002BC730)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002BC730);
    }
  }
}

uint64_t sub_10014AA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 < 2u)
  {
  }

  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_10014AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0x3Fu)
  {
  }

  return result;
}

uint64_t sub_10014AACC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 474);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100139EF8;

  return sub_10014790C(v5, v6, v7, v2, v3, (v0 + 48), v4);
}

unint64_t sub_10014AB78()
{
  result = qword_1002BC7A0;
  if (!qword_1002BC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC7A0);
  }

  return result;
}

uint64_t sub_10014ABCC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10014AC14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10014AC78()
{
  if (UIApp)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      return result;
    }

    result = [result setupController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = [result appleIDSignInModel];

    if (v3)
    {
      if ([v3 benefitsControllerPresented] && (objc_msgSend(v3, "cdpRepairRequiredOnBenefitsController") & 1) != 0)
      {
        v5.receiver = v0;
        v5.super_class = &OBJC_METACLASS___COSCDPPostUpsellRepairController;
        v4 = objc_msgSendSuper2(&v5, "controllerNeedsToRun");

        return v4;
      }
    }
  }

  return 0;
}

id sub_10014ADFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for CDPPostUpsellRepairController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_10014B050()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDPPostUpsellRepairController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10014B174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t type metadata accessor for SearchZeroKeywordListItem()
{
  result = qword_1002BDF40;
  if (!qword_1002BDF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_10014B290@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SearchZeroKeywordListItem();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v33 = v5;
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LocalizedStringResource();
  v6 = *(v31 - 8);
  v7 = __chkstk_darwin(v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for SettingsEventImage();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  SettingsNavigationEventRecord.icon.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (&enum case for SettingsEventImage.graphicIcon(_:) && v16 == enum case for SettingsEventImage.graphicIcon(_:))
  {
    (*(v13 + 96))(v15, v12);
    v17 = v15[1];
    v30 = *v15;
    v18 = 2;
  }

  else if (&enum case for SettingsEventImage.applicationIcon(_:) && v16 == enum case for SettingsEventImage.applicationIcon(_:))
  {
    (*(v13 + 96))(v15, v12);
    v17 = v15[1];
    v30 = *v15;
    v18 = 1;
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    v30 = 0;
    v17 = 0;
    v18 = 3;
  }

  SettingsNavigationEventRecord.title.getter();
  sub_10014B62C(v9, v11);
  (*(v6 + 8))(v9, v31);
  v19 = String.init(localized:)();
  v21 = v20;
  v22 = sub_10014BA80();
  v24 = v23;
  v25 = v34;
  sub_10014BE84(v2, v34);
  v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v27 = swift_allocObject();
  sub_10014BEE8(v25, v27 + v26);
  sub_100167C84(v30, v17, v18, v19, v21, v22, v24, sub_10014BF4C, v35, v27);
  v28 = v35[3];
  *(a1 + 32) = v35[2];
  *(a1 + 48) = v28;
  *(a1 + 64) = v36;
  result = v35[1];
  *a1 = v35[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10014B62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v38 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v35 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v34 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v32 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v9;
  (*(v9 + 16))(a2, a1, v8);
  LocalizedStringResource.bundle.getter();
  if ((*(v12 + 88))(v16, v11) != enum case for LocalizedStringResource.BundleDescription.atURL(_:))
  {
    return (*(v12 + 8))(v16, v11);
  }

  v33 = a2;
  (*(v12 + 96))(v16, v11);
  (*(v18 + 32))(v20, v16, v17);
  v21 = objc_allocWithZone(NSBundle);
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = [v21 initWithURL:v23];

  if (v25)
  {

    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    LocalizedStringResource.key.getter();
    String.LocalizationValue.init(_:)();
    v27 = LocalizedStringResource.table.getter();
    v32[1] = v28;
    v32[2] = v27;
    static Locale.current.getter();
    (*(v12 + 104))(v34, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
    v29 = v36;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    (*(v18 + 8))(v20, v17);
    v30 = v37;
    v31 = v33;
    (*(v37 + 8))(v33, v8);
    return (*(v30 + 32))(v31, v29, v8);
  }
}

uint64_t sub_10014BA80()
{
  v1 = type metadata accessor for LayoutDirection();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SettingsNavigationEventRecord();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SearchZeroKeywordListItem();
  (*(v6 + 16))(v8, v0 + *(v9 + 28), v5);
  v10 = SettingsNavigationEventRecord.localizedNavigationComponents.getter();
  v17 = v0;
  sub_10014BFAC(sub_10014C688, v16, v10);

  SettingsNavigationEventRecord.localizedNavigationComponents.setter();
  sub_10014C488(&qword_1002BC870, &type metadata accessor for LayoutDirection, v4);
  v11 = SettingsNavigationEventRecord.resolveLocalizedPathComponents(layoutDirection:)();
  v13 = v12;
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    return 0;
  }

  return v11;
}

uint64_t sub_10014BCD8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OpenURLAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10014C488(&qword_1002BC868, &type metadata accessor for OpenURLAction, v7);
  type metadata accessor for SearchZeroKeywordListItem();
  SettingsNavigationEventRecord.navigationLink.getter();
  OpenURLAction.callAsFunction(_:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10014BE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchZeroKeywordListItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014BEE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchZeroKeywordListItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014BF4C()
{
  type metadata accessor for SearchZeroKeywordListItem();

  return sub_10014BCD8();
}

uint64_t sub_10014BFAC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for LocalizedStringResource();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v22 = &_swiftEmptyArrayStorage;
  sub_10014C6B0(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_10014C6B0(v13 > 1, v14 + 1, 1);
      v10 = v22;
    }

    v10[2] = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10014C168@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1001379C4(&qword_1002BC868);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SearchZeroKeywordListItem();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_1001379C4(&qword_1002BC870);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  sub_1001379C4(&qword_1002BC878);
  swift_storeEnumTagMultiPayload();
  v7 = v4[7];
  v8 = type metadata accessor for SettingsNavigationEventRecord();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2 + v7, a1, v8);
}

void sub_10014C2D8()
{
  sub_10014C3E0(319, &qword_1002BC8F0, &type metadata accessor for OpenURLAction);
  if (v0 <= 0x3F)
  {
    sub_10014C3E0(319, &qword_1002BC8F8, &type metadata accessor for LayoutDirection);
    if (v1 <= 0x3F)
    {
      sub_10014C3E0(319, &unk_1002BC900, &type metadata accessor for Locale);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SettingsNavigationEventRecord();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10014C3E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10014C434()
{
  result = qword_1002BC938;
  if (!qword_1002BC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC938);
  }

  return result;
}

uint64_t sub_10014C488@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001379C4(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10013DD90(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

size_t sub_10014C6B0(size_t a1, int64_t a2, char a3)
{
  result = sub_10014C6D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10014C6D0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001379C4(&unk_1002BC1B0);
  v10 = *(type metadata accessor for LocalizedStringResource() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LocalizedStringResource() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_10014C8A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v96 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue.Placeholder();
  v99 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationOptions();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v82 - v18;
  v20 = [v0 bps_specifiers];
  if (v20)
  {
    v21 = v20;
    sub_10013BBD4(0, &qword_1002BC940);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10014D3DC(v22);

    return;
  }

  v91 = v17;
  v92 = v14;
  v89 = v12;
  v90 = v9;
  v88 = "RRANGEMENT_TITLE";
  v23 = String._bridgeToObjectiveC()();
  v94 = v1;
  v24 = [v1 loadSpecifiersFromPlistName:v23 target:v1];

  if (!v24)
  {
    goto LABEL_68;
  }

  v101[0] = 0;
  v93 = sub_10013BBD4(0, &qword_1002BC940);
  static Array._forceBridgeFromObjectiveC(_:result:)();
  v25 = v101[0];
  if (v101[0])
  {

    v102[0] = v25;
    v100 = v25 & 0xFFFFFFFFFFFFFF8;
    v87 = v6;
    v86 = v13;
    v85 = v19;
    if (v25 >> 62)
    {
      goto LABEL_59;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_60;
    }

    while (1)
    {
      v27 = v7;
      v28 = 0;
      v7 = 0x8000000100242DF0;
      v98 = v27;
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v28 >= *(v100 + 16))
          {
            goto LABEL_57;
          }

          v29 = *(v25 + 8 * v28 + 32);
        }

        v6 = v29;
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_56;
        }

        v31 = [v29 identifier];
        if (v31)
        {
          break;
        }

LABEL_8:

        ++v28;
        if (v30 == v26)
        {
          goto LABEL_60;
        }
      }

      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = v33 == 0xD000000000000023 && 0x8000000100242DF0 == v35;
      if (!v36)
      {
        break;
      }

LABEL_22:
      v38 = [objc_allocWithZone(NSNumber) initWithDouble:160.0];
      [v6 setProperty:v38 forKey:PSTableCellHeightKey];

      v39 = type metadata accessor for ControlCenterFlags();
      v101[3] = v39;
      v101[4] = sub_10014E814();
      v40 = sub_10013E63C(v101);
      (*(*(v39 - 8) + 104))(v40, enum case for ControlCenterFlags.bridgeConfigureControls(_:), v39);
      v25 = isFeatureEnabled(_:)();
      sub_10014A63C(v101);
      if (v25)
      {
        v26 = 0;
        goto LABEL_27;
      }

      v26 = 0;
      v41 = sub_10014E86C(v102);
      if (v102[0] >> 62)
      {
        goto LABEL_64;
      }

      v42 = *((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42 >= v41)
      {
        while (2)
        {
          sub_10014F458(v41, v42);
LABEL_27:
          v43 = [objc_opt_self() sharedInstance];
          v44 = [v43 getActiveDevice];

          if (v44)
          {
            v25 = v44;
            v45 = PDRDevice.name.getter();
            if (v46)
            {
              v26 = v102[0];
              v84 = v44;
              v83 = v45;
              v82 = v46;
              if (v102[0] >> 62)
              {
                goto LABEL_66;
              }

              v47 = *((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v47)
              {
                goto LABEL_31;
              }

LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }
          }

          if (qword_1002BDF50 == -1)
          {
LABEL_47:
            v61 = type metadata accessor for Logger();
            sub_10014F530(v61, qword_1002BE7B0);
            v25 = Logger.logObject.getter();
            v62 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v25, v62))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v101[0] = v64;
              *v63 = 136315138;
              *(v63 + 4) = sub_10014A094(0x6569666963657073, 0xEC00000029287372, v101);
              _os_log_impl(&_mh_execute_header, v25, v62, "%s Couldn't get active device or device's name. Removing reset specifier.", v63, 0xCu);
              sub_10014A63C(v64);
            }

            v41 = sub_10014EB48(v102);
            if (v102[0] >> 62)
            {
              v80 = v41;
              v65 = _CocoaArrayWrapper.endIndex.getter();
              v41 = v80;
              if (v65 >= v80)
              {
LABEL_51:
                sub_10014F458(v41, v65);
LABEL_54:
                v78 = v102[0];
                isa = Array._bridgeToObjectiveC()().super.isa;
                [v94 bps_setSpecifiers:isa];

                sub_10014D3DC(v78);

                return;
              }
            }

            else
            {
              v65 = *((v102[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v65 >= v41)
              {
                goto LABEL_51;
              }
            }

            __break(1u);
LABEL_64:
            v81 = v41;
            v42 = _CocoaArrayWrapper.endIndex.getter();
            v41 = v81;
            if (v42 >= v81)
            {
              continue;
            }

            goto LABEL_65;
          }

          break;
        }

LABEL_61:
        swift_once();
        goto LABEL_47;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      v47 = _CocoaArrayWrapper.endIndex.getter();
      if (!v47)
      {
        goto LABEL_67;
      }

LABEL_31:
      v7 = 0;
      v100 = v26 & 0xC000000000000001;
      v97 = v26 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v100)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v97 + 16))
          {
            goto LABEL_58;
          }

          v48 = *(v26 + 8 * v7 + 32);
        }

        v49 = v48;
        v25 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v50 = v26;
        v51 = v47;
        v52 = [v48 identifier];
        if (v52)
        {
          v53 = v52;
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          if (v54 == 0xD000000000000017 && 0x8000000100242E40 == v56)
          {

            v59 = v98;
            v60 = v99;
LABEL_53:
            objc_opt_self();
            v66 = swift_dynamicCastObjCClassUnconditional();
            v67 = v85;
            String.LocalizationOptions.init()();
            sub_1001379C4(&qword_1002BC950);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_1001C70B0;
            *(v68 + 56) = &type metadata for String;
            *(v68 + 64) = sub_10014F568();
            v69 = v82;
            *(v68 + 32) = v83;
            *(v68 + 40) = v69;
            String.LocalizationOptions.replacements.setter();
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v70._countAndFlagsBits = 0xD000000000000027;
            v70._object = 0x8000000100242E60;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v70);
            v71 = v90;
            (*(v60 + 104))(v90, enum case for String.LocalizationValue.Placeholder.object(_:), v59);
            String.LocalizationValue.StringInterpolation.appendInterpolation(placeholder:specifier:)();
            (*(v60 + 8))(v71, v59);
            v72._countAndFlagsBits = 0;
            v72._object = 0xE000000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v72);
            String.LocalizationValue.init(stringInterpolation:)();
            v73 = v92;
            v74 = v86;
            (*(v92 + 16))(v91, v67, v86);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v76 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
            static Locale.current.getter();
            String.init(localized:options:table:bundle:locale:comment:)();
            v77 = String._bridgeToObjectiveC()();

            [v66 setPrompt:v77];

            (*(v73 + 8))(v67, v74);
            goto LABEL_54;
          }

          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v59 = v98;
          v60 = v99;
          if (v58)
          {
            goto LABEL_53;
          }
        }

        ++v7;
        v47 = v51;
        v36 = v25 == v51;
        v26 = v50;
        if (v36)
        {
          goto LABEL_67;
        }
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (!v26)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_22;
    }

    goto LABEL_8;
  }

LABEL_69:
  __break(1u);
}

char *sub_10014D3DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_100142A90(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10013BBD4(0, &qword_1002BC940);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100142A90((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10013F75C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10013BBD4(0, &qword_1002BC940);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100142A90((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10013F75C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_10014D63C(int a1)
{
  v26 = a1;
  v2 = sub_1001379C4(&unk_1002BC530);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ControlCenterViewController();
  v25 = v1;
  v31.receiver = v1;
  v31.super_class = v15;
  objc_msgSendSuper2(&v31, "viewWillAppear:", v26 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  URL.init(string:)();
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v4, 1, v16) == 1)
  {
    __break(1u);
    return;
  }

  type metadata accessor for WatchSettingsNavigationDonation();
  static WatchSettingsNavigationDonation.emitNavigationEventForSystemSetting(iconSpecifierIdentifier:title:localizedNavigationComponents:deepLink:)();
  (*(v12 + 8))(v14, v11);
  (*(v17 + 8))(v4, v16);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v25 specifierForID:v18];

  if (!v19)
  {
    v29 = 0u;
    v30 = 0u;
LABEL_12:
    sub_10013F864(&v29);
    return;
  }

  v20 = [v19 propertyForKey:PSTableCellKey];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    goto LABEL_12;
  }

  type metadata accessor for ControlCenterTriggerAnimationCell();
  if (swift_dynamicCast())
  {
    v21 = v27;
    v22 = *(v27 + OBJC_IVAR___COSControlCenterTriggerAnimationCell_triggerImageView);
    if (v22)
    {
      v23 = *((swift_isaMask & *v22) + 0x100);
      v24 = v22;
      v23();
    }
  }
}

void sub_10014DD6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR___COSControlCenterTriggerAnimationCell_triggerImageView] = 0;
  v4[OBJC_IVAR___COSControlCenterTriggerAnimationCell_didSetupConstraints] = 0;
  v7 = String._bridgeToObjectiveC()();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for ControlCenterTriggerAnimationCell();
  v8 = objc_msgSendSuper2(&v24, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {

    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 sharedInstance];
    v12 = [v11 getActiveDevice];

    if (v12)
    {
      sub_10014E444(v12);
      v13 = String._bridgeToObjectiveC()();

      v14 = [objc_opt_self() imageNamed:v13];

      type metadata accessor for ControlCenterAnimatingSpriteImageView();
      v15 = sub_100141808(0.0, 0.0, 320.0, 320.0);
      v16 = [objc_opt_self() mainScreen];
      [v16 scale];
      v18 = v17;

      CGAffineTransformMakeScale(&v25, 1.0 / v18, 1.0 / v18);
      [v15 setTransform:&v25];
      (*((swift_isaMask & *v15) + 0xB0))(334);
      (*((swift_isaMask & *v15) + 0xC8))(18);
      v19 = *((swift_isaMask & *v15) + 0x80);
      v20 = v14;
      v21 = v19(v14);
      (*((swift_isaMask & *v15) + 0x100))(v21);

      v22 = *&v10[OBJC_IVAR___COSControlCenterTriggerAnimationCell_triggerImageView];
      *&v10[OBJC_IVAR___COSControlCenterTriggerAnimationCell_triggerImageView] = v15;
      v23 = v15;

      [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v10 addSubview:v23];
      [v10 setNeedsUpdateConstraints];

      a4 = v10;
    }

    else
    {
      v23 = v10;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10014E1B4()
{
  if ((v0[OBJC_IVAR___COSControlCenterTriggerAnimationCell_didSetupConstraints] & 1) != 0 || (v1 = *&v0[OBJC_IVAR___COSControlCenterTriggerAnimationCell_triggerImageView]) == 0)
  {
    v12 = type metadata accessor for ControlCenterTriggerAnimationCell();
    v16 = v0;
    v13 = &v16;
  }

  else
  {
    v0[OBJC_IVAR___COSControlCenterTriggerAnimationCell_didSetupConstraints] = 1;
    sub_1001379C4(&qword_1002BC9C0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1001C7B70;
    v3 = v1;
    v4 = [v3 centerXAnchor];
    v5 = [v0 centerXAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    *(v2 + 32) = v6;
    v7 = [v3 centerYAnchor];

    v8 = [v0 centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    *(v2 + 40) = v9;
    v10 = objc_opt_self();
    sub_10013BBD4(0, &qword_1002BC9C8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 activateConstraints:isa];

    v12 = type metadata accessor for ControlCenterTriggerAnimationCell();
    v15 = v0;
    v13 = &v15;
  }

  v13->super_class = v12;
  return [(objc_super *)v13 updateConstraints];
}

id sub_10014E3FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10014E444(void *a1)
{
  v2 = sub_1001379C4(&qword_1002BC9D0);
  __chkstk_darwin(v2 - 8);
  v4 = v16 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 valueForProperty:PDRDevicePropertyKeyPairingID])
  {
    __break(1u);
    goto LABEL_9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10013F75C(v16, v17);
  swift_dynamicCast();
  if (![a1 valueForProperty:PDRDevicePropertyKeyLocalPairingDataStorePath])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10013F75C(v16, v17);
  swift_dynamicCast();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v9 = String._bridgeToObjectiveC()();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v4, v5);
  }

  v11 = objc_allocWithZone(NPSDomainAccessor);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithDomain:v9 pairingID:isa pairingDataStore:v12];

  if (v13)
  {

    v14 = @"invertUI";
    [v13 BOOLForKey:v14];

    (*(v6 + 8))(v8, v5);
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_10014E790()
{
  v0 = type metadata accessor for Logger();
  sub_10014F948(v0, qword_1002BE7B0);
  sub_10014F530(v0, qword_1002BE7B0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10014E814()
{
  result = qword_1002BC948;
  if (!qword_1002BC948)
  {
    type metadata accessor for ControlCenterFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BC948);
  }

  return result;
}

unint64_t sub_10014E86C(unint64_t *a1)
{
  v3 = *a1;
  result = sub_10014F0B0(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = a1;
  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    v9 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v10 = v9;
    v11 = [v9 identifier];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == 0xD00000000000001DLL && 0x8000000100242E20 == v15)
      {

        goto LABEL_8;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    if (v6 != v7)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6 >= v19)
        {
          goto LABEL_50;
        }

        if (v7 >= v19)
        {
          goto LABEL_51;
        }

        v20 = *(v3 + 32 + 8 * v7);
        v17 = *(v3 + 32 + 8 * v6);
        v18 = v20;
      }

      v21 = v18;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
      {
        v3 = sub_10014F2E4(v3);
        v22 = (v3 >> 62) & 1;
      }

      else
      {
        LODWORD(v22) = 0;
      }

      v23 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
      *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v21;

      if ((v3 & 0x8000000000000000) != 0 || v22)
      {
        v3 = sub_10014F2E4(v3);
        v23 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((v7 & 0x8000000000000000) != 0)
        {
LABEL_42:
          __break(1u);
          return v6;
        }
      }

      else if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v7 >= *(v23 + 16))
      {
        goto LABEL_48;
      }

      v25 = v23 + 8 * v7;
      v26 = *(v25 + 32);
      *(v25 + 32) = v17;

      *v27 = v3;
    }

    v8 = __OFADD__(v6++, 1);
    if (v8)
    {
      goto LABEL_47;
    }

LABEL_8:
    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_10014EB48(unint64_t *a1)
{
  v3 = *a1;
  result = sub_10014EEAC(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = a1;
  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

    v9 = *(v3 + 8 * v7 + 32);
LABEL_15:
    v10 = v9;
    v11 = [v9 identifier];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == 0xD000000000000017 && 0x8000000100242E40 == v15)
      {
LABEL_7:

        goto LABEL_8;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {

        goto LABEL_8;
      }
    }

    v17 = [v10 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v19 == 0xD000000000000017 && 0x8000000100242E40 == v21)
      {
        goto LABEL_7;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_8;
      }

      if (v6 == v7)
      {
LABEL_25:
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_56;
        }

        goto LABEL_8;
      }
    }

    else
    {

      if (v6 == v7)
      {
        goto LABEL_25;
      }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }

      v25 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v25)
      {
        goto LABEL_59;
      }

      if (v7 >= v25)
      {
        goto LABEL_60;
      }

      v26 = *(v3 + 32 + 8 * v7);
      v23 = *(v3 + 32 + 8 * v6);
      v24 = v26;
    }

    v27 = v24;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
    {
      v3 = sub_10014F2E4(v3);
      v28 = (v3 >> 62) & 1;
    }

    else
    {
      LODWORD(v28) = 0;
    }

    v29 = v3 & 0xFFFFFFFFFFFFFF8;
    v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v27;

    if ((v3 & 0x8000000000000000) != 0 || v28)
    {
      v3 = sub_10014F2E4(v3);
      v29 = v3 & 0xFFFFFFFFFFFFFF8;
      if ((v7 & 0x8000000000000000) != 0)
      {
LABEL_51:
        __break(1u);
        return v6;
      }
    }

    else if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    if (v7 >= *(v29 + 16))
    {
      goto LABEL_57;
    }

    v31 = v29 + 8 * v7;
    v32 = *(v31 + 32);
    *(v31 + 32) = v23;

    *v33 = v3;
    v8 = __OFADD__(v6++, 1);
    if (v8)
    {
      goto LABEL_56;
    }

LABEL_8:
    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

unint64_t sub_10014EEAC(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_28:
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = 0;
  while (1)
  {
    if (v21 == v2)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *(v20 + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v4 = *(a1 + 8 * v2 + 32);
    }

    v5 = v4;
    v6 = [v4 identifier];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (v8 == 0xD000000000000017 && 0x8000000100242E40 == v10)
      {
LABEL_22:

        return v2;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        break;
      }
    }

    v13 = [v5 identifier];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v15 == 0xD000000000000017 && 0x8000000100242E40 == v17)
      {
        goto LABEL_22;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        return v2;
      }
    }

    else
    {
    }

    if (__OFADD__(v2++, 1))
    {
      goto LABEL_27;
    }
  }

  return v2;
}

unint64_t sub_10014F0B0(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v15 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 identifier];
    if (v7)
    {
      break;
    }

LABEL_5:
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_22;
    }
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 != 0xD00000000000001DLL || 0x8000000100242E20 != v11)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return v3;
    }

    goto LABEL_5;
  }

  return v3;
}

uint64_t sub_10014F228(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

uint64_t sub_10014F2E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10014F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_10013BBD4(0, &qword_1002BC940);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}