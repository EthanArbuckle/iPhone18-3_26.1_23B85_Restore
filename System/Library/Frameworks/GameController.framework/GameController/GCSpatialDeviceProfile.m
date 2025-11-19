@interface GCSpatialDeviceProfile
@end

@implementation GCSpatialDeviceProfile

uint64_t __40___GCSpatialDeviceProfile_deviceManager__block_invoke(uint64_t a1)
{
  v2 = [_GCDefaultDeviceManager alloc];
  v3 = NSStringFromClass(*(a1 + 32));
  v4 = [(_GCDefaultDeviceManager *)v2 initWithIdentifier:v3 matchingFilter:*(a1 + 32) probeScore:*MEMORY[0x1E69A0678]];
  v5 = deviceManager_deviceManager_7;
  deviceManager_deviceManager_7 = v4;

  v6 = *(a1 + 32);
  v7 = deviceManager_deviceManager_7;

  return [v7 setDelegate:v6];
}

id __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke(uint64_t a1, void *a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_1();
  }

  v84 = 0;
  v3 = [v2 gc_requiredObjectForKey:@"UsagePage" ofClass:objc_opt_class() error:&v84];
  v4 = v84;
  if (v3)
  {
    v83 = 0;
    v5 = [v2 gc_requiredObjectForKey:@"Usage" ofClass:objc_opt_class() error:&v83];
    v6 = v83;

    if (v5)
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24) + 1;
      *(v7 + 24) = v8;
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 24) + 1;
      *(v9 + 24) = v10;
      v11 = objc_opt_new();
      [v11 parseXAxisForKey:v8];
      [v11 parseYAxisForKey:v10];
      v82 = 0;
      v12 = [v2 gc_objectForKey:@"Children" ofClass:objc_opt_class() error:&v82];
      v13 = v82;

      v69 = v3;
      v70 = v11;
      v67 = v10;
      v68 = v8;
      if (v12 || !v13)
      {
        v66 = v5;
        v17 = [v12 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v63 = v12;
          v81 = 0;
          v18 = [v17 gc_requiredObjectForKey:@"UsagePage" ofClass:objc_opt_class() error:&v81];
          v19 = v81;

          v80 = 0;
          v20 = [v17 gc_requiredObjectForKey:@"Usage" ofClass:objc_opt_class() error:&v80];
          v13 = v80;

          v64 = v18;
          v62 = v20;
          if (v18 && v20)
          {
            v21 = v18;
            v22 = [v18 unsignedIntValue];
            v23 = [v20 unsignedIntValue];
            if (v22 == 9)
            {
              v24 = v23;
              v25 = *(*(a1 + 40) + 8);
              v26 = *(v25 + 24) + 1;
              *(v25 + 24) = v26;
              v27 = objc_opt_new();
              v28 = v24;
              v29 = v26;
              [v27 setRequiredButtonNumber:v28];
              v60 = v27;
              [v27 parseButtonStateForKey:v26];
              v79 = 0;
              v61 = v17;
              v30 = [v17 gc_objectForKey:@"Children" ofClass:objc_opt_class() error:&v79];
              v31 = v79;

              v65 = v29;
              v59 = v30;
              if (v30 || !v31)
              {
                v58 = v2;
                v71 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v30, "count")}];
                v75 = 0u;
                v76 = 0u;
                v77 = 0u;
                v78 = 0u;
                v33 = v30;
                v34 = [v33 countByEnumeratingWithState:&v75 objects:v86 count:16];
                if (v34)
                {
                  v35 = v34;
                  v14 = 0;
                  v36 = *v76;
                  v37 = 0x1E695D000uLL;
                  do
                  {
                    for (i = 0; i != v35; ++i)
                    {
                      if (*v76 != v36)
                      {
                        objc_enumerationMutation(v33);
                      }

                      v39 = *(*(&v75 + 1) + 8 * i);
                      v40 = *(v37 + 3872);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v41 = objc_opt_class();
                        v74 = 0;
                        v42 = [v39 gc_requiredObjectForKey:@"UsagePage" ofClass:v41 error:&v74];
                        v43 = v74;

                        v44 = objc_opt_class();
                        v73 = 0;
                        v45 = [v39 gc_requiredObjectForKey:@"Usage" ofClass:v44 error:&v73];
                        v31 = v73;

                        LODWORD(v43) = [v42 unsignedIntValue];
                        v46 = [v45 unsignedIntValue] & 0xFFFFFFFE;
                        if (v43 == 32 && v46 == 18)
                        {
                          v48 = *(*(a1 + 40) + 8);
                          v14 = *(v48 + 24) + 1;
                          *(v48 + 24) = v14;
                          v49 = objc_opt_new();
                          [v49 parseFingerTouchForKey:v14];
                          [v71 addObject:v49];
                        }

                        v37 = 0x1E695D000;
                      }
                    }

                    v35 = [v33 countByEnumeratingWithState:&v75 objects:v86 count:16];
                  }

                  while (v35);
                }

                else
                {
                  v14 = 0;
                }

                v32 = v27;
                [v27 setChildEventParsers:v71];

                v2 = v58;
                v5 = v66;
                v11 = v70;
                v21 = v64;
              }

              else
              {
                v5 = v66;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_2();
                }

                v14 = 0;
                v21 = v64;
                v32 = v60;
              }

              v85 = v32;
              v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
              [v11 setChildEventParsers:v50];

              v13 = v31;
              v12 = v63;
              v17 = v61;
            }

            else
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_3();
              }

              v14 = 0;
              v65 = 0;
              v5 = v66;
              v12 = v63;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_2();
            }

            v14 = 0;
            v65 = 0;
            v5 = v66;
            v12 = v63;
            v21 = v64;
          }
        }

        else
        {
          v14 = 0;
          v65 = 0;
        }

        v6 = v13;
        v15 = v65;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_5();
        }

        v14 = 0;
        v15 = 0;
        v6 = v13;
      }

      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"thumbstick"];
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thumbstick"];
      v53 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v52, 0}];
      v54 = [MEMORY[0x1E69A06B0] descriptionWithIdentifier:v51];
      [v54 setAliases:v53];
      [v54 setLocalizedName:v52];
      [v54 setEventXValueField:v68];
      [v54 setEventYValueField:v67];
      [v54 setAnalogAxes:1];
      LODWORD(v55) = 1028443341;
      [v54 setDirectionPressedThreshold:v55];
      if (v15)
      {
        [v54 setSupportsPress:1];
        [v54 setEventPressValueField:v15];
      }

      v3 = v69;
      if (v14)
      {
        [v54 setSupportsTouch:1];
        [v54 setEventTouchValueField:v14];
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_6();
      }

      [*(a1 + 32) addObject:v54];

      v16 = v70;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_7();
      }

      v16 = 0;
    }

    v4 = v6;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_7();
    }

    v16 = 0;
  }

  v56 = *MEMORY[0x1E69E9840];

  return v16;
}

id __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157(uint64_t a1, void *a2)
{
  v72 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_1();
  }

  v70 = 0;
  v4 = [v3 gc_requiredObjectForKey:@"UsagePage" ofClass:objc_opt_class() error:&v70];
  v5 = v70;
  if (v4)
  {
    v69 = 0;
    v6 = [v3 gc_requiredObjectForKey:@"Usage" ofClass:objc_opt_class() error:&v69];
    v7 = v69;

    if (!v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_4();
      }

      v10 = 0;
      goto LABEL_81;
    }

    v68 = 0;
    v8 = [v3 gc_objectForKey:@"MultiBit" ofClass:objc_opt_class() error:&v68];
    v9 = v68;

    if (!v8 && v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_4();
      }

      v10 = 0;
      goto LABEL_80;
    }

    v11 = [v6 unsignedIntValue];
    v12 = [v8 BOOLValue];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 24) + 1;
    *(v13 + 24) = v14;
    v15 = objc_opt_new();
    v52 = v11;
    [v15 setRequiredButtonNumber:v11];
    v51 = v14;
    [v15 parseButtonStateForKey:v14];
    v60 = a1;
    v56 = v15;
    if (v12)
    {
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 24) + 1;
      *(v16 + 24) = v17;
      v50 = v17;
      [v15 parseButtonPressureForKey:?];
    }

    else
    {
      v50 = 0;
    }

    v67 = 0;
    v18 = [v3 gc_objectForKey:@"Children" ofClass:objc_opt_class() error:&v67];
    v19 = v67;

    v54 = v6;
    v55 = v4;
    v53 = v8;
    if (!v18 && v19)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_5();
      }

      v57 = 0;
      v58 = 0;
      v9 = v19;
LABEL_45:

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"button.%llu", v52];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Button %llu", v52];
      v41 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v40, 0}];
      v42 = v41;
      if (*(v60 + 48) == 1)
      {
        if (v52 <= 6)
        {
          switch(v52)
          {
            case 1:
              v43 = &GCInputButtonA;
              break;
            case 2:
              v43 = &GCInputButtonB;
              break;
            case 5:
              v43 = GCInputGripButton;
              break;
            default:
              goto LABEL_59;
          }

          goto LABEL_58;
        }

        switch(v52)
        {
          case 7:
            v43 = GCInputTrigger;
            goto LABEL_58;
          case 0xC8:
LABEL_63:
            v10 = 0;
            v4 = v55;
LABEL_79:

            v8 = v53;
            v6 = v54;
LABEL_80:

            v7 = v9;
LABEL_81:

            v5 = v7;
            goto LABEL_82;
          case 0xC9:
            v43 = &GCInputButtonMenu;
LABEL_58:
            [v41 addObject:*v43];
            break;
        }
      }

LABEL_59:
      if (*(v60 + 49) != 1)
      {
        goto LABEL_70;
      }

      if (v52 > 2)
      {
        if (v52 == 4)
        {
          v44 = &GCInputStylusSecondaryButton;
        }

        else
        {
          if (v52 != 3)
          {
            goto LABEL_70;
          }

          v44 = GCInputStylusPrimaryButton;
        }
      }

      else
      {
        if (v52 != 1)
        {
          if (v52 == 2)
          {
            goto LABEL_63;
          }

LABEL_70:
          v45 = [MEMORY[0x1E69A0690] descriptionWithIdentifier:v39];
          [v45 setAliases:v42];
          [v45 setLocalizedName:v40];
          [v45 setEventPressedValueField:v51];
          if (v50)
          {
            [v45 setAnalog:1];
            [v45 setEventAnalogPressValueField:v50];
          }

          if (v58)
          {
            [v45 setSupportsTouch:1];
            [v45 setEventTouchValueField:v58];
          }

          if (v57)
          {
            [v45 setSupportsForce:1];
            [v45 setEventForceValueField:v57];
          }

          v4 = v55;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_3();
          }

          [*(v60 + 32) addObject:v45];
          v10 = v56;

          goto LABEL_79;
        }

        v44 = GCInputStylusTip;
      }

      [v42 addObject:*v44];
      goto LABEL_70;
    }

    v49 = v3;
    v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v48 = v18;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (!v21)
    {
      v57 = 0;
      v58 = 0;
      goto LABEL_44;
    }

    v22 = v21;
    v57 = 0;
    v58 = 0;
    v23 = *v64;
LABEL_26:
    v24 = 0;
    while (1)
    {
      if (*v64 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v63 + 1) + 8 * v24);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_40;
      }

      v26 = objc_opt_class();
      v62 = 0;
      v27 = [v25 gc_requiredObjectForKey:@"UsagePage" ofClass:v26 error:&v62];
      v28 = v62;

      v29 = objc_opt_class();
      v61 = 0;
      v30 = [v25 gc_requiredObjectForKey:@"Usage" ofClass:v29 error:&v61];
      v19 = v61;

      v31 = [v27 unsignedIntValue];
      v32 = [v30 unsignedIntValue];
      if (v31 == 32 && (v32 & 0xFFFFFFFE) == 18)
      {
        v37 = *(*(v60 + 40) + 8);
        v38 = *(v37 + 24) + 1;
        *(v37 + 24) = v38;
        v36 = objc_opt_new();
        v58 = v38;
        [v36 parseFingerTouchForKey:v38];
      }

      else
      {
        if (v31 != 32 || v32 != 100)
        {
          goto LABEL_39;
        }

        v34 = *(*(v60 + 40) + 8);
        v35 = *(v34 + 24) + 1;
        *(v34 + 24) = v35;
        v36 = objc_opt_new();
        v57 = v35;
        [v36 parseForceForKey:v35];
      }

      [v59 addObject:v36];

LABEL_39:
LABEL_40:
      if (v22 == ++v24)
      {
        v22 = [v20 countByEnumeratingWithState:&v63 objects:v71 count:16];
        if (!v22)
        {
LABEL_44:

          [v56 setChildEventParsers:v59];
          v9 = v19;
          v18 = v48;
          v3 = v49;
          goto LABEL_45;
        }

        goto LABEL_26;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_4();
  }

  v10 = 0;
LABEL_82:

  v46 = *MEMORY[0x1E69E9840];

  return v10;
}

id __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_1();
    }

    v48 = 0;
    v4 = [v3 gc_requiredObjectForKey:@"UsagePage" ofClass:objc_opt_class() error:&v48];
    v5 = v48;
    if (v4)
    {
      v47 = 0;
      v6 = [v3 gc_requiredObjectForKey:@"Usage" ofClass:objc_opt_class() error:&v47];
      v7 = v47;

      if (v6)
      {
        v8 = objc_opt_new();
        v46 = 0;
        v9 = [v3 gc_objectForKey:@"Children" ofClass:objc_opt_class() error:&v46];
        v10 = v46;

        if (v9 || !v10)
        {
          v33 = v8;
          v34 = v6;
          v35 = v4;
          v36 = v3;
          v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v12 = v9;
          v13 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v43;
            v37 = a1 + 40;
            v39 = a1 + 32;
            v16 = 0x1E696A000uLL;
            do
            {
              v17 = 0;
              do
              {
                if (*v43 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v18 = *(*(&v42 + 1) + 8 * v17);
                v19 = *(v16 + 3480);
                v20 = objc_opt_class();
                v41 = 0;
                v21 = [v18 gc_requiredObjectForKey:@"UsagePage" ofClass:v20 error:&v41];
                v22 = v41;

                if (v21)
                {
                  v23 = *(v16 + 3480);
                  v24 = objc_opt_class();
                  v40 = 0;
                  v25 = [v18 gc_requiredObjectForKey:@"Usage" ofClass:v24 error:&v40];
                  v10 = v40;

                  if (v25)
                  {
                    v26 = [v21 unsignedIntValue];
                    v27 = v39;
                    if (v26 == 9 || [v21 unsignedIntValue] == 1 && (v30 = objc_msgSend(v25, "unsignedIntValue"), v27 = v37, v30 == 150))
                    {
                      v28 = (*(*v27 + 16))();
                      if (v28)
                      {
                        v29 = v28;
                        [v38 addObject:v28];
                      }
                    }
                  }

                  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_3(buf, v10, &v50);
                  }

                  v16 = 0x1E696A000;
                }

                else
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_3(v51, v22, &v52);
                  }

                  v10 = v22;
                }

                ++v17;
              }

              while (v14 != v17);
              v14 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
            }

            while (v14);
          }

          v8 = v33;
          [v33 setChildEventParsers:v38];

          v11 = v33;
          v4 = v35;
          v3 = v36;
          v6 = v34;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_2();
          }

          v11 = 0;
        }

        v7 = v10;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_2();
        }

        v11 = 0;
      }

      v5 = v7;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_2();
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v11;
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Processing thumbstick element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_32(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Error processing child element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_5()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_32(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Error processing element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Add thumbstick element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_cold_7()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_32(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Error processing thumbstick element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Processing button element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Add button element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_157_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_32(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Error processing button element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_4(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Processing root element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_32(&dword_1D2CD5000, MEMORY[0x1E69E9C10], v0, "Error processing root element: %@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void __95___GCSpatialDeviceProfile_logicalDevice_makeControllerInputDescriptionWithIdentifier_bindings___block_invoke_169_cold_3(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_1D2CD5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error processing top-level element: %@", buf, 0xCu);
}

@end