@interface MapsEventRecorder
+ (BOOL)isRecording;
+ (id)initializeDefaultRecorderWithTapToRadar:(BOOL)radar window:(id)window;
+ (unint64_t)numberOfTouchesInEvent:(id)event;
+ (unint64_t)phaseOfEvent:(id)event;
- (CGRect)windowFrame;
- (UIWindow)window;
- (id)logMessageForEvent:(id)event;
- (unint64_t)elementTypeInEvent:(id)event;
- (void)addNavigationBarView;
- (void)attachTapToRadarWithPaths:(id)paths;
- (void)beginRecordingWithCompletion:(id)completion;
- (void)clearDefaultRecorder;
- (void)endRecordingWithCompletion:(id)completion;
- (void)hideLoadingIndicator;
- (void)recordEvent:(id)event;
- (void)removeNavigationBarView;
- (void)saveVideoFileToPhotoLibraryWithPaths:(id)paths;
- (void)showLoadingIndicator;
@end

@implementation MapsEventRecorder

- (CGRect)windowFrame
{
  x = self->_windowFrame.origin.x;
  y = self->_windowFrame.origin.y;
  width = self->_windowFrame.size.width;
  height = self->_windowFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (void)hideLoadingIndicator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AC693C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)showLoadingIndicator
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AC6A18;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)removeNavigationBarView
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AC6BCC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)addNavigationBarView
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100AC6DA0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (unint64_t)elementTypeInEvent:(id)event
{
  allTouches = [event allTouches];
  allObjects = [allTouches allObjects];
  firstObject = [allObjects firstObject];
  if (![allObjects count])
  {
    v14 = 23;
    goto LABEL_7;
  }

  view = [firstObject view];
  superview = [view superview];
  v8Superview = [superview superview];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      selfCopy = self;
      v14 = 23;
      if (!view || !v11)
      {
        goto LABEL_5;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [view text];
        v17 = v16 = v13;
        [(MapsEventRecorder *)selfCopy setInfo:v17];

        v13 = v16;
        v14 = 6;
        goto LABEL_5;
      }

      v76 = v13;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = view;
        v19 = [v18 titleForSegmentAtIndex:{objc_msgSend(v18, "selectedSegmentIndex")}];

        [(MapsEventRecorder *)selfCopy setInfo:v19];
        v14 = 3;
LABEL_70:
        v13 = v76;
        goto LABEL_5;
      }

      if ([v11 isEqualToString:@"UINavigationButton"])
      {
        v20 = view;
        title = [v20 title];

        if (title)
        {
          title2 = [v20 title];
          [(MapsEventRecorder *)selfCopy setInfo:title2];

          v14 = 2;
          goto LABEL_70;
        }
      }

      objc_opt_class();
      v77 = v11;
      v73 = superview;
      if (objc_opt_isKindOfClass())
      {
        v23 = view;
        titleLabel = [v23 titleLabel];
        text = [titleLabel text];

        if (text)
        {
          titleLabel2 = [v23 titleLabel];
          text2 = [titleLabel2 text];
          [(MapsEventRecorder *)selfCopy setInfo:text2];

          v14 = 1;
          v13 = v76;
LABEL_36:

          goto LABEL_5;
        }

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v72 = v23;
        obj = [v23 subviews];
        v78 = [obj countByEnumeratingWithState:&v95 objects:v102 count:16];
        if (v78)
        {
          v28 = *v96;
          v29 = &MKLookAroundViewDidBecomeFullyDrawnNotification_ptr;
          while (2)
          {
            for (i = 0; i != v78; i = i + 1)
            {
              if (*v96 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v95 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = v8Superview;
                v33 = v28;
                v34 = v29;
                v35 = v31;
                text3 = [v35 text];

                if (text3)
                {
                  text4 = [v35 text];
                  [(MapsEventRecorder *)selfCopy setInfo:text4];

                  v14 = 1;
                  v13 = v76;
                  v11 = v77;
                  v23 = v72;
                  v8Superview = v32;
                  goto LABEL_35;
                }

                v29 = v34;
                v28 = v33;
                v8Superview = v32;
                superview = v73;
              }
            }

            v78 = [obj countByEnumeratingWithState:&v95 objects:v102 count:16];
            if (v78)
            {
              continue;
            }

            break;
          }
        }

        v11 = v77;
        if ([v77 isEqualToString:@"ResizableButton"])
        {
          v14 = 7;
LABEL_33:
          v13 = v76;
          v23 = v72;
          goto LABEL_36;
        }

        v13 = v76;
        v23 = v72;
        if ([v77 isEqualToString:@"DismissSettingsView"])
        {
          v14 = 7;
          goto LABEL_36;
        }

        if ([v77 isEqualToString:@"MapsUserTrackingButton"] & 1) != 0 || (objc_msgSend(v77, "isEqualToString:", @"MapsUserTrackingRoundedButton"))
        {
          v14 = 0;
          goto LABEL_36;
        }

        if ([v77 isEqualToString:@"MapsLargerHitTargetButton"])
        {
          v23 = v72;
          [v72 frame];
          v39 = v38;
          [(MapsEventRecorder *)selfCopy windowFrame];
          if (v39 >= v40 * 0.5)
          {
            v14 = 8;
          }

          else
          {
            v14 = 9;
          }

          v13 = v76;
          v11 = v77;
          goto LABEL_36;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          superview = v73;
          text5 = [v73 text];
          [(MapsEventRecorder *)selfCopy setInfo:text5];

          v14 = 16;
          v11 = v77;
          goto LABEL_33;
        }

        if ([v76 isEqualToString:@"MKPlaceDirectionsCell"])
        {
          v14 = 19;
          v13 = v76;
          v11 = v77;
          v23 = v72;
LABEL_35:
          superview = v73;
          goto LABEL_36;
        }

        v11 = v77;
        v42 = [v77 isEqualToString:@"CNTransportButton"];

        superview = v73;
        if (v42)
        {
          v14 = 20;
          goto LABEL_70;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        obja = [view subviews];
        v43 = [obja countByEnumeratingWithState:&v91 objects:v101 count:16];
        if (v43)
        {
          v44 = v43;
          v79 = *v92;
          while (2)
          {
            for (j = 0; j != v44; j = j + 1)
            {
              if (*v92 != v79)
              {
                objc_enumerationMutation(obja);
              }

              v46 = *(*(&v91 + 1) + 8 * j);
              if ([v46 isMemberOfClass:objc_opt_class()])
              {
                v47 = v46;
                text6 = [v47 text];

                if (text6)
                {
                  text7 = [v47 text];
                  v51 = [text7 copy];
                  [(MapsEventRecorder *)selfCopy setInfo:v51];

                  v14 = 4;
                  v13 = v76;
                  v11 = v77;
                  goto LABEL_5;
                }

                v11 = v77;
              }
            }

            v44 = [obja countByEnumeratingWithState:&v91 objects:v101 count:16];
            if (v44)
            {
              continue;
            }

            break;
          }
        }
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = v76;
        if ([v11 isEqualToString:@"_MKSmallCalloutPassthroughButton"])
        {
          v14 = 12;
        }

        else if ([v11 isEqualToString:@"DirectionsCalloutButton"])
        {
          v14 = 10;
        }

        else if ([v11 isEqualToString:@"MKNewAnnotationContainerView"])
        {
          v14 = 13;
        }

        else if ([v11 isEqualToString:@"MKCompassView"])
        {
          v14 = 18;
        }

        else
        {
          if ([v11 isEqualToString:@"BrowseItemView"])
          {
            v89 = 0u;
            v90 = 0u;
            v87 = 0u;
            v88 = 0u;
            subviews = [view subviews];
            v52 = [subviews countByEnumeratingWithState:&v87 objects:v100 count:16];
            if (v52)
            {
              v53 = v52;
              v54 = *v88;
              while (2)
              {
                for (k = 0; k != v53; k = k + 1)
                {
                  if (*v88 != v54)
                  {
                    objc_enumerationMutation(subviews);
                  }

                  v56 = *(*(&v87 + 1) + 8 * k);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v57 = v53;
                    v58 = v54;
                    v59 = v56;
                    text8 = [v59 text];

                    if (text8)
                    {
                      text9 = [v59 text];
                      [(MapsEventRecorder *)selfCopy setInfo:text9];

                      goto LABEL_106;
                    }

                    v54 = v58;
                    v53 = v57;
                  }
                }

                v53 = [subviews countByEnumeratingWithState:&v87 objects:v100 count:16];
                if (v53)
                {
                  continue;
                }

                break;
              }
            }

LABEL_106:

            v14 = 17;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              subviews2 = [view subviews];
              v61 = [subviews2 countByEnumeratingWithState:&v83 objects:v99 count:16];
              if (v61)
              {
                v62 = v61;
                v63 = *v84;
                while (2)
                {
                  for (m = 0; m != v62; m = m + 1)
                  {
                    if (*v84 != v63)
                    {
                      objc_enumerationMutation(subviews2);
                    }

                    v65 = *(*(&v83 + 1) + 8 * m);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v66 = v62;
                      v67 = v63;
                      v68 = v65;
                      text10 = [v68 text];

                      if (text10)
                      {
                        text11 = [v68 text];
                        [(MapsEventRecorder *)selfCopy setInfo:text11];

                        v14 = 22;
                        goto LABEL_108;
                      }

                      v63 = v67;
                      v62 = v66;
                    }
                  }

                  v62 = [subviews2 countByEnumeratingWithState:&v83 objects:v99 count:16];
                  if (v62)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v14 = 24;
          }

LABEL_108:
          v13 = v76;
          v11 = v77;
          superview = v73;
        }

        goto LABEL_5;
      }

      if ([view isOn])
      {
        v49 = @"on";
      }

      else
      {
        v49 = @"off";
      }

      [(MapsEventRecorder *)selfCopy setInfo:v49];
      v14 = 5;
      goto LABEL_70;
    }
  }

  v14 = 24;
LABEL_5:

LABEL_7:
  return v14;
}

- (id)logMessageForEvent:(id)event
{
  if ([(MapsEventRecorder *)self touchCount]== 2 && [(MapsEventRecorder *)self previousTouchCount]== 1)
  {
    v4 = @"The user stopped panning and started zooming";
    goto LABEL_59;
  }

  if ([(MapsEventRecorder *)self touchCount]== 1 && [(MapsEventRecorder *)self previousTouchCount]== 2)
  {
    v4 = @"The user stopped zooming and started panning";
    goto LABEL_59;
  }

  if ([(MapsEventRecorder *)self currentPhase])
  {
    if ([(MapsEventRecorder *)self currentPhase]== 1)
    {
      if ([(MapsEventRecorder *)self previousPhase]== 2 && [(MapsEventRecorder *)self previousElement]== 13)
      {
        touchCount = [(MapsEventRecorder *)self touchCount];
        v6 = @"The user began panning";
        v7 = @"The user started zooming";
        goto LABEL_22;
      }

      goto LABEL_52;
    }

    if ([(MapsEventRecorder *)self currentPhase]!= 2)
    {
      goto LABEL_52;
    }

    currentElement = [(MapsEventRecorder *)self currentElement];
    if (currentElement > 15)
    {
      if (currentElement != 16)
      {
        if (currentElement == 18)
        {
          v4 = @"The user tapped the compass";
          goto LABEL_59;
        }

        goto LABEL_52;
      }

      info = [(MapsEventRecorder *)self info];
      [NSString stringWithFormat:@"The user cleared the text in the search bar that contained the text %@", info];
    }

    else
    {
      if (currentElement != 6)
      {
        if (currentElement == 13)
        {
          touchCount = [(MapsEventRecorder *)self touchCount];
          v6 = @"The user began touching the map";
          v7 = @"The user began zooming the map";
LABEL_22:
          if (touchCount == 2)
          {
            v4 = v7;
          }

          else
          {
            v4 = v6;
          }

          goto LABEL_59;
        }

LABEL_52:
        v4 = &stru_1016631F0;
        goto LABEL_59;
      }

      info = [(MapsEventRecorder *)self info];
      [NSString stringWithFormat:@"The user tapped the search bar that currently contains the text %@", info];
    }

    v4 = LABEL_58:;

    goto LABEL_59;
  }

  if ([(MapsEventRecorder *)self previousPhase]!= 1 || [(MapsEventRecorder *)self previousElement]!= 13)
  {
    v4 = @"The user pressed the current location button";
    switch([(MapsEventRecorder *)self currentElement])
    {
      case 0uLL:
        goto LABEL_59;
      case 1uLL:
      case 2uLL:
        info2 = [(MapsEventRecorder *)self info];

        if (!info2)
        {
          goto LABEL_52;
        }

        info = [(MapsEventRecorder *)self info];
        [NSString stringWithFormat:@"The user pressed a button called %@", info];
        goto LABEL_58;
      case 3uLL:
        info3 = [(MapsEventRecorder *)self info];

        if (!info3)
        {
          goto LABEL_52;
        }

        info = [(MapsEventRecorder *)self info];
        [NSString stringWithFormat:@"The user selected option %@ on the segmented control", info];
        goto LABEL_58;
      case 4uLL:
        info4 = [(MapsEventRecorder *)self info];

        if (!info4)
        {
          goto LABEL_52;
        }

        info = [(MapsEventRecorder *)self info];
        [NSString stringWithFormat:@"The user tapped a UITableViewCell titled %@", info];
        goto LABEL_58;
      case 5uLL:
        info5 = [(MapsEventRecorder *)self info];

        if (!info5)
        {
          goto LABEL_52;
        }

        info = [(MapsEventRecorder *)self info];
        [NSString stringWithFormat:@"The user tapped a UISwitch to the %@ state", info];
        goto LABEL_58;
      case 7uLL:
        v4 = @"The user pressed the settings button";
        goto LABEL_59;
      case 8uLL:
        v4 = @"The user tapped the share button";
        goto LABEL_59;
      case 9uLL:
        v4 = @"The user tapped the route button";
        goto LABEL_59;
      case 0xAuLL:
        v4 = @"The user tapped the route button on the pin";
        goto LABEL_59;
      case 0xBuLL:
        v4 = @"The user changed the route mode";
        goto LABEL_59;
      case 0xCuLL:
        v4 = @"The user tapped more info on the pinned location";
        goto LABEL_59;
      case 0xDuLL:
        v4 = @"The user tapped the map";
        goto LABEL_59;
      case 0xEuLL:
        v4 = @"The user tapped the details button for the route";
        goto LABEL_59;
      case 0xFuLL:
        v4 = @"The user pressed the cancel button in the share menu";
        goto LABEL_59;
      case 0x11uLL:
        info6 = [(MapsEventRecorder *)self info];
        if (!info6 || (v16 = info6, -[MapsEventRecorder info](self, "info"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isEqualToString:&stru_1016631F0], v17, v16, (v18 & 1) != 0))
        {
          v4 = @"The user tapped one of the category buttons";
          goto LABEL_59;
        }

        info = [(MapsEventRecorder *)self info];
        [NSString stringWithFormat:@"The user tapped the %@ button", info];
        break;
      case 0x13uLL:
        v4 = @"The user pressed a route option";
        goto LABEL_59;
      case 0x14uLL:
        v4 = @"The user pressed the call button";
        goto LABEL_59;
      case 0x15uLL:
        v4 = @"The user pressed the address cell";
        goto LABEL_59;
      case 0x16uLL:
        info7 = [(MapsEventRecorder *)self info];

        if (!info7)
        {
          goto LABEL_52;
        }

        info = [(MapsEventRecorder *)self info];
        [NSString stringWithFormat:@"The user tapped a view titled label %@", info];
        goto LABEL_58;
      default:
        goto LABEL_52;
    }

    goto LABEL_58;
  }

  touchCount2 = [(MapsEventRecorder *)self touchCount];
  v9 = @"The user finished panning";
  if (touchCount2 == 2)
  {
    v9 = @"The user finished zooming";
  }

  v4 = v9;
LABEL_59:

  return v4;
}

- (void)recordEvent:(id)event
{
  eventCopy = event;
  if ([(MapsEventRecorder *)self recording])
  {
    [(MapsEventRecorder *)self setInfo:0];
    [(MapsEventRecorder *)self setPreviousPhase:[(MapsEventRecorder *)self currentPhase]];
    [(MapsEventRecorder *)self setCurrentPhase:[MapsEventRecorder phaseOfEvent:eventCopy]];
    [(MapsEventRecorder *)self setPreviousTouchCount:[(MapsEventRecorder *)self touchCount]];
    [(MapsEventRecorder *)self setTouchCount:[MapsEventRecorder numberOfTouchesInEvent:eventCopy]];
    [(MapsEventRecorder *)self setPreviousElement:[(MapsEventRecorder *)self currentElement]];
    v4 = [(MapsEventRecorder *)self elementTypeInEvent:eventCopy];
    if (v4 != 23)
    {
      [(MapsEventRecorder *)self setCurrentElement:v4];
    }

    v5 = [(MapsEventRecorder *)self logMessageForEvent:eventCopy];
    v6 = v5;
    if (v5 && ([v5 isEqualToString:&stru_1016631F0] & 1) == 0)
    {
      v7 = +[GEOEventRecorderInstrumentation defaultInstrumentation];
      [v7 captureUIEvent:v6];
    }
  }
}

- (void)saveVideoFileToPhotoLibraryWithPaths:(id)paths
{
  pathsCopy = paths;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [pathsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(pathsCopy);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([(NSString *)v8 containsString:@".mp4"])
        {
          UISaveVideoAtPathToSavedPhotosAlbum(v8, 0, 0, 0);
        }
      }

      v5 = [pathsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)attachTapToRadarWithPaths:(id)paths
{
  pathsCopy = paths;
  v4 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = pathsCopy;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        lastPathComponent = [v10 lastPathComponent];
        v12 = [NSURL fileURLWithPath:v10];
        v13 = [MapsRadarFileAttachment attachmentWithFileName:lastPathComponent fileURL:v12 deleteOnAttach:0];
        [v4 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v14 = objc_opt_new();
  [v14 addAttachments:v4];
  v15 = sub_1007984E4();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_17;
    }

    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    if (objc_opt_respondsToSelector())
    {
      v19 = [(MapsEventRecorder *)selfCopy performSelector:"accessibilityIdentifier"];
      v20 = v19;
      if (v19 && ![v19 isEqualToString:v18])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v18, selfCopy, v20];

        goto LABEL_15;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v18, selfCopy];
LABEL_15:

LABEL_17:
    *buf = 138543362;
    v29 = selfCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] Launching TTR from event recorder", buf, 0xCu);
  }

  v22 = +[MapsRadarController sharedInstance];
  [v22 launchTTRWithRadar:v14];
}

- (void)endRecordingWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MapsEventRecorder *)self showLoadingIndicator];
  v5 = +[GEOEventRecorderInstrumentation defaultInstrumentation];
  [v5 captureUIEvent:@"<<<<<<<< RECORDING END <<<<<<<<"];

  [(MapsEventRecorder *)self setRecording:0];
  sharedRecorder = [sub_100AC8440() sharedRecorder];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100AC8520;
  v8[3] = &unk_101637320;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [sharedRecorder stopRecordingWithHandler:v8];
}

- (void)beginRecordingWithCompletion:(id)completion
{
  completionCopy = completion;
  [(MapsEventRecorder *)self showLoadingIndicator];
  sharedRecorder = [sub_100AC8440() sharedRecorder];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100AC88C0;
  v7[3] = &unk_10165E240;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [sharedRecorder startRecordingWithHandler:v7];
}

- (void)clearDefaultRecorder
{
  v2 = qword_10195E450;
  qword_10195E450 = 0;
}

+ (unint64_t)numberOfTouchesInEvent:(id)event
{
  allTouches = [event allTouches];
  allObjects = [allTouches allObjects];
  v5 = [allObjects count];

  return v5;
}

+ (unint64_t)phaseOfEvent:(id)event
{
  allTouches = [event allTouches];
  allObjects = [allTouches allObjects];
  firstObject = [allObjects firstObject];
  phase = [firstObject phase];
  if (phase > 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = qword_1012153C8[phase];
  }

  return v7;
}

+ (BOOL)isRecording
{
  result = qword_10195E450;
  if (qword_10195E450)
  {
    return [qword_10195E450 recording];
  }

  return result;
}

+ (id)initializeDefaultRecorderWithTapToRadar:(BOOL)radar window:(id)window
{
  v4 = qword_10195E450;
  if (!qword_10195E450)
  {
    radarCopy = radar;
    windowCopy = window;
    v7 = objc_alloc_init(MapsEventRecorder);
    v8 = qword_10195E450;
    qword_10195E450 = v7;

    [qword_10195E450 setCurrentElement:24];
    [qword_10195E450 setCurrentPhase:3];
    [qword_10195E450 setPreviousPhase:3];
    [windowCopy frame];
    [qword_10195E450 setWindowFrame:?];
    [qword_10195E450 setWindow:windowCopy];

    v9 = objc_alloc_init(NSDate);
    [qword_10195E450 setStartDate:v9];

    [qword_10195E450 setRecording:0];
    [qword_10195E450 setPreviousTouchCount:0];
    [qword_10195E450 setTouchCount:0];
    [qword_10195E450 setTapToRadarEnabled:radarCopy];
    if (qword_10195E458 != -1)
    {
      dispatch_once(&qword_10195E458, &stru_1016372F8);
    }

    v4 = qword_10195E450;
  }

  return v4;
}

@end