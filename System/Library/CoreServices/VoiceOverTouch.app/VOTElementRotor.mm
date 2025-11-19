@interface VOTElementRotor
- (BOOL)_customPublicRotorInRotor:(id)a3;
- (BOOL)customActionsAreDragDrop:(id)a3;
- (BOOL)customActionsAreValid:(id)a3;
- (BOOL)rotorTypeIsValid:(int64_t)a3 eventOrigin:(int64_t)a4;
- (VOTElementRotor)init;
- (id)_currentAvailableRotorItems;
- (id)_currentEnabledWebRotorItems;
- (int64_t)_firstNonGesturedTextInputRotorTypeWithFallback:(int64_t)a3;
- (void)_depromoteMLElementSupport;
- (void)_promoteGesturedTextInputRotorIfNeeded;
- (void)_updateWebRotorItems;
- (void)dealloc;
- (void)nanoUpdateRotorForElement:(id)a3;
- (void)updateRotorForElement:(id)a3 shouldPreserveRotorNavigation:(BOOL)a4 firstResponder:(id)a5;
@end

@implementation VOTElementRotor

- (VOTElementRotor)init
{
  v14.receiver = self;
  v14.super_class = VOTElementRotor;
  v2 = [(VOTRotor *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("vot-web-rotor-item-access-queue", 0);
    enabledWebRotorItemsQueue = v2->_enabledWebRotorItemsQueue;
    v2->_enabledWebRotorItemsQueue = v3;

    [(VOTElementRotor *)v2 _updateWebRotorItems];
    v5 = +[VOTConfiguration rootConfiguration];
    v6 = [v5 preferenceForKey:@"CurrentRotorTypeSimple"];
    v7 = [v6 intValue];

    if (sub_1000F8768(v7))
    {
      v7 = [(VOTElementRotor *)v2 _firstNonGesturedTextInputRotorTypeWithFallback:v7];
    }

    [(VOTRotor *)v2 setCurrentRotorType:v7 saveToPreferences:1 userInitiated:0];
    objc_initWeak(&location, v2);
    v8 = +[AXSettings sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B240C;
    v11[3] = &unk_1001C78D8;
    objc_copyWeak(&v12, &location);
    [v8 registerUpdateBlock:v11 forRetrieveSelector:"voiceOverRotorItems" withListener:v2];

    objc_destroyWeak(&v12);
    v9 = v2;
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  enabledWebRotorItemsQueue = self->_enabledWebRotorItemsQueue;
  self->_enabledWebRotorItemsQueue = 0;

  v4.receiver = self;
  v4.super_class = VOTElementRotor;
  [(VOTRotor *)&v4 dealloc];
}

- (int64_t)_firstNonGesturedTextInputRotorTypeWithFallback:(int64_t)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(VOTElementRotor *)self _currentAvailableRotorItems];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 objectForKey:@"VOTRotorType"];
        v11 = [v10 intValue];

        if (!sub_1000F8768(v11))
        {
          v12 = [v9 objectForKeyedSubscript:@"Enabled"];
          v13 = [v12 BOOLValue];

          if (v13)
          {
            a3 = v11;
            goto LABEL_12;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return a3;
}

- (BOOL)_customPublicRotorInRotor:(id)a3
{
  v4 = a3;
  if (sub_1000F8D8C(self->super._currentRotors, [VOTRotor rotorTypeForSystemRotorType:v4]) == -1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(VOTRotor *)self customPublicRotors];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
          v12 = [v11 isEqualToString:v4];

          if (v12)
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)_updateWebRotorItems
{
  v2 = +[NSMutableArray array];
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverRotorItems];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 mutableCopy];
        v11 = [v9 objectForKey:@"RotorItem"];
        v12 = [VOTRotor rotorTypeForPreferenceString:v11];

        if (v12)
        {
          [v10 setObject:v12 forKeyedSubscript:@"VOTRotorType"];
          v13 = [v9 objectForKeyedSubscript:@"Enabled"];
          [v10 setObject:v13 forKeyedSubscript:@"Enabled"];
        }

        [v2 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  enabledWebRotorItemsQueue = self->_enabledWebRotorItemsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B2A20;
  block[3] = &unk_1001C7778;
  block[4] = self;
  v21 = v2;
  v15 = v2;
  dispatch_sync(enabledWebRotorItemsQueue, block);
  v16 = [(VOTElementRotor *)self updatedWebRotorItemsCallback];

  if (v16)
  {
    v17 = [(VOTElementRotor *)self updatedWebRotorItemsCallback];
    (v17)[2](v17, self);
  }
}

- (id)_currentEnabledWebRotorItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000B2B2C;
  v10 = sub_1000B2B3C;
  v11 = 0;
  enabledWebRotorItemsQueue = self->_enabledWebRotorItemsQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B2B44;
  v5[3] = &unk_1001C77F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(enabledWebRotorItemsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_currentAvailableRotorItems
{
  v2 = [(VOTElementRotor *)self _currentEnabledWebRotorItems];
  v3 = [v2 mutableCopy];

  v4 = 0;
  v5 = 0;
  if ([v3 count])
  {
    do
    {
      v6 = v5;
      v5 = [v3 objectAtIndex:v4];

      v7 = [v5 objectForKey:@"VOTRotorType"];
      v8 = [v7 intValue];

      if (v8 == 24)
      {
        break;
      }

      ++v4;
    }

    while (v4 < [v3 count]);
  }

  if (v4 < [v3 count])
  {
    v9 = [v5 mutableCopy];
    [v9 setObject:kAXSVoiceOverTouchRotorItemBrailleInputLanguage forKeyedSubscript:@"RotorItem"];
    [v9 setObject:&off_1001DA028 forKeyedSubscript:@"VOTRotorType"];
    [v3 insertObject:v9 atIndex:v4 + 1];
  }

  return v3;
}

- (void)_depromoteMLElementSupport
{
  Count = CFArrayGetCount(self->super._currentRotors);
  v4 = sub_1000F8D8C(self->super._currentRotors, 0x42);
  if (v4 != -1 && Count >= 3 && v4 == Count - 1)
  {
    sub_1000FA620(self->super._currentRotors, 0x42);
    currentRotors = self->super._currentRotors;

    sub_1000FA60C(currentRotors, 0x42, Count - 2);
  }
}

- (void)_promoteGesturedTextInputRotorIfNeeded
{
  if (sub_1000F8D8C(self->super._currentRotors, 0x3C) != -1)
  {
    sub_1000FA620(self->super._currentRotors, 0x3C);
    v3 = sub_1000F8D8C(self->super._currentRotors, [(VOTRotor *)self currentRotorType]);
    sub_1000FA60C(self->super._currentRotors, 0x3C, v3 + 1);
  }

  temporaryRotorTypeNeedingPromotion = self->_temporaryRotorTypeNeedingPromotion;
  if (temporaryRotorTypeNeedingPromotion)
  {
    if (sub_1000F8D8C(self->super._currentRotors, temporaryRotorTypeNeedingPromotion) != -1)
    {
      sub_1000FA620(self->super._currentRotors, self->_temporaryRotorTypeNeedingPromotion);
      v5 = sub_1000F8D8C(self->super._currentRotors, [(VOTRotor *)self currentRotorType]);
      sub_1000FA60C(self->super._currentRotors, self->_temporaryRotorTypeNeedingPromotion, v5 + 1);
    }

    self->_temporaryRotorTypeNeedingPromotion = 0;
  }
}

- (void)nanoUpdateRotorForElement:(id)a3
{
  v4 = a3;
  currentRotors = self->super._currentRotors;
  if (currentRotors)
  {
    Copy = CFArrayCreateCopy(kCFAllocatorDefault, currentRotors);
  }

  else
  {
    Copy = CFArrayCreate(kCFAllocatorDefault, 0, 0, 0);
  }

  v7 = Copy;
  CFArrayRemoveAllValues(self->super._currentRotors);
  if ([v4 doesHaveTraits:kAXAdjustableTrait])
  {
    CFArrayAppendValue(self->super._currentRotors, 1);
  }

  v8 = [v4 customRotorActions];
  v33 = [VOTElement organizedActionsByCategory:v8];
  objc_storeStrong(&self->super._customRotorActionCategories, v33);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = self->super._customRotorActionCategories;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = v8;
    v30 = v7;
    v31 = self;
    v32 = v4;
    v35 = 0;
    v36 = *v42;
    v12 = UIAccessibilityCustomActionCategoryEdit;
    obj = v9;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v15 = [v14 actions];
        v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v38;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v38 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v37 + 1) + 8 * j);
              v21 = [v20 name];
              if ([v21 length])
              {
                v22 = [v20 categoryName];
                v23 = [v22 isEqualToString:v12];

                if (!v23)
                {
                  v35 = 1;
                  goto LABEL_22;
                }
              }

              else
              {
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v17);
        }

LABEL_22:
      }

      v11 = [(NSArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v11);

    self = v31;
    v4 = v32;
    v7 = v30;
    v8 = v29;
    if (v35)
    {
      CFArrayAppendValue(v31->super._currentRotors, 0x36);
    }
  }

  else
  {
  }

  Count = CFArrayGetCount(self->super._currentRotors);
  if (CFArrayGetCount(v7) == Count && Count >= 1)
  {
    v25 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v25);
      if (ValueAtIndex != CFArrayGetValueAtIndex(self->super._currentRotors, v25))
      {
        break;
      }

      if (Count == ++v25)
      {
        v25 = Count;
        break;
      }
    }

    if (v25 == Count)
    {
      v27 = v33;
      if (!v7)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  if (CFArrayGetCount(self->super._currentRotors) < 1)
  {
    v28 = 54;
  }

  else
  {
    v28 = CFArrayGetValueAtIndex(self->super._currentRotors, 0);
  }

  v27 = v33;
  [(VOTRotor *)self setCurrentRotorType:v28 saveToPreferences:0 userInitiated:0];
  if (v7)
  {
LABEL_40:
    CFRelease(v7);
  }

LABEL_41:
}

- (BOOL)rotorTypeIsValid:(int64_t)a3 eventOrigin:(int64_t)a4
{
  if (a3 == 54 && a4 == 2 && (-[VOTRotor delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 actionsRotorAddBehaviorForElementRotor:self], v7, v8 != 1))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = self->super._customRotorActionCategories;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v9 = 0;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v16 = [v15 actions];
          v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v24;
            while (2)
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v24 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                if (![*(*(&v23 + 1) + 8 * j) ignoreWhenVoiceOverTouches])
                {
                  v9 = 1;
                  goto LABEL_20;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = VOTElementRotor;
    v9 = [(VOTRotor *)&v22 rotorTypeIsValid:a3 eventOrigin:a4];
  }

  return v9 & 1;
}

- (void)updateRotorForElement:(id)a3 shouldPreserveRotorNavigation:(BOOL)a4 firstResponder:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  [(VOTRotor *)self setCurrentRotorElement:v8];
  Copy = CFArrayCreateCopy(kCFAllocatorDefault, self->super._currentRotors);
  v177 = sub_1000F8D8C(Copy, 0x35);
  CFArrayRemoveAllValues(self->super._currentRotors);
  [(VOTRotor *)self setCustomActionIndex:0];
  typeKey = self->super._typeKey;
  v204 = self;
  self->super._typeKey = @"CurrentRotorTypeSimple";

  v206 = v8;
  v12 = [v8 doesHaveTraits:kAXAdjustableTrait];
  v13 = 0;
  v178 = v12;
  if (v12)
  {
    v14 = VOTLogRotor();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10012DDC4();
    }

    v13 = 1;
    j__CFArrayAppendValue(self->super._currentRotors, 1);
  }

  if (AXDeviceSupportsSonification() && [v206 supportsAudiographs])
  {
    v15 = VOTLogRotor();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10012DDF8();
    }

    v13 = 65;
    j__CFArrayAppendValue(self->super._currentRotors, 0x41);
  }

  v195 = [v206 doesHaveTraits:kAXMathEquationTrait];
  if (v195 && [v206 canNavigateMathSegments])
  {
    v13 = [(VOTRotor *)self currentRotorType];
    if (!sub_1000FA5FC(v13))
    {
      v16 = VOTLogRotor();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_10012DE2C();
      }

      v13 = 55;
    }

    j__CFArrayAppendValue(self->super._currentRotors, 0x37);
    j__CFArrayAppendValue(self->super._currentRotors, 0x38);
    j__CFArrayAppendValue(self->super._currentRotors, 0x39);
    j__CFArrayAppendValue(self->super._currentRotors, 0x3A);
  }

  v184 = [v206 application];
  v17 = [v184 typingCandidateElements];
  v18 = [v17 count];

  if (v18)
  {
    if (![(VOTElementRotor *)v204 ignoreDefaultTypeAutofill])
    {
      v19 = VOTLogRotor();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_10012DE60();
      }

      v13 = 2;
    }

    j__CFArrayAppendValue(v204->super._currentRotors, 2);
  }

  v20 = v9;
  v186 = v13;
  cf = Copy;
  v21 = kAXWebContentTrait;
  v185 = [v206 doesHaveTraits:kAXWebContentTrait];
  if (((v195 | v185) & 1) == 0)
  {
    j__CFArrayAppendValue(v204->super._currentRotors, 3);
    j__CFArrayAppendValue(v204->super._currentRotors, 4);
  }

  v22 = kAXTextEntryTrait;
  v193 = kAXIsEditingTrait;
  v202 = [v206 doesHaveAllTraits:kAXIsEditingTrait | kAXTextEntryTrait];
  v23 = [v206 isReadingContent];
  v24 = [v206 label];
  v189 = kAXTextAreaTrait;
  v187 = v23;
  v173 = v6;
  v197 = v21;
  if ([v206 doesHaveTraits:?])
  {
    v27 = [NSNumber numberWithInteger:1];
    v25 = [NSNumber numberWithInteger:0];
    v26 = [NSDictionary dictionaryWithObjectsAndKeys:v27, @"lineNumber", v25, @"lineColumn", 0];

    LOBYTE(v27) = [v206 rangeForLineNumberAndColumn:v26] != 0x7FFFFFFFFFFFFFFFLL;
    v28 = v206;
    goto LABEL_32;
  }

  if (!v23)
  {
    LOBYTE(v27) = 0;
    v28 = v206;
LABEL_32:
    if ((([v28 doesHaveTraits:v189] | v23) & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  v29 = v24;
  v30 = [v206 stringForLineNumber:0];
  v31 = +[NSCharacterSet whitespaceCharacterSet];
  v32 = [v30 stringByTrimmingCharactersInSet:v31];

  v33 = [v206 pageContent];
  v34 = +[NSCharacterSet whitespaceCharacterSet];
  v35 = [v33 stringByTrimmingCharactersInSet:v34];

  if ([v32 length] && objc_msgSend(v35, "length"))
  {
    LODWORD(v27) = [v35 isEqualToString:v32] ^ 1;
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  v24 = v29;

  v28 = v206;
  [v206 doesHaveTraits:v189];
LABEL_36:
  v36 = [v28 previousTextNavigationElement];
  if (v36)
  {
    v37 = 1;
  }

  else
  {
    v38 = [v28 nextTextNavigationElement];
    v37 = v38 != 0;
  }

  LOBYTE(v27) = v27 | v37;
  v28 = v206;
LABEL_40:
  v179 = kAXKeyboardKeyTrait;
  v196 = [v28 doesHaveTraits:?];
  if (!v196)
  {
    v39 = [v28 textInputElement];
    v40 = v39;
    if (!v39)
    {
      v39 = v28;
    }

    v182 = [v39 value];

    if (v27)
    {
      goto LABEL_56;
    }

LABEL_46:
    if (v202)
    {
      if (!v182)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v182)
      {
        v41 = v196;
      }

      else
      {
        v41 = 0;
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if ([v182 rangeOfString:@"\n"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_56;
    }

LABEL_54:
    if (!v24 || [v24 rangeOfString:@"\n"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  v182 = [v20 value];
  if ((v27 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_56:
  if (!(v195 & 1 | ((v202 & 1 | ((v185 & 1) == 0) | v23 & 1) == 0)))
  {
    j__CFArrayAppendValue(v204->super._currentRotors, 5);
  }

LABEL_58:
  v180 = v24;
  v42 = [v28 customRotorActions];
  v43 = [v42 ax_firstObjectUsingBlock:&stru_1001CA500];

  v44 = v196 | [v28 textOperationsAvailable];
  if (v44 != 1)
  {
    if (!v43)
    {
      goto LABEL_64;
    }

    currentRotors = v204->super._currentRotors;
LABEL_63:
    j__CFArrayAppendValue(currentRotors, 0x13);
    goto LABEL_64;
  }

  v45 = [v28 doesHaveTraits:kAXMenuItemTrait];
  currentRotors = v204->super._currentRotors;
  if (!v45)
  {
    goto LABEL_63;
  }

  sub_1000FA60C(currentRotors, 0x13, 0);
LABEL_64:
  v47 = kAXMapTrait;
  if ([v28 doesHaveTraits:kAXMapTrait] & 1) != 0 || (objc_msgSend(v28, "touchContainer"), v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "doesHaveTraits:", v47), v48, v28 = v206, (v49))
  {
    v50 = VOTLogRotor();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      sub_10012DE94();
    }

    v186 = 20;
  }

  else if (([v206 doesHaveTraits:kAXSupportsZoomTrait] & 1) == 0)
  {
    goto LABEL_70;
  }

  j__CFArrayAppendValue(v204->super._currentRotors, 0x14);
LABEL_70:
  v51 = kAXSupportsTrackingDetailTrait;
  if (([v28 doesHaveTraits:kAXSupportsTrackingDetailTrait] & 1) != 0 || (objc_msgSend(v28, "touchContainer"), v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "doesHaveTraits:", v51), v52, v28 = v206, v53))
  {
    j__CFArrayAppendValue(v204->super._currentRotors, 0x3E);
  }

  v54 = [v28 containerTypes];
  v55 = [v54 containsObject:&off_1001DA040];

  if (v55)
  {
    j__CFArrayAppendValue(v204->super._currentRotors, 0x25);
  }

  v183 = v20;
  v56 = v204;
  if ((v185 & 1) != 0 || [v184 isSafari] && ((objc_msgSend(v206, "doesHaveTraits:", v193) | v187) & 1) == 0)
  {
    v57 = v204->super._typeKey;
    v204->super._typeKey = @"CurrentRotorTypeWeb";

    v200 = 1;
  }

  else
  {
    v200 = 0;
  }

  [(VOTElementRotor *)v204 _currentAvailableRotorItems];
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  obj = v216 = 0u;
  v58 = [obj countByEnumeratingWithState:&v213 objects:v217 count:16];
  if (v58)
  {
    v59 = v58;
    v146 = v43 == 0;
    v60 = *v214;
    v188 = v22 | v197;
    if (v146)
    {
      v61 = v44;
    }

    else
    {
      v61 = 1;
    }

    v190 = v61;
    v191 = kAXStatusBarElementTrait;
    do
    {
      v62 = 0;
      do
      {
        if (*v214 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v63 = *(*(&v213 + 1) + 8 * v62);
        v64 = [v63 valueForKey:@"RotorItem"];
        v65 = [VOTRotor rotorTypeForPreferenceString:v64];
        v66 = [v65 intValue];
        v67 = v66;

        if (v66 == 60)
        {
          v68 = [v63 valueForKey:@"Enabled"];
          v69 = [v68 BOOLValue];

          if (v69)
          {
            if (([v206 doesHaveTraitsForGesturedTextInput] & 1) != 0 || (objc_msgSend(v206, "application"), v70 = objc_claimAutoreleasedReturnValue(), v71 = objc_msgSend(v70, "isSoftwareKeyboardActive"), v70, v71))
            {
              if (![obj indexOfObject:v63])
              {
                v56->_temporaryRotorTypeNeedingPromotion = v67;
              }

              j__CFArrayAppendValue(v56->super._currentRotors, v67);
            }
          }
        }

        v72 = [v63 valueForKey:@"Enabled"];
        v73 = [v72 BOOLValue];

        if (v67 == 25)
        {
          v74 = +[AXSettings sharedInstance];
          v75 = [v74 voiceOverTouchBrailleDisplaySyncInputOutputTables] ^ 1;

          v76 = v75 | v73;
          v56 = v204;
        }

        else
        {
          v76 = (v67 == 24) | v73;
        }

        if (v67 == 69 || (v76 & 1) == 0)
        {
          if (v202)
          {
            goto LABEL_214;
          }

          switch(v67)
          {
            case 5:
              v78 = v56->super._currentRotors;
              v79 = 5;
              break;
            case 4:
              v78 = v56->super._currentRotors;
              v79 = 4;
              break;
            case 3:
              v78 = v56->super._currentRotors;
              v79 = 3;
              break;
            default:
              goto LABEL_214;
          }

          sub_1000FA620(v78, v79);
          goto LABEL_214;
        }

        if ((v196 | v202))
        {
          if (v67 != 6)
          {
            if (v67 == 21)
            {
              v77 = 21;
            }

            else
            {
              if (v67 != 22)
              {
                goto LABEL_117;
              }

              v77 = 22;
            }

            goto LABEL_116;
          }
        }

        else if (v67 != 6)
        {
          goto LABEL_117;
        }

        if (((v196 | [v206 doesHaveTraits:v188 | v189]) & 1) != 0 || objc_msgSend(v206, "supportsTextSelection"))
        {
          v77 = 6;
LABEL_116:
          j__CFArrayAppendValue(v56->super._currentRotors, v77);
        }

LABEL_117:
        if ((v195 | v185 ^ 1))
        {
          if (v67 <= 84)
          {
            if (v67 > 66)
            {
              switch(v67)
              {
                case 'C':
                  goto LABEL_167;
                case 'P':
LABEL_166:
                  v80 = v56->super._currentRotors;
                  v81 = 80;
                  goto LABEL_174;
                case 'Q':
                  goto LABEL_156;
              }

              goto LABEL_168;
            }

            if (v67 == 7)
            {
              goto LABEL_150;
            }

            goto LABEL_125;
          }

          if (v67 > 87)
          {
            if (v67 == 88)
            {
              goto LABEL_157;
            }

            goto LABEL_144;
          }

          if (v67 != 85)
          {
            if (v67 == 86)
            {
LABEL_154:
              v80 = v56->super._currentRotors;
              v81 = 86;
            }

            else
            {
LABEL_155:
              v80 = v56->super._currentRotors;
              v81 = 87;
            }

LABEL_174:
            j__CFArrayAppendValue(v80, v81);
            goto LABEL_175;
          }
        }

        else
        {
          if (v67 <= 80)
          {
            if (v67 <= 7)
            {
              switch(v67)
              {
                case 3:
                  v97 = 3;
LABEL_189:
                  j__CFArrayAppendValue(v56->super._currentRotors, v97);
LABEL_190:
                  sub_100050834();
                  goto LABEL_175;
                case 4:
                  v97 = 4;
                  goto LABEL_189;
                case 7:
LABEL_150:
                  v80 = v56->super._currentRotors;
                  v81 = 7;
                  goto LABEL_174;
              }

              goto LABEL_168;
            }

            if (v67 > 66)
            {
              if (v67 == 67)
              {
LABEL_167:
                v80 = v56->super._currentRotors;
                v81 = 67;
                goto LABEL_174;
              }

              if (v67 == 80)
              {
                goto LABEL_166;
              }

              goto LABEL_168;
            }

LABEL_125:
            if (v67 == 8)
            {
              if (v187)
              {
                goto LABEL_190;
              }

              v80 = v56->super._currentRotors;
              v81 = 8;
              goto LABEL_174;
            }

            if (v67 == 59)
            {
              v80 = v56->super._currentRotors;
              v81 = 59;
              goto LABEL_174;
            }

            goto LABEL_168;
          }

          if (v67 > 86)
          {
            if (v67 <= 90)
            {
              if (v67 == 87)
              {
                goto LABEL_155;
              }

              if (v67 == 88)
              {
LABEL_157:
                v80 = v56->super._currentRotors;
                v81 = 88;
                goto LABEL_174;
              }

              goto LABEL_168;
            }

LABEL_144:
            if (v67 == 91)
            {
              v84 = [VOTSharedWorkspace activities];
              v85 = [v84 count];

              if (!v85)
              {
                goto LABEL_190;
              }

              v80 = v56->super._currentRotors;
              v81 = 91;
              goto LABEL_174;
            }

            if (v67 == 95)
            {
              v80 = v56->super._currentRotors;
              v81 = 95;
              goto LABEL_174;
            }

            goto LABEL_168;
          }

          if (v67 == 81)
          {
LABEL_156:
            v80 = v56->super._currentRotors;
            v81 = 81;
            goto LABEL_174;
          }

          if (v67 != 85)
          {
            if (v67 == 86)
            {
              goto LABEL_154;
            }

LABEL_168:
            if (sub_100050834() && v67 == 38)
            {
              v80 = v56->super._currentRotors;
              v81 = 38;
              goto LABEL_174;
            }

            switch(v67)
            {
              case 0x17:
                v86 = [VOTSharedWorkspace votSettings];
                v87 = [v86 voiceRotors];
                v88 = [v87 count];

                if (v88)
                {
                  v80 = v56->super._currentRotors;
                  v81 = 23;
                  goto LABEL_174;
                }

                break;
              case 0x18:
                v98 = [VOTSharedWorkspace brailleLanguageRotorItems];
                if ([v98 count] <= 1)
                {
                  goto LABEL_229;
                }

                v99 = +[VOTBrailleManager manager];
                if (([v99 brailleEnabled] & 1) == 0)
                {
                  goto LABEL_228;
                }

                [v63 valueForKey:@"Enabled"];
                v101 = v100 = v99;
                v174 = [v101 BOOLValue];

                if (v174)
                {
                  v80 = v56->super._currentRotors;
                  v81 = 24;
                  goto LABEL_174;
                }

                break;
              case 0x19:
                v102 = +[AXSettings sharedInstance];
                v103 = [v102 voiceOverTouchBrailleDisplaySyncInputOutputTables];

                if ((v103 & 1) == 0)
                {
                  v98 = [VOTSharedWorkspace brailleLanguageRotorItems];
                  if ([v98 count] <= 1)
                  {
                    goto LABEL_229;
                  }

                  v99 = +[VOTBrailleManager manager];
                  if (([v99 brailleEnabled] & 1) == 0)
                  {
LABEL_228:

LABEL_229:
                    goto LABEL_175;
                  }

                  [v63 valueForKey:@"Enabled"];
                  v105 = v104 = v99;
                  v175 = [v105 BOOLValue];

                  if (v175)
                  {
                    v80 = v56->super._currentRotors;
                    v81 = 25;
                    goto LABEL_174;
                  }
                }

                break;
              default:
                if (v67 <= 31)
                {
                  if (v67 > 28)
                  {
                    if (v67 == 29)
                    {
                      if (![VOTSharedWorkspace hasActive2DBrailleDisplay])
                      {
                        goto LABEL_175;
                      }

                      v80 = v56->super._currentRotors;
                      v81 = 29;
                    }

                    else if (v67 == 30)
                    {
                      if (![VOTSharedWorkspace hasActive2DBrailleDisplay])
                      {
                        goto LABEL_175;
                      }

                      v80 = v56->super._currentRotors;
                      v81 = 30;
                    }

                    else
                    {
                      if (![VOTSharedWorkspace hasActive2DBrailleDisplay])
                      {
                        goto LABEL_175;
                      }

                      v80 = v56->super._currentRotors;
                      v81 = 31;
                    }

                    goto LABEL_174;
                  }

                  if (v67 == 26)
                  {
                    v112 = +[VOTBrailleManager manager];
                    v113 = [v112 brailleEnabled];

                    if (!v113)
                    {
                      goto LABEL_175;
                    }

                    v80 = v56->super._currentRotors;
                    v81 = 26;
                    goto LABEL_174;
                  }

                  if (v67 == 27)
                  {
                    if (![VOTSharedWorkspace hasActive2DBrailleDisplay])
                    {
                      goto LABEL_175;
                    }

                    v80 = v56->super._currentRotors;
                    v81 = 27;
                    goto LABEL_174;
                  }

                  if (v67 == 28 && [VOTSharedWorkspace hasActive2DBrailleDisplay])
                  {
                    v80 = v56->super._currentRotors;
                    v81 = 28;
                    goto LABEL_174;
                  }
                }

                else
                {
                  if (v67 > 65)
                  {
                    if (v67 > 88)
                    {
                      if (v67 == 89)
                      {
                        v108 = +[VOTOutputManager outputManager];
                        if (([v108 externalAudioRoutesAvailable] & 1) == 0)
                        {
                          goto LABEL_256;
                        }

                        v109 = +[VOTOutputManager outputManager];
                        if ([v109 externalAudioRoutesContainHDMIRoute])
                        {

LABEL_256:
                          goto LABEL_175;
                        }

                        v114 = +[VOTOutputManager outputManager];
                        v176 = [v114 externalAudioRouteIsHearingAid];

                        if (v176)
                        {
                          goto LABEL_175;
                        }

                        v80 = v56->super._currentRotors;
                        v81 = 89;
                      }

                      else
                      {
                        if (v67 != 90)
                        {
                          goto LABEL_175;
                        }

                        v80 = v56->super._currentRotors;
                        v81 = 90;
                      }
                    }

                    else if (v67 == 66)
                    {
                      if (![VOTSharedWorkspace automaticAccessibilityEnabled])
                      {
                        goto LABEL_175;
                      }

                      if (v206)
                      {
                        v106 = [v206 application];
                        v107 = [v106 bundleIdentifier];
                        if ((j__VOSProcessAllowsScreenRecognition() & 1) != 0 || [v206 isInAppSwitcher])
                        {
                        }

                        else
                        {
                          v115 = [v206 isInStatusBar];

                          if (!v115)
                          {
                            goto LABEL_175;
                          }
                        }
                      }

                      v80 = v56->super._currentRotors;
                      v81 = 66;
                    }

                    else
                    {
                      if (v67 != 68)
                      {
                        goto LABEL_175;
                      }

                      v80 = v56->super._currentRotors;
                      v81 = 68;
                    }

                    goto LABEL_174;
                  }

                  switch(v67)
                  {
                    case ' ':
                      if ([VOTSharedWorkspace hasActive2DBrailleDisplay])
                      {
                        v110 = +[VOTPlanarBrailleManager manager];
                        v111 = [v110 zoomOutActive];

                        if ((v111 & 1) == 0)
                        {
                          v80 = v56->super._currentRotors;
                          v81 = 32;
                          goto LABEL_174;
                        }
                      }

                      break;
                    case '*':
                      if (([VOTSharedWorkspace directTouchElementsPresent] & 1) != 0 || objc_msgSend(v206, "isInAppSwitcher"))
                      {
                        v80 = v56->super._currentRotors;
                        v81 = 42;
                        goto LABEL_174;
                      }

                      break;
                    case '=':
                      v80 = v56->super._currentRotors;
                      v81 = 61;
                      goto LABEL_174;
                    default:
                      goto LABEL_175;
                  }
                }

                break;
            }

            goto LABEL_175;
          }
        }

        v82 = [VOTSharedWorkspace punctuationGroups];
        v83 = [v82 count];

        if (v83)
        {
          v80 = v56->super._currentRotors;
          v81 = 85;
          goto LABEL_174;
        }

LABEL_175:
        if (v200 && ((v195 | v196 | [v206 doesHaveTraits:v191 | v193]) & 1) == 0)
        {
          v96 = v67;
          switch(v67)
          {
            case 5:
              sub_1000FA620(v56->super._currentRotors, 5);
              v96 = 5;
              break;
            case 9:
              break;
            case 10:
              v96 = 10;
              break;
            case 11:
              v96 = 11;
              break;
            case 12:
              v96 = 12;
              break;
            case 14:
              v96 = 14;
              break;
            case 15:
              v96 = 15;
              break;
            case 16:
              v96 = 16;
              break;
            case 17:
              v96 = 17;
              break;
            case 18:
              v96 = 18;
              break;
            case 20:
              v96 = 20;
              break;
            case 33:
              v96 = 33;
              break;
            case 34:
              v96 = 34;
              break;
            case 35:
              v96 = 35;
              break;
            case 36:
              v96 = 36;
              break;
            case 40:
              v96 = 40;
              break;
            case 41:
              v96 = 41;
              break;
            case 43:
              v96 = 43;
              break;
            case 44:
              v96 = 44;
              break;
            default:
              goto LABEL_177;
          }

          j__CFArrayAppendValue(v56->super._currentRotors, v96);
          sub_100050834();
        }

        else
        {
LABEL_177:
          if (sub_100050834() && v67 == 93)
          {
            if (!AXIsBuddyCompleted())
            {
              goto LABEL_214;
            }

            v89 = v56->super._currentRotors;
            v90 = 93;
            goto LABEL_184;
          }

          if (((v67 == 96) & v190) == 1)
          {
            v91 = +[VOTWorkspace sharedWorkspace];
            v92 = [v91 elementManager];
            [v92 clearExpiredCopiedSpeech];

            v93 = +[VOTWorkspace sharedWorkspace];
            v94 = [v93 elementManager];
            v95 = [v94 hasCopiedSpeech];

            if (v95)
            {
              v89 = v56->super._currentRotors;
              v90 = 96;
LABEL_184:
              j__CFArrayAppendValue(v89, v90);
            }
          }
        }

LABEL_214:

        v62 = v62 + 1;
      }

      while (v59 != v62);
      v116 = [obj countByEnumeratingWithState:&v213 objects:v217 count:16];
      v59 = v116;
    }

    while (v116);
  }

  if (([v206 shouldIncludeMediaDescriptionsRotor] & 1) != 0 || (objc_msgSend(v206, "application"), v117 = objc_claimAutoreleasedReturnValue(), v118 = objc_msgSend(v117, "areMediaLegibilityEventsBeingTapped"), v117, v118))
  {
    j__CFArrayAppendValue(v56->super._currentRotors, 0x3F);
  }

  v119 = [v206 customRotorActions];
  v198 = [VOTElement organizedActionsByCategory:v119];
  v120 = [(VOTElementRotor *)v56 customActionsAreDragDrop:?];
  v192 = [v206 shouldAddAlternateActionForLinkElement];
  v121 = [v206 customContent];
  v122 = [VOTSharedWorkspace elementManager];
  v123 = [v122 dragSessionActive];

  v124 = v186;
  if ([v206 doesHaveTraits:v179 | v193] && !v186)
  {
    v124 = [(VOTRotor *)v56 currentRotorType];
    if (sub_1000F80D4(v124))
    {
      v125 = VOTLogRotor();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
      {
        sub_10012DF54(v124, v125);
      }
    }

    else
    {
      if (![v206 doesHaveTraits:v179] || !-[VOTRotor currentSelectionRotorType](v56, "currentSelectionRotorType"))
      {
        if ([v119 count] && ((v120 ^ 1 | v123) & 1) != 0)
        {
          v124 = 54;
        }

        else if ([v121 count])
        {
          v124 = 92;
        }

        else
        {
          v124 = 3;
        }

LABEL_297:
        v126 = v56->super._currentRotors;
        v218.length = CFArrayGetCount(v126);
        v218.location = 0;
        if (CFArrayGetFirstIndexOfValue(v126, v218, 3) == -1)
        {
          j__CFArrayAppendValue(v56->super._currentRotors, 3);
        }

        goto LABEL_299;
      }

      v124 = [(VOTRotor *)v56 currentSelectionRotorType];
      v125 = VOTLogRotor();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
      {
        sub_10012DEC8(v56, v125);
      }
    }

    goto LABEL_297;
  }

LABEL_299:
  if ([(VOTElementRotor *)v56 showsWebSearchResults])
  {
    v124 = 39;
    j__CFArrayAppendValue(v56->super._currentRotors, 0x27);
  }

  if ((v185 & [v184 isSafariScribbleActive]) == 1)
  {
    v124 = 94;
    j__CFArrayAppendValue(v56->super._currentRotors, 0x5E);
  }

  v194 = v120;
  v199 = v121;
  v201 = v119;
  v203 = v56->super._customPublicRotors;
  v127 = objc_alloc_init(NSMutableArray);
  customPublicRotors = v56->super._customPublicRotors;
  v56->super._customPublicRotors = v127;

  if ([obj count])
  {
    v129 = 0;
    do
    {
      v130 = [obj objectAtIndex:v129];
      v131 = [v130 objectForKey:@"VOTRotorType"];
      v132 = [v131 intValue];

      v133 = [v130 objectForKey:@"Enabled"];
      v134 = [v133 BOOLValue];

      v135 = (v132 == 69) & v134;
      if (v135 == 1)
      {
        break;
      }

      ++v129;
    }

    while (v129 < [obj count]);
  }

  else
  {
    LOBYTE(v135) = 0;
  }

  v210[0] = _NSConcreteStackBlock;
  v210[1] = 3221225472;
  v210[2] = sub_1000B5280;
  v210[3] = &unk_1001CA528;
  v212 = v135;
  v210[4] = v56;
  v136 = v206;
  v211 = v136;
  v137 = objc_retainBlock(v210);
  (v137[2])(v137, v136, 0);
  if (v196)
  {
    (v137[2])(v137, v183, 1);
  }

  v138 = v124;
  if ([(NSMutableArray *)v204->super._customPublicRotors count])
  {
    j__CFArrayAppendValue(v204->super._currentRotors, 0x35);
    if ([(VOTRotor *)v204 publicCustomRotorIndex]== 0x7FFFFFFFFFFFFFFFLL)
    {
      v139 = 0;
    }

    else
    {
      v139 = [(NSMutableArray *)v203 count]- 1;
      v141 = [(VOTRotor *)v204 publicCustomRotorIndex];
      if (v139 >= v141)
      {
        v139 = v141;
      }
    }

    if ([(VOTRotor *)v204 currentRotorType]== 53 && [(NSMutableArray *)v203 count])
    {
      v142 = [(NSMutableArray *)v203 count];
      if (v142 == [(NSMutableArray *)v204->super._customPublicRotors count])
      {
        v143 = [(NSMutableArray *)v203 objectAtIndexedSubscript:v139];
        v144 = [(NSMutableArray *)v204->super._customPublicRotors objectAtIndexedSubscript:v139];
        v145 = [v143 isEqual:v144];
      }

      else
      {
        v145 = 0;
      }

      v138 = v124;
    }

    else
    {
      v145 = 0;
    }

    if (v138)
    {
      v146 = 0;
    }

    else
    {
      v146 = v177 == -1;
    }

    v140 = cf;
    if (v146 || v145)
    {
      v147 = VOTLogRotor();
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
      {
        sub_10012DFCC();
      }

      v138 = 53;
    }
  }

  else
  {
    v140 = cf;
  }

  v207 = [v136 customContent];
  if ([v207 count])
  {
    v138 = 92;
    j__CFArrayAppendValue(v204->super._currentRotors, 0x5C);
  }

  v209[0] = _NSConcreteStackBlock;
  v209[1] = 3221225472;
  v209[2] = sub_1000B5470;
  v209[3] = &unk_1001C7BC0;
  v209[4] = v204;
  v148 = [v198 ax_filteredArrayUsingBlock:v209];

  objc_storeStrong(&v204->super._customRotorActionCategories, v148);
  if (-[VOTElementRotor customActionsAreValid:](v204, "customActionsAreValid:", v204->super._customRotorActionCategories) || (-[VOTRotor delegate](v204, "delegate"), v149 = objc_claimAutoreleasedReturnValue(), v150 = [v149 actionsRotorAddBehaviorForElementRotor:v204], v149, v150 == 1))
  {
    j__CFArrayAppendValue(v204->super._currentRotors, 0x36);
    if (((v178 | v194 | v192) & 1) == 0)
    {
      v151 = VOTLogRotor();
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEBUG))
      {
        sub_10012E000();
      }

      v138 = 54;
    }
  }

  v208[0] = _NSConcreteStackBlock;
  v208[1] = 3221225472;
  v208[2] = sub_1000B5514;
  v208[3] = &unk_1001CA550;
  v208[4] = v204;
  [obj enumerateObjectsWithOptions:2 usingBlock:v208];
  Count = CFArrayGetCount(v204->super._currentRotors);
  if (([VOTSharedWorkspace updateRotorWithElement] & 1) != 0 || sub_1000F8D8C(v204->super._currentRotors, v204->super._currentRotorType) == -1)
  {
    if (CFArrayGetCount(v140) == Count && !v138)
    {
      if (Count < 1)
      {
        v153 = 0;
      }

      else
      {
        v153 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v140, v153);
          if (ValueAtIndex != CFArrayGetValueAtIndex(v204->super._currentRotors, v153))
          {
            break;
          }

          if (Count == ++v153)
          {
            goto LABEL_351;
          }
        }
      }

      if (v153 == Count)
      {
LABEL_351:
        v155 = v204;
        goto LABEL_360;
      }
    }

    v156 = [(VOTRotor *)v204 currentRotorType];
    if (v156 <= 0x35 && ((1 << v156) & 0x20006000000180) != 0 && v173)
    {
      v157 = v204;
      v158 = [(VOTRotor *)v204 currentRotorType];
      v159 = VOTLogRotor();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
      {
        sub_10012E034();
      }

      [(VOTElementRotor *)v204 _depromoteMLElementSupport];
      v160 = v158;
      goto LABEL_359;
    }

    v157 = v204;
    [(VOTElementRotor *)v204 _depromoteMLElementSupport];
    v160 = v138;
    if (v138)
    {
LABEL_359:
      [(VOTRotor *)v157 setCurrentRotorType:v160 saveToPreferences:0 userInitiated:0];
      v155 = v157;
LABEL_360:
      [(VOTElementRotor *)v155 _promoteGesturedTextInputRotorIfNeeded];
      if (v140)
      {
        CFRelease(v140);
      }

      goto LABEL_380;
    }

    v161 = +[VOTConfiguration rootConfiguration];
    v162 = [v161 preferenceForKey:v204->super._typeKey];

    if (v162 && (v163 = [v162 intValue], v219.location = 0, v219.length = Count, CFArrayContainsValue(v204->super._currentRotors, v219, v163)) && !sub_1000F8768(v163))
    {
      v167 = v204;
      v168 = v163;
    }

    else
    {
      if (![(NSString *)v204->super._typeKey isEqualToString:@"CurrentRotorTypeSimple"])
      {
        v164 = +[VOTConfiguration rootConfiguration];
        v165 = [v164 preferenceForKey:@"CurrentRotorTypeSimple"];

        if (v165)
        {
          v166 = [v165 intValue];
          v220.location = 0;
          v220.length = Count;
          if (CFArrayContainsValue(v204->super._currentRotors, v220, v166) && !sub_1000F8768(v166))
          {
            [(VOTRotor *)v204 setCurrentRotorType:v166 saveToPreferences:0 userInitiated:0];
            v171 = +[VOTConfiguration rootConfiguration];
            v172 = [NSNumber numberWithInteger:v204->super._currentRotorType];
            [v171 setPreference:v172 forKey:v204->super._typeKey];

            [(VOTElementRotor *)v204 _promoteGesturedTextInputRotorIfNeeded];
            v162 = v165;
            goto LABEL_377;
          }

          v162 = v165;
        }

        else
        {
          v162 = 0;
        }
      }

      if (CFArrayGetCount(v204->super._currentRotors) >= 1)
      {
        [(VOTRotor *)v204 setCurrentRotorType:[(VOTElementRotor *)v204 _firstNonGesturedTextInputRotorTypeWithFallback:CFArrayGetValueAtIndex(v204->super._currentRotors saveToPreferences:0)] userInitiated:0, 0];
        v169 = +[VOTConfiguration rootConfiguration];
        v170 = [NSNumber numberWithInteger:v204->super._currentRotorType];
        [v169 setPreference:v170 forKey:v204->super._typeKey];

LABEL_376:
        [(VOTElementRotor *)v204 _promoteGesturedTextInputRotorIfNeeded];
LABEL_377:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_380;
      }

      v167 = v204;
      v168 = 3;
    }

    [(VOTRotor *)v167 setCurrentRotorType:v168 saveToPreferences:0 userInitiated:0];
    goto LABEL_376;
  }

LABEL_380:
}

- (BOOL)customActionsAreValid:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) actions];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000B575C;
        v14[3] = &unk_1001C9CD8;
        v14[4] = self;
        v10 = [v9 indexesOfObjectsPassingTest:v14];
        v11 = [v10 count];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)customActionsAreDragDrop:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v11 actions];
          v13 = [v12 indexesOfObjectsPassingTest:&stru_1001CA590];
          v7 += [v13 count];

          v14 = [v11 actions];
          v8 += [v14 count];
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    v15 = v7 == v8;
    v3 = v17;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end