@interface SBIconDragManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsIconDragging;
- (CGPoint)_accessibilityLastPausedLocation;
- (id)_axGrabbedIconView;
- (id)_axGrabbedIcons;
- (id)_axGrabbedIconsLabel;
- (id)_axRecipientIconView;
- (id)createNewFolderFromRecipientIcon:(id)a3 grabbedIcon:(id)a4 inListModel:(id)a5;
- (id)iconDropSessionDidUpdate:(id)a3 inIconListView:(id)a4;
- (void)_accessibilityIconMovedToPosition;
- (void)_axDragPauseForLocation:(CGPoint)a3 iconListView:(id)a4;
- (void)_axScheduleAnnouncementForRow:(unint64_t)a3 col:(unint64_t)a4;
- (void)_axUpdateDragPauseForLocation:(CGPoint)a3 iconListView:(id)a4;
- (void)iconDropSession:(id)a3 didPauseAtLocation:(CGPoint)a4 inIconListView:(id)a5;
- (void)iconDropSessionDidEnd:(id)a3;
- (void)iconViewWillBeginDrag:(id)a3 session:(id)a4;
- (void)updatePlaceholderPositionForDragWithIdentifier:(id)a3;
@end

@implementation SBIconDragManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"iconDropSessionDidUpdate:inIconListView:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"iconDropSessionDidEnd:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"iconDragContextForDropSession:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"iconViewWillBeginDrag:session:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"cancelAllDrags" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBIconDragContext"];
  [v3 validateClass:@"SBIconListView"];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"coordinateForIcon:" withFullSignature:{"{SBIconCoordinate=qq}", "@", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"iconAtPoint:index:" withFullSignature:{"@", "{CGPoint=dd}", "^Q", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"iconViewForIcon:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"iconDropSession:didPauseAtLocation:inIconListView:" withFullSignature:{"v", "@", "{CGPoint=dd}", "@", 0}];
  [v3 validateClass:@"SBIcon" hasInstanceMethod:@"isPlaceholder" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconView" hasInstanceMethod:@"isFolderIcon" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconDragContext" hasInstanceMethod:@"initialTouchOffsetFromIconImageCenter" withFullSignature:{"{CGPoint=dd}", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"updatePlaceholderPositionForDragWithIdentifier:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"uniqueIdentifierForIconDropSession:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"iconDragContextForDragWithIdentifier:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBIconDragContext" hasInstanceMethod:@"initialTouchOffsetFromIconImageCenter" withFullSignature:{"{CGPoint=dd}", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"createNewFolderFromRecipientIcon:grabbedIcon:inListModel:" withFullSignature:{"@", "@", "@", "@", 0}];
  [v3 validateClass:@"SBIconDragManager" hasInstanceMethod:@"enumerateIconDragContextsUsingBlock:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"SBIconDragContext" hasInstanceMethod:@"isUserActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBIconDragContext" hasInstanceMethod:@"draggedIcons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBIconDragContext" hasInstanceVariable:@"_sourceIconViews" withType:"NSMutableSet"];
  [v3 validateClass:@"SBIconDragContext" hasInstanceMethod:@"recipientIconView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBPlaceholderIcon"];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"iconRowsForCurrentOrientation" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"iconColumnsForCurrentOrientation" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"iconRowsForCurrentOrientation" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"SBIconListView" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"openedFolder" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolder" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
}

- (void)iconViewWillBeginDrag:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBIconDragManagerAccessibility;
  [(SBIconDragManagerAccessibility *)&v12 iconViewWillBeginDrag:v6 session:v7];
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 focusSystem];

  [v11 requestFocusUpdateToEnvironment:v11];
}

- (id)iconDropSessionDidUpdate:(id)a3 inIconListView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = SBIconDragManagerAccessibility;
  v8 = [(SBIconDragManagerAccessibility *)&v30 iconDropSessionDidUpdate:v6 inIconListView:v7];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v9 = v6;
  AXPerformSafeBlock();
  v10 = v25[5];

  _Block_object_dispose(&v24, 8);
  [v9 locationInView:v7];
  v12 = v11;
  v14 = v13;
  [v10 safeCGPointForKey:@"initialTouchOffsetFromIconImageCenter"];
  v17 = [v7 iconAtPoint:0 index:{v12 - v15, v14 - v16}];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3010000000;
  v27 = &unk_29C40BC2F;
  v28 = 0;
  v29 = 0;
  v23 = MEMORY[0x29EDCA5F8];
  v18 = v7;
  v19 = v17;
  AXPerformSafeBlock();
  v20 = v25[4];
  v21 = v25[5];

  _Block_object_dispose(&v24, 8);
  if (v19 && v21 && v20)
  {
    [(SBIconDragManagerAccessibility *)self _axScheduleAnnouncementForRow:v21 col:v20, v23, 3221225472, __74__SBIconDragManagerAccessibility_iconDropSessionDidUpdate_inIconListView___block_invoke_2, &unk_29F300310];
  }

  return v8;
}

uint64_t __74__SBIconDragManagerAccessibility_iconDropSessionDidUpdate_inIconListView___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) iconDragContextForDropSession:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __74__SBIconDragManagerAccessibility_iconDropSessionDidUpdate_inIconListView___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) coordinateForIcon:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

- (void)iconDropSessionDidEnd:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBIconDragManagerAccessibility;
  [(SBIconDragManagerAccessibility *)&v4 iconDropSessionDidEnd:a3];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    AXPerformSafeBlock();
  }

  [(SBIconDragManagerAccessibility *)self _accessibilitySetLastAnnouncedIcon:0];
}

- (CGPoint)_accessibilityLastPausedLocation
{
  MEMORY[0x2A1C5E808](self, &__SBIconDragManagerAccessibility___accessibilityLastPausedLocation);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)updatePlaceholderPositionForDragWithIdentifier:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__3;
  v24 = __Block_byref_object_dispose__3;
  v25 = 0;
  v13 = MEMORY[0x29EDCA5F8];
  v14 = 3221225472;
  v15 = __81__SBIconDragManagerAccessibility_updatePlaceholderPositionForDragWithIdentifier___block_invoke;
  v16 = &unk_29F300310;
  v19 = &v20;
  v17 = self;
  v5 = v4;
  v18 = v5;
  AXPerformSafeBlock();
  v6 = v21[5];

  _Block_object_dispose(&v20, 8);
  [v6 safeCGPointForKey:@"currentEnteredIconListViewLastLocation"];
  v8 = v7;
  v10 = v9;
  v11 = [v6 safeValueForKey:@"currentEnteredIconListView"];
  [(SBIconDragManagerAccessibility *)self _accessibilitySetLastPausedLocation:v8, v10];
  v12.receiver = self;
  v12.super_class = SBIconDragManagerAccessibility;
  [(SBIconDragManagerAccessibility *)&v12 updatePlaceholderPositionForDragWithIdentifier:v5];
  [(SBIconDragManagerAccessibility *)self _axDragPauseForLocation:v11 iconListView:v8, v10];
  [(SBIconDragManagerAccessibility *)self _axUpdateDragPauseForLocation:v11 iconListView:v8, v10];
}

uint64_t __81__SBIconDragManagerAccessibility_updatePlaceholderPositionForDragWithIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) iconDragContextForDragWithIdentifier:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)createNewFolderFromRecipientIcon:(id)a3 grabbedIcon:(id)a4 inListModel:(id)a5
{
  SBAXIconCreatingFolder = 1;
  v16.receiver = self;
  v16.super_class = SBIconDragManagerAccessibility;
  v5 = [(SBIconDragManagerAccessibility *)&v16 createNewFolderFromRecipientIcon:a3 grabbedIcon:a4 inListModel:a5];
  v6 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
  v7 = [MEMORY[0x29EDBA070] numberWithInt:1];
  v8 = [v6 initWithObjectsAndKeys:{v7, *MEMORY[0x29EDBD860], 0}];

  v9 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v10 = MEMORY[0x29EDBA0F8];
  v11 = accessibilityLocalizedString(@"creating.folder");
  v12 = [v5 safeValueForKey:@"displayName"];
  v13 = [v10 stringWithFormat:v11, v12];
  v14 = [v9 initWithString:v13 attributes:v8];

  LODWORD(v13) = *MEMORY[0x29EDC7EA8];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v14);
  UIAccessibilityPostNotification(v13, *MEMORY[0x29EDBDA70]);
  SBAXIconCreatingFolder = 0;

  return v5;
}

- (void)_axDragPauseForLocation:(CGPoint)a3 iconListView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = AXSBHIconManagerFromSharedIconController();
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v43 = MEMORY[0x29EDCA5F8];
  v44 = 3221225472;
  v45 = __71__SBIconDragManagerAccessibility__axDragPauseForLocation_iconListView___block_invoke;
  v46 = &unk_29F300418;
  v10 = v8;
  v47 = v10;
  AXPerformSafeBlock();
  if ((SBAXPerformingAXDrag & 1) == 0)
  {
    if (v49[3] == _axDragPauseForLocation_iconListView__previousIconIndex && _axDragPauseForLocation_iconListView__previousIconList == v10)
    {
      goto LABEL_26;
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAA8]);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    v11 = SBAXIconMoveSpeakTimer;
    if (!SBAXIconMoveSpeakTimer)
    {
      v12 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel__accessibilityIconMovedToPosition selector:0 userInfo:1 repeats:{1.0, v43, 3221225472, __71__SBIconDragManagerAccessibility__axDragPauseForLocation_iconListView___block_invoke, &unk_29F300418, v10, &v48, *&x, *&y}];
      v13 = SBAXIconMoveSpeakTimer;
      SBAXIconMoveSpeakTimer = v12;

      v11 = SBAXIconMoveSpeakTimer;
    }

    v14 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:{0.1, v43, v44, v45, v46}];
    [v11 setFireDate:v14];

    SBAXIconMovedIntoDock = 0;
    SBAXIconJustMovedIntoDock = 0;
    SBAXIconJustLeftDock = 0;
    v15 = [(SBIconDragManagerAccessibility *)self _axGrabbedIcons];
    v16 = [v15 firstObject];

    if (v16)
    {
      v17 = [v10 safeValueForKey:@"iconRowsForCurrentOrientation"];
      v18 = [v17 unsignedIntegerValue];

      v19 = [v10 safeValueForKey:@"iconColumnsForCurrentOrientation"];
      v20 = [v19 unsignedIntegerValue];

      v21 = [_axDragPauseForLocation_iconListView__previousIconList safeValueForKey:@"iconRowsForCurrentOrientation"];
      v22 = [v21 unsignedIntegerValue];

      v23 = v49[3];
      SBAXIconMovedY = v23 / v20 + 1;
      SBAXIconMovedX = v23 % v20 + 1;
      if (v18 == 1)
      {
        if (v22 == 1)
        {
          SBAXIconMovedIntoDock = 1;
          v24 = SBAXIconPreItemInDock;
          SBAXIconPreItemInDock = 0;

          v25 = SBAXIconNextItemInDock;
          SBAXIconNextItemInDock = 0;

          v26 = [v10 safeValueForKey:@"icons"];
          v27 = v26;
          if (v26 && [v26 count])
          {
            v28 = v49;
            v29 = v49[3];
            if (v29)
            {
              v30 = [v27 count];
              v28 = v49;
              if (v29 - 1 < v30)
              {
                v31 = [v27 objectAtIndex:v49[3] - 1];
                v32 = [v31 accessibilityLabel];
                v33 = SBAXIconPreItemInDock;
                SBAXIconPreItemInDock = v32;

                v28 = v49;
              }
            }

            v34 = v28[3];
            if (v34 < [v27 count] - 1)
            {
              v35 = [v27 objectAtIndex:v49[3] + 1];
              v36 = [v35 accessibilityLabel];
              v37 = SBAXIconNextItemInDock;
              SBAXIconNextItemInDock = v36;
            }
          }
        }

        else
        {
          SBAXIconJustMovedIntoDock = 1;
          SBAXIconMovedIntoDock = 1;
        }

        goto LABEL_25;
      }

      if (v22 == 1 && v18)
      {
        SBAXIconJustLeftDock = 1;
LABEL_25:
        v41 = [(SBIconDragManagerAccessibility *)self _axGrabbedIconsLabel];
        v42 = SBAXIconMovedIconLabel;
        SBAXIconMovedIconLabel = v41;

LABEL_26:
        objc_storeStrong(&_axDragPauseForLocation_iconListView__previousIconList, a4);
        _axDragPauseForLocation_iconListView__previousIconIndex = v49[3];
        goto LABEL_27;
      }

      v39 = [v9 safeValueForKey:@"hasOpenFolder"];

      if (!v39)
      {
        goto LABEL_25;
      }

      v40 = [v9 safeValueForKeyPath:@"openedFolder.displayName"];
      v38 = SBAXIconMovedFolderLabel;
      SBAXIconMovedFolderLabel = v40;
    }

    else
    {
      v38 = SBAXIconMovedFolderLabel;
      SBAXIconMovedFolderLabel = 0;
    }

    goto LABEL_25;
  }

LABEL_27:

  _Block_object_dispose(&v48, 8);
}

void __71__SBIconDragManagerAccessibility__axDragPauseForLocation_iconListView___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) iconAtPoint:*(*(a1 + 40) + 8) + 24 index:{*(a1 + 48), *(a1 + 56)}];
  if (!v1 || (NSClassFromString(&cfstr_Sbplaceholderi.isa), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [SBAXIconFolderOpeningTimer invalidate];
  }
}

- (void)_axUpdateDragPauseForLocation:(CGPoint)a3 iconListView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [a4 window];
  if ((SBAXPerformingAXDrag & 1) != 0 || !v6)
  {
    goto LABEL_29;
  }

  v29 = v6;
  v7 = [MEMORY[0x29EDC7C40] mainScreen];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  v12 = [v29 windowScene];
  v13 = [v12 interfaceOrientation];

  if ((v13 - 3) >= 2)
  {
    if ((x <= 20.0 || x > 50.0) && (x < v9 + -50.0 || x >= v9 + -20.0))
    {
      goto LABEL_18;
    }
  }

  else if ((y <= 20.0 || y > 50.0) && (y < v11 + -50.0 || y >= v11 + -20.0))
  {
LABEL_18:
    v16 = 0;
    goto LABEL_21;
  }

  if (_axUpdateDragPauseForLocation_iconListView__WantsNearedBorder)
  {
    goto LABEL_22;
  }

  v17 = *MEMORY[0x29EDC7EA8];
  v18 = accessibilityLocalizedString(@"nearing.border");
  UIAccessibilityPostNotification(v17, v18);

  v16 = 1;
LABEL_21:
  _axUpdateDragPauseForLocation_iconListView__WantsNearedBorder = v16;
LABEL_22:
  v19 = _axUpdateDragPauseForLocation_iconListView__previousCloseFolderTimerStatus;
  v20 = SBAXIconCloseFolderTimerStatus;
  v21 = AXSBHIconManagerFromSharedIconController();
  v22 = [v21 safeValueForKey:@"openedFolder"];

  v23 = SBAXIconCloseFolderTimerStatus;
  if (v22 && v19 != v20 && SBAXIconCloseFolderTimerStatus == 2)
  {
    if (SBAXIconOpenedFolderWhileJiggling == 1)
    {
      v24 = *MEMORY[0x29EDC7EA8];
      v25 = MEMORY[0x29EDBA0F8];
      v26 = accessibilityLocalizedString(@"dragged.inside.folder");
      v27 = [v22 safeValueForKey:@"displayName"];
      v28 = [v25 stringWithFormat:v26, v27];
      UIAccessibilityPostNotification(v24, v28);

      v23 = SBAXIconCloseFolderTimerStatus;
    }

    else
    {
      v23 = 2;
    }
  }

  _axUpdateDragPauseForLocation_iconListView__previousCloseFolderTimerStatus = v23;

  v6 = v29;
LABEL_29:
}

- (void)_accessibilityIconMovedToPosition
{
  v3 = [(SBIconDragManagerAccessibility *)self _axGrabbedIcons];
  v4 = [v3 count];

  if (v4 != 1)
  {
    goto LABEL_23;
  }

  if (!SBAXIconMovedIconLabel)
  {
    goto LABEL_23;
  }

  v5 = [(SBIconDragManagerAccessibility *)self _axRecipientIconView];

  if (v5)
  {
    goto LABEL_23;
  }

  if (SBAXIconMovedIntoDock == 1)
  {
    if (SBAXIconJustMovedIntoDock == 1)
    {
      v6 = MEMORY[0x29EDBA0F8];
      v7 = @"finished.moving.app.in.dock";
LABEL_14:
      v13 = accessibilityLocalizedString(v7);
      v14 = MEMORY[0x29ED38790](SBAXIconMovedX);
      v8 = [v6 stringWithFormat:v13, v14];

      goto LABEL_20;
    }

    if (SBAXIconPreItemInDock && SBAXIconNextItemInDock)
    {
      v6 = MEMORY[0x29EDBA0F8];
      v7 = @"moving.app.within.dock.middle";
      goto LABEL_14;
    }

    if (SBAXIconPreItemInDock)
    {
      v15 = @"moving.app.within.dock.last";
LABEL_19:
      v8 = accessibilityLocalizedString(v15);
      goto LABEL_20;
    }

    if (SBAXIconNextItemInDock)
    {
      v15 = @"moving.app.within.dock.first";
      goto LABEL_19;
    }
  }

  else if (_accessibilityIconMovedToPosition_LastX != SBAXIconMovedX || _accessibilityIconMovedToPosition_LastY != SBAXIconMovedY)
  {
    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilityLocalizedString(@"finished.moving.app");
    v11 = MEMORY[0x29ED38790](SBAXIconMovedY);
    v12 = MEMORY[0x29ED38790](SBAXIconMovedX);
    v8 = [v9 stringWithFormat:v10, v11, v12];

    _accessibilityIconMovedToPosition_LastY = SBAXIconMovedY;
    _accessibilityIconMovedToPosition_LastX = SBAXIconMovedX;
    goto LABEL_20;
  }

  v8 = 0;
LABEL_20:
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAE8]);
  if (v8)
  {
    v16 = objc_allocWithZone(MEMORY[0x29EDB8DC0]);
    v17 = [MEMORY[0x29EDBA070] numberWithInt:10];
    v18 = [v16 initWithObjectsAndKeys:{v17, *MEMORY[0x29EDBD860], 0}];

    v19 = [objc_allocWithZone(MEMORY[0x29EDB9F30]) initWithString:v8 attributes:v18];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v19);
  }

LABEL_23:
  v20 = SBAXIconMoveSpeakTimer;
  v21 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:2.0];
  [v20 setFireDate:v21];
}

- (void)iconDropSession:(id)a3 didPauseAtLocation:(CGPoint)a4 inIconListView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v35.receiver = self;
  v35.super_class = SBIconDragManagerAccessibility;
  [(SBIconDragManagerAccessibility *)&v35 iconDropSession:v9 didPauseAtLocation:v10 inIconListView:x, y];
  if ((SBAXPerformingAXDrag & 1) == 0)
  {
    v11 = [v10 _accessibilityWindow];
    if (!v11)
    {
LABEL_15:

      goto LABEL_16;
    }

    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__3;
    v33 = __Block_byref_object_dispose__3;
    v34 = 0;
    v28 = v10;
    AXPerformSafeBlock();
    v12 = v30[5];

    _Block_object_dispose(&v29, 8);
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__3;
    v33 = __Block_byref_object_dispose__3;
    v34 = 0;
    v27 = v28;
    v13 = v12;
    AXPerformSafeBlock();
    v14 = v30[5];

    _Block_object_dispose(&v29, 8);
    v15 = [(SBIconDragManagerAccessibility *)self _accessibilityGetLastAnnouncedIcon];
    if (v14 && (-[SBIconDragManagerAccessibility _axIconForIconView:](self, "_axIconForIconView:", v14), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 safeBoolForKey:@"isPlaceholder"], v16, (v17 & 1) == 0))
    {
      v22 = [v14 accessibilityLabel];
      v18 = v22;
      if (v14 != v15 && [v22 length])
      {
        v19 = [v14 safeBoolForKey:@"isFolderIcon"];
        v20 = @"dragged.over.app";
        v21 = @"dragged.over.folder";
        goto LABEL_10;
      }
    }

    else
    {
      v18 = [v15 accessibilityLabel];
      if ([v18 length])
      {
        v19 = [v15 safeBoolForKey:@"isFolderIcon"];
        v20 = @"dragged.off.app";
        v21 = @"dragged.off.folder";
LABEL_10:
        if (v19)
        {
          v23 = v21;
        }

        else
        {
          v23 = v20;
        }

        v24 = MEMORY[0x29EDBA0F8];
        v25 = accessibilityLocalizedString(v23);
        v26 = [v24 stringWithFormat:v25, v18];

        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v26);
      }
    }

    [(SBIconDragManagerAccessibility *)self _accessibilitySetLastAnnouncedIcon:v14];
    goto LABEL_15;
  }

LABEL_16:
}

uint64_t __84__SBIconDragManagerAccessibility_iconDropSession_didPauseAtLocation_inIconListView___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) iconAtPoint:0 index:{*(a1 + 48), *(a1 + 56)}];

  return MEMORY[0x2A1C71028]();
}

uint64_t __84__SBIconDragManagerAccessibility_iconDropSession_didPauseAtLocation_inIconListView___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) iconViewForIcon:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (void)_axScheduleAnnouncementForRow:(unint64_t)a3 col:(unint64_t)a4
{
  v7 = [(SBIconDragManagerAccessibility *)self _axRowColScheduledRow];
  if ([(SBIconDragManagerAccessibility *)self _axRowColScheduledCol]!= a4 || v7 != a3)
  {
    v8 = [(SBIconDragManagerAccessibility *)self _axRowColAnnouncementTimer];
    [v8 invalidate];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __68__SBIconDragManagerAccessibility__axScheduleAnnouncementForRow_col___block_invoke;
    v10[3] = &__block_descriptor_48_e17_v16__0__NSTimer_8l;
    v10[4] = a3;
    v10[5] = a4;
    v9 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:0 repeats:v10 block:1.0];

    [(SBIconDragManagerAccessibility *)self _axSetRowColAnnouncementTimer:v9];
    [(SBIconDragManagerAccessibility *)self _axSetRowColScheduledRow:a3];
    [(SBIconDragManagerAccessibility *)self _axSetRowColScheduledCol:a4];
  }
}

void __68__SBIconDragManagerAccessibility__axScheduleAnnouncementForRow_col___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"app.grid.location");
  v4 = MEMORY[0x29ED38790](*(a1 + 32));
  v5 = MEMORY[0x29ED38790](*(a1 + 40));
  v6 = [v2 stringWithFormat:v3, v4, v5];

  UIAccessibilitySpeakIfNotSpeaking();
}

- (id)_axGrabbedIconsLabel
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3;
  v8 = __Block_byref_object_dispose__3;
  v9 = &stru_2A230FAF0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

uint64_t __54__SBIconDragManagerAccessibility__axGrabbedIconsLabel__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __54__SBIconDragManagerAccessibility__axGrabbedIconsLabel__block_invoke_2;
  v3[3] = &unk_29F300488;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateIconDragContextsUsingBlock:v3];
}

void __54__SBIconDragManagerAccessibility__axGrabbedIconsLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = a2;
  if ([v3 safeBoolForKey:@"isUserActive"])
  {
    v4 = MEMORY[0x29EDB8E50];
    v5 = [v3 safeArrayForKey:@"draggedIcons"];
    v6 = [v4 setWithArray:v5];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v15 = [*(*(&v17 + 1) + 8 * i) accessibilityLabel];
          v16 = @"__AXStringForVariablesSentinel";
          v12 = __UIAXStringForVariables();
          v13 = *(*(a1 + 32) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:{16, v15, @"__AXStringForVariablesSentinel"}];
      }

      while (v9);
    }
  }
}

- (BOOL)_axIsIconDragging
{
  v2 = [(SBIconDragManagerAccessibility *)self _axGrabbedIconsLabel];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_axGrabbedIconView
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3;
  v8 = __Block_byref_object_dispose__3;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

uint64_t __52__SBIconDragManagerAccessibility__axGrabbedIconView__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __52__SBIconDragManagerAccessibility__axGrabbedIconView__block_invoke_2;
  v3[3] = &unk_29F300488;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateIconDragContextsUsingBlock:v3];
}

void __52__SBIconDragManagerAccessibility__axGrabbedIconView__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 safeBoolForKey:@"isUserActive"])
  {
    v3 = [v8 safeSetForKey:@"_sourceIconViews"];
    v4 = [v3 allObjects];
    v5 = [v4 firstObject];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

- (id)_axGrabbedIcons
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3;
  v8 = __Block_byref_object_dispose__3;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

uint64_t __49__SBIconDragManagerAccessibility__axGrabbedIcons__block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __49__SBIconDragManagerAccessibility__axGrabbedIcons__block_invoke_2;
  v3[3] = &unk_29F300488;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateIconDragContextsUsingBlock:v3];
}

void __49__SBIconDragManagerAccessibility__axGrabbedIcons__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 safeBoolForKey:@"isUserActive"])
  {
    v3 = [v6 safeArrayForKey:@"draggedIcons"];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

- (id)_axRecipientIconView
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__3;
  v8 = __Block_byref_object_dispose__3;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __54__SBIconDragManagerAccessibility__axRecipientIconView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"iconDragManager"];
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __54__SBIconDragManagerAccessibility__axRecipientIconView__block_invoke_2;
  v3[3] = &unk_29F300488;
  v3[4] = *(a1 + 40);
  [v2 enumerateIconDragContextsUsingBlock:v3];
}

void __54__SBIconDragManagerAccessibility__axRecipientIconView__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 safeBoolForKey:@"isUserActive"])
  {
    v3 = [v6 safeValueForKey:@"recipientIconView"];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

@end