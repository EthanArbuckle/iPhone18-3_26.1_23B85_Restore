@interface IOHIDUPSClass
- (BOOL)pollEventUpdate;
- (BOOL)updateEvent;
- (IOHIDUPSClass)init;
- (id)copyElements:(id)a3 psKey:(id)a4;
- (id)latestElement:(id)a3 psKey:(id)a4;
- (int)createAsyncEventSource:(const void *)a3;
- (int)getCapabilities:(const __CFSet *)a3;
- (int)getEvent:(const __CFDictionary *)a3;
- (int)getProperties:(const __CFDictionary *)a3;
- (int)probe:(id)a3 service:(unsigned int)a4 outScore:(int *)a5;
- (int)queryInterface:(id)a3 outInterface:(void *)a4;
- (int)sendCommand:(id)a3;
- (int)setEventCallback:(void *)a3 target:(void *)a4 refcon:(void *)a5;
- (int)start:(id)a3 service:(unsigned int)a4;
- (int)stop;
- (void)dealloc;
- (void)initialEventUpdate;
- (void)parseElements:(id)a3;
- (void)parseProperties:(id)a3;
- (void)updateElements:(id)a3;
@end

@implementation IOHIDUPSClass

- (int)queryInterface:(id)a3 outInterface:(void *)a4
{
  v6 = CFUUIDCreateFromUUIDBytes(0, a3);
  v7 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x29EDB8EF0], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu), CFEqual(v6, v8)))
  {
    v9 = &OBJC_IVAR___IOHIDPlugin__plugin;
  }

  else
  {
    v12 = CFUUIDGetConstantUUIDWithBytes(0, 0x63u, 0xF8u, 0xBFu, 0xC4u, 0x26u, 0xA0u, 0x11u, 0xD8u, 0x88u, 0xB4u, 0, 0xAu, 0x95u, 0x8Au, 0x2Cu, 0x78u);
    if (!CFEqual(v6, v12))
    {
      v13 = CFUUIDGetConstantUUIDWithBytes(0, 0xE6u, 0xEu, 7u, 0x99u, 0x9Au, 0xA6u, 0x49u, 0xDFu, 0xB5u, 0x5Bu, 0xA5u, 0xC9u, 0x4Bu, 0xA0u, 0x7Au, 0x4Au);
      if (!CFEqual(v6, v13))
      {
        v10 = -2147483644;
        if (!v6)
        {
          return v10;
        }

        goto LABEL_5;
      }
    }

    v9 = &OBJC_IVAR___IOHIDUPSClass__ups;
  }

  *a4 = self + *v9;
  CFRetain(self);
  v10 = 0;
  if (v6)
  {
LABEL_5:
    CFRelease(v6);
  }

  return v10;
}

- (int)probe:(id)a3 service:(unsigned int)a4 outScore:(int *)a5
{
  if (IOObjectConformsTo(a4, "IOHIDDevice"))
  {
    return 0;
  }

  else
  {
    return -536870201;
  }
}

- (void)parseProperties:(id)a3
{
  v50 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Transport");
  objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v7, v6, @"Transport Type");

  v9 = objc_msgSend_objectForKeyedSubscript_(v4, v8, @"Product");
  objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v10, v9, @"Name");

  v12 = objc_msgSend_objectForKeyedSubscript_(self->_properties, v11, @"Name");

  if (!v12)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(v4, v13, @"Manufacturer");
    objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v15, v14, @"Name");
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(v4, v13, @"VendorID");
  objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v17, v16, @"Vendor ID");

  v19 = objc_msgSend_objectForKeyedSubscript_(v4, v18, @"ProductID");
  objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v20, v19, @"Product ID");

  v22 = objc_msgSend_objectForKeyedSubscript_(v4, v21, @"SerialNumber");
  objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v23, v22, @"Accessory Identifier");

  v25 = objc_msgSend_objectForKey_(v4, v24, @"ModelNumber");

  if (v25)
  {
    v27 = objc_msgSend_objectForKey_(v4, v26, @"ModelNumber");
    objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v28, v27, @"Model Number");
  }

  v29 = objc_msgSend_objectForKeyedSubscript_(v4, v26, @"PrimaryUsagePage");
  v32 = objc_msgSend_intValue(v29, v30, v31);

  v34 = objc_msgSend_objectForKeyedSubscript_(v4, v33, @"PrimaryUsage");
  v37 = objc_msgSend_intValue(v34, v35, v36);

  v39 = objc_msgSend_objectForKeyedSubscript_(v4, v38, @"Accessory Category");

  if (v39)
  {
    v41 = objc_msgSend_objectForKeyedSubscript_(v4, v40, @"Accessory Category");
    objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v42, v41, @"Accessory Category");
  }

  else if (v32 == 1 && v37 == 6)
  {
    objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v40, @"Keyboard", @"Accessory Category");
  }

  else if (v32 == 1 && v37 == 2)
  {
    objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v40, @"Mouse", @"Accessory Category");
  }

  else
  {
    v43 = objc_msgSend_objectForKeyedSubscript_(v4, v40, @"GameControllerType");

    if (v43)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_properties, v44, @"Game Controller", @"Accessory Category");
    }
  }

  v45 = _IOHIDLogCategory();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    properties = self->_properties;
    v48 = 138412290;
    v49 = properties;
    _os_log_impl(&dword_29D3EE000, v45, OS_LOG_TYPE_DEFAULT, "properties: %@", &v48, 0xCu);
  }

  v47 = *MEMORY[0x29EDCA608];
}

- (void)parseElements:(id)a3
{
  v103 = *MEMORY[0x29EDCA608];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = a3;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v95, v102, 16);
  if (v87)
  {
    v86 = *v96;
    do
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v96 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v95 + 1) + 8 * i);
        v8 = [HIDLibElement alloc];
        v10 = objc_msgSend_initWithElementRef_(v8, v9, v7);
        v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
        v14 = objc_msgSend_type(v10, v12, v13);
        v17 = objc_msgSend_type(v10, v15, v16);
        v20 = objc_msgSend_usagePage(v10, v18, v19);
        if (v20 <= 132)
        {
          if (v20 == 6)
          {
            if (objc_msgSend_usage(v10, v21, v22) != 32)
            {
              goto LABEL_120;
            }

LABEL_31:
            objc_msgSend_setPsKey_(v10, v21, @"Current Capacity");
            goto LABEL_120;
          }

          if (v20 == 132)
          {
            v24 = objc_msgSend_usage(v10, v21, v22);
            if (v24 > 85)
            {
              if (v24 <= 89)
              {
                if (v24 == 86)
                {
                  if (v14 >= 5)
                  {
                    objc_msgSend_setPsKey_(v10, v21, @"Startup Delay");
                  }
                }

                else if (v24 == 87 && v14 >= 5)
                {
                  objc_msgSend_setPsKey_(v10, v21, @"Delayed Remove Power");
                }
              }

              else if (v24 == 90)
              {
                if (v14 >= 5)
                {
                  objc_msgSend_setPsKey_(v10, v21, @"Enable Audible Alarm");
                }
              }

              else if (v24 == 98)
              {
                objc_msgSend_setPsKey_(v10, v21, @"Internal Failure");
              }

              else if (v24 == 109 && v14 >= 5)
              {
                objc_msgSend_setPsKey_(v10, v21, @"Enable Charging");
              }
            }

            else if (v24 <= 53)
            {
              if (v24 == 48)
              {
                objc_msgSend_setPsKey_(v10, v21, @"Voltage");
              }

              else if (v24 == 49)
              {
                objc_msgSend_setPsKey_(v10, v21, @"Current");
              }
            }

            else
            {
              switch(v24)
              {
                case '6':
                  if (v17 == 129)
                  {
                    objc_msgSend_setPsKey_(v10, v21, @"Send Current Temperature");
                  }

                  else
                  {
                    objc_msgSend_setPsKey_(v10, v21, @"Temperature");
                  }

                  break;
                case '@':
                  if (v14 >= 5)
                  {
                    objc_msgSend_setPsKey_(v10, v21, @"Set Required Voltage");
                  }

                  break;
                case 'A':
                  if (v14 > 4)
                  {
                    if (v17 == 129)
                    {
                      objc_msgSend_setPsKey_(v10, v21, @"Set Current Limit");
                    }
                  }

                  else
                  {
                    objc_msgSend_setPsKey_(v10, v21, @"Battery Case Available Current");
                  }

                  break;
              }
            }
          }
        }

        else
        {
          switch(v20)
          {
            case 133:
              v25 = objc_msgSend_usage(v10, v21, v22);
              if (v25 <= 102)
              {
                if ((v25 - 68) < 2)
                {
                  objc_msgSend_setPsKey_(v10, v21, @"Is Charging");
                }

                else if ((v25 - 101) < 2)
                {
                  if (v17 != 129)
                  {
                    goto LABEL_31;
                  }

                  objc_msgSend_setPsKey_(v10, v21, @"Send Current State of Charge");
                }
              }

              else if (v25 <= 105)
              {
                if (v25 == 103)
                {
                  objc_msgSend_setPsKey_(v10, v21, @"Max Capacity");
                }

                else if (v25 == 104)
                {
                  objc_msgSend_setPsKey_(v10, v21, @"Time to Empty");
                }
              }

              else
              {
                switch(v25)
                {
                  case 106:
                    objc_msgSend_setPsKey_(v10, v21, @"Time to Full Charge");
                    break;
                  case 107:
                    objc_msgSend_setPsKey_(v10, v21, @"CycleCount");
                    break;
                  case 208:
                    objc_msgSend_setPsKey_(v10, v21, @"Power Source State");
                    break;
                }
              }

              break;
            case 65280:
              if (objc_msgSend_usage(v10, v21, v22) == 33)
              {
                objc_msgSend_setPsKey_(v10, v21, @"Device Color");
LABEL_115:
                objc_msgSend_setIsConstant_(v10, v26, 1);
              }

              break;
            case 65293:
              v23 = objc_msgSend_usage(v10, v21, v22);
              if (v23 > 4095)
              {
                switch(v23)
                {
                  case 4096:
                    objc_msgSend_setPsKey_(v10, v21, @"PowerStatus");
                    break;
                  case 4097:
                    objc_msgSend_setPsKey_(v10, v21, @"ChargingStatus");
                    break;
                  case 4098:
                    objc_msgSend_setPsKey_(v10, v21, @"InductiveStatus");
                    break;
                }
              }

              else
              {
                switch(v23)
                {
                  case 1:
                    objc_msgSend_setPsKey_(v10, v21, @"AppleRawCurrentCapacity");
                    break;
                  case 2:
                    objc_msgSend_setPsKey_(v10, v21, @"Nominal Capacity");
                    break;
                  case 3:
                    objc_msgSend_setPsKey_(v10, v21, @"Battery Case Cumulative Current");
                    break;
                  case 4:
                    objc_msgSend_setPsKey_(v10, v21, @"FamilyCode");
                    break;
                  case 5:
                    if (v17 == 129)
                    {
                      objc_msgSend_setPsKey_(v10, v21, @"Set Address");
                    }

                    else
                    {
                      objc_msgSend_setPsKey_(v10, v21, @"Address");
                    }

                    break;
                  case 6:
                    objc_msgSend_setPsKey_(v10, v21, @"Battery Case Charging Voltage");
                    break;
                  case 7:
                    if (v17 == 129)
                    {
                      objc_msgSend_setPsKey_(v10, v21, @"Send Average Charging Current");
                    }

                    else
                    {
                      objc_msgSend_setPsKey_(v10, v21, @"Battery Case Average Charging Current");
                    }

                    break;
                  case 11:
                    objc_msgSend_setPsKey_(v10, v21, @"Incoming Voltage");
                    break;
                  case 12:
                    objc_msgSend_setPsKey_(v10, v21, @"Incoming Current");
                    break;
                  case 13:
                    objc_msgSend_setPsKey_(v10, v21, @"Cell 0 Voltage");
                    break;
                  case 14:
                    objc_msgSend_setPsKey_(v10, v21, @"Cell 1 Voltage");
                    break;
                  case 16:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Cell0 Max Voltage");
                    goto LABEL_115;
                  case 17:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Cell1 Max Voltage");
                    goto LABEL_115;
                  case 18:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Cell0 Min Voltage");
                    goto LABEL_115;
                  case 19:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Cell1 Min Voltage");
                    goto LABEL_115;
                  case 20:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Max Charge Current");
                    goto LABEL_115;
                  case 21:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Max Discharge Current");
                    goto LABEL_115;
                  case 22:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Max Temperature");
                    goto LABEL_115;
                  case 23:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Min Temperature");
                    goto LABEL_115;
                  case 24:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Firmware Runtime");
                    goto LABEL_115;
                  case 25:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Time Below Low Temperature");
                    goto LABEL_115;
                  case 26:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Time Above Low Temperature");
                    goto LABEL_115;
                  case 27:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Time Above Mid Temperature");
                    goto LABEL_115;
                  case 28:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Time Above High Temperature");
                    goto LABEL_115;
                  case 29:
                    objc_msgSend_setPsKey_(v10, v21, @"Kiosk Mode Count");
                    goto LABEL_115;
                  case 30:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count Device Type 0");
                    goto LABEL_115;
                  case 31:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count Device Type 1");
                    goto LABEL_115;
                  case 32:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count AirPods Case");
                    goto LABEL_115;
                  case 33:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count Other");
                    goto LABEL_115;
                  case 34:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count Less Than 5W Adapter");
                    goto LABEL_115;
                  case 35:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count 5W Adapter");
                    goto LABEL_115;
                  case 36:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count 7.5W Adapter");
                    goto LABEL_115;
                  case 37:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count 10.5W Adapter");
                    goto LABEL_115;
                  case 38:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count 12W Adapter");
                    goto LABEL_115;
                  case 39:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count 15W Adapter");
                    goto LABEL_115;
                  case 40:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count 18 - 20W Adapter");
                    goto LABEL_115;
                  case 41:
                    objc_msgSend_setPsKey_(v10, v21, @"Attach Count Over 20W Adapter");
                    goto LABEL_115;
                  case 42:
                    objc_msgSend_setPsKey_(v10, v21, @"Host Available Power dW");
                    break;
                  case 43:
                    objc_msgSend_setPsKey_(v10, v21, @"Rx Power Limit");
                    break;
                  case 44:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Cell0 Max Q");
                    goto LABEL_115;
                  case 45:
                    objc_msgSend_setPsKey_(v10, v21, @"Lifetime Cell1 Max Q");
                    goto LABEL_115;
                  default:
                    goto LABEL_120;
                }
              }

              break;
          }
        }

LABEL_120:
        v27 = objc_msgSend_psKey(v10, v21, v22);

        if (v27)
        {
          v85 = v17;
          v88 = i;
          v29 = v14;
          p_elements = &self->_elements;
          objc_msgSend_addObjectsFromArray_(v11, v28, self->_elements.input);
          objc_msgSend_addObjectsFromArray_(v11, v31, self->_elements.output);
          objc_msgSend_addObjectsFromArray_(v11, v32, self->_elements.feature);
          v35 = objc_msgSend_psKey(v10, v33, v34);
          v36 = self;
          v89 = v11;
          v38 = objc_msgSend_copyElements_psKey_(self, v37, v11, v35);

          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v39 = v38;
          v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v91, v101, 16);
          if (v41)
          {
            v44 = v41;
            v45 = *v92;
            do
            {
              for (j = 0; j != v44; ++j)
              {
                if (*v92 != v45)
                {
                  objc_enumerationMutation(v39);
                }

                v47 = *(*(&v91 + 1) + 8 * j);
                v48 = objc_msgSend_usagePage(v47, v42, v43);
                if (v48 == objc_msgSend_usagePage(v10, v49, v50))
                {
                  v51 = objc_msgSend_usage(v47, v42, v43);
                  if (v51 == objc_msgSend_usage(v10, v52, v53))
                  {
                    objc_msgSend_type(v47, v42, v43);
                    objc_msgSend_type(v10, v54, v55);
                  }
                }
              }

              v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v42, &v91, v101, 16);
            }

            while (v44);
          }

          self = v36;
          capabilities = v36->_capabilities;
          v59 = objc_msgSend_psKey(v10, v57, v58);
          objc_msgSend_addObject_(capabilities, v60, v59);

          if (v29 > 4)
          {
            i = v88;
            if (v85 == 129)
            {
              objc_msgSend_addObject_(p_elements->output, v61, v10);
            }

            else
            {
              objc_msgSend_addObject_(p_elements->feature, v61, v10);
              v62 = _IOHIDLogCategory();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
              {
                v65 = objc_msgSend_usagePage(v10, v63, v64);
                v68 = objc_msgSend_usage(v10, v66, v67);
                *buf = 67109376;
                *v100 = v65;
                *&v100[4] = 1024;
                *&v100[6] = v68;
                _os_log_impl(&dword_29D3EE000, v62, OS_LOG_TYPE_DEFAULT, "Feature element (UP : %x, U : %x) added for polling", buf, 0xEu);
              }

              if (!v36->_timer)
              {
                v69 = _IOHIDLogCategory();
                if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_29D3EE000, v69, OS_LOG_TYPE_DEFAULT, "Create time for polling feature reports", buf, 2u);
                }

                v70 = objc_alloc(MEMORY[0x29EDB8E68]);
                v73 = objc_msgSend_date(MEMORY[0x29EDB8DB0], v71, v72);
                v90[0] = MEMORY[0x29EDCA5F8];
                v90[1] = 3221225472;
                v90[2] = sub_29D3F4AF0;
                v90[3] = &unk_29F34D190;
                v90[4] = v36;
                v75 = objc_msgSend_initWithFireDate_interval_repeats_block_(v70, v74, v73, 1, v90, 5.0);
                timer = v36->_timer;
                v36->_timer = v75;
              }
            }

            v11 = v89;
          }

          else
          {
            objc_msgSend_addObject_(p_elements->input, v61, v10);
            i = v88;
            v11 = v89;
          }
        }

        else
        {
          v39 = 0;
        }
      }

      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v77, &v95, v102, 16);
    }

    while (v87);
  }

  objc_msgSend_addObjectsFromArray_(self->_commandElements, v5, self->_elements.output);
  objc_msgSend_addObjectsFromArray_(self->_commandElements, v78, self->_elements.feature);
  objc_msgSend_addObjectsFromArray_(self->_eventElements, v79, self->_elements.input);
  objc_msgSend_addObjectsFromArray_(self->_eventElements, v80, self->_elements.feature);
  v81 = _IOHIDLogCategory();
  if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
  {
    v82 = self->_capabilities;
    *buf = 138412290;
    *v100 = v82;
    _os_log_impl(&dword_29D3EE000, v81, OS_LOG_TYPE_DEFAULT, "capabilities: %@", buf, 0xCu);
  }

  v83 = *MEMORY[0x29EDCA608];
}

- (id)copyElements:(id)a3 psKey:(id)a4
{
  v27 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = objc_msgSend_psKey(v16, v11, v12, v22);
        isEqualToString = objc_msgSend_isEqualToString_(v17, v18, v6);

        if (isEqualToString)
        {
          objc_msgSend_addObject_(v7, v11, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
    }

    while (v13);
  }

  v20 = *MEMORY[0x29EDCA608];
  return v7;
}

- (id)latestElement:(id)a3 psKey:(id)a4
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = objc_msgSend_copyElements_psKey_(self, v8, v6, v7);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
  if (v11)
  {
    v14 = v11;
    v15 = 0;
    v16 = 0;
    v17 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v9);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_timestamp(v19, v12, v13, v25) > v15)
        {
          v20 = v19;

          v15 = objc_msgSend_timestamp(v20, v21, v22);
          v16 = v20;
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v25, v29, 16);
    }

    while (v14);
  }

  else
  {
    v16 = 0;
  }

  v23 = *MEMORY[0x29EDCA608];

  return v16;
}

- (void)updateElements:(id)a3
{
  v87 = *MEMORY[0x29EDCA608];
  v4 = a3;
  transaction = self->_transaction;
  if (!transaction)
  {
    v6 = _IOHIDLogCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29D3FB5E8();
    }

    goto LABEL_7;
  }

  if (((*transaction)->setDirection)(transaction, 0, 0))
  {
    v6 = _IOHIDLogCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29D3FB500();
    }

LABEL_7:

    goto LABEL_8;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v8 = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v75, v86, 16);
  if (v10)
  {
    v13 = v10;
    v69 = v4;
    v14 = 0;
    v15 = *v76;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v76 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v75 + 1) + 8 * i);
        if (!objc_msgSend_isConstant(v17, v11, v12) || (objc_msgSend_isUpdated(v17, v11, v12) & 1) == 0)
        {
          v18 = self->_transaction;
          addElement = (*v18)->addElement;
          v20 = objc_msgSend_elementRef(v17, v11, v12);
          v21 = (addElement)(v18, v20, 0);
          if (v21)
          {
            v22 = v21;
            v23 = _IOHIDLogCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              v80 = v22;
              _os_log_impl(&dword_29D3EE000, v23, OS_LOG_TYPE_DEFAULT, "Failed to add element to transaction %x", buf, 8u);
            }
          }

          else
          {
            ++v14;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v75, v86, 16);
    }

    while (v13);

    v4 = v69;
    if (v14)
    {
      if (((*self->_transaction)->commit)(self->_transaction, 0, 0, 0, 0))
      {
        ((*self->_transaction)->clear)(self->_transaction, 0);
        v6 = _IOHIDLogCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_29D3FB574();
        }

        goto LABEL_7;
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v25 = v8;
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v71, v85, 16);
      if (!v27)
      {
        goto LABEL_56;
      }

      v31 = v27;
      v32 = *v72;
      *&v30 = 67109632;
      v68 = v30;
LABEL_33:
      v33 = 0;
      while (1)
      {
        if (*v72 != v32)
        {
          objc_enumerationMutation(v25);
        }

        v34 = *(*(&v71 + 1) + 8 * v33);
        v70 = 0;
        if (objc_msgSend_isConstant(v34, v28, v29, v68) && (objc_msgSend_isUpdated(v34, v28, v29) & 1) != 0)
        {
          goto LABEL_51;
        }

        v35 = self->_transaction;
        getValue = (*v35)->getValue;
        v37 = objc_msgSend_elementRef(v34, v28, v29);
        v38 = (getValue)(v35, v37, &v70, 0);
        if (v38)
        {
          v40 = 1;
        }

        else
        {
          v40 = v70 == 0;
        }

        if (v40)
        {
          v41 = v38;
          v42 = _IOHIDLogCategory();
          v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
          if (v41)
          {
            if (v43)
            {
              v46 = objc_msgSend_usagePage(v34, v44, v45);
              v49 = objc_msgSend_usage(v34, v47, v48);
              *buf = v68;
              v80 = v46;
              v81 = 1024;
              v82 = v49;
              v83 = 1024;
              v84 = v41;
              v50 = v42;
              v51 = "Unable to update element UP: %x, U : %x failed(%#x)";
              v52 = 20;
LABEL_54:
              _os_log_error_impl(&dword_29D3EE000, v50, OS_LOG_TYPE_ERROR, v51, buf, v52);
            }
          }

          else if (v43)
          {
            v63 = objc_msgSend_usagePage(v34, v44, v45);
            v66 = objc_msgSend_usage(v34, v64, v65);
            *buf = 67109376;
            v80 = v63;
            v81 = 1024;
            v82 = v66;
            v50 = v42;
            v51 = "Unable to update element UP: %x, U : %x no value";
            v52 = 14;
            goto LABEL_54;
          }
        }

        else
        {
          objc_msgSend_setValueRef_(v34, v39, v70);
          objc_msgSend_setIsUpdated_(v34, v53, 1);
          if (!objc_msgSend_isConstant(v34, v54, v55))
          {
            goto LABEL_51;
          }

          v42 = _IOHIDLogCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v59 = objc_msgSend_usagePage(v34, v57, v58);
            v62 = objc_msgSend_usage(v34, v60, v61);
            *buf = 67109376;
            v80 = v59;
            v81 = 1024;
            v82 = v62;
            _os_log_impl(&dword_29D3EE000, v42, OS_LOG_TYPE_DEFAULT, "Constant feature element UP : %x , U : %x updated", buf, 0xEu);
          }
        }

LABEL_51:
        if (v31 == ++v33)
        {
          v67 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v71, v85, 16);
          v31 = v67;
          if (!v67)
          {
LABEL_56:

            ((*self->_transaction)->clear)(self->_transaction, 0);
            v4 = v69;
            goto LABEL_8;
          }

          goto LABEL_33;
        }
      }
    }
  }

  else
  {
  }

  v24 = _IOHIDLogCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29D3EE000, v24, OS_LOG_TYPE_DEFAULT, "Nothing to commit skip", buf, 2u);
  }

  ((*self->_transaction)->clear)(self->_transaction, 0);
LABEL_8:

  v7 = *MEMORY[0x29EDCA608];
}

- (BOOL)updateEvent
{
  v177 = *MEMORY[0x29EDCA608];
  objc_msgSend_removeAllObjects(self->_upsUpdatedEvent, a2, v2);
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = self->_eventElements;
  v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v167, v176, 16);
  if (!v165)
  {
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v166 = 0;
    goto LABEL_115;
  }

  v158 = 0;
  v159 = 0;
  v160 = 0;
  v166 = 0;
  v164 = *v168;
  do
  {
    v7 = 0;
    do
    {
      if (*v168 != v164)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v167 + 1) + 8 * v7);
      eventElements = self->_eventElements;
      v10 = objc_msgSend_psKey(v8, v5, v6);
      v12 = objc_msgSend_latestElement_psKey_(self, v11, eventElements, v10);

      if (!v12 || (objc_msgSend_isEqual_(v8, v13, v12) & 1) != 0)
      {
        upsEvent = self->_upsEvent;
        v16 = objc_msgSend_psKey(v8, v13, v14);
        v18 = objc_msgSend_objectForKeyedSubscript_(upsEvent, v17, v16);

        v21 = objc_msgSend_psKey(v8, v19, v20);
        v24 = objc_msgSend_integerValue(v8, v22, v23);
        LODWORD(upsEvent) = objc_msgSend_unitExponent(v8, v25, v26);
        v29 = objc_msgSend_unitExponent(v8, v27, v28);
        if (upsEvent >= 8)
        {
          v32 = v29 - 16;
        }

        else
        {
          v32 = v29;
        }

        v33 = objc_msgSend_usagePage(v8, v30, v31);
        if (v33 <= 132)
        {
          if (v33 == 6)
          {
            if (objc_msgSend_usage(v8, v34, v35) != 32)
            {
              goto LABEL_83;
            }

            v68 = objc_msgSend_integerValue(v8, v34, v67);
            objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v69, v68);
            goto LABEL_84;
          }

          if (v33 != 132)
          {
            goto LABEL_83;
          }

          v36 = objc_msgSend_usage(v8, v34, v35);
          if (v36 > 53)
          {
            switch(v36)
            {
              case '6':
                if (objc_msgSend_unit(v8, v34, v37) != 65537)
                {
                  goto LABEL_83;
                }

                v77 = (__exp10(v32) * v24) + -273.15;
                break;
              case 'A':
LABEL_45:
                v24 = (1000 * v24);
                if (objc_msgSend_unit(v8, v34, v37) != 1048577)
                {
                  goto LABEL_83;
                }

                v76 = v32;
LABEL_53:
                v77 = __exp10(v76) * v24;
                break;
              case 'b':
                v38 = objc_msgSend_integerValue(v8, v34, v37);
                v39 = &unk_2A241CAD8;
                if (!v38)
                {
                  v39 = &unk_2A241CAF0;
                }

                v40 = v39;
LABEL_85:
                v51 = v40;
LABEL_86:
                isEqual = objc_msgSend_isEqual_(v51, v34, v18);
                if (objc_msgSend_timestamp(v8, v116, v117) && (isEqual & 1) == 0)
                {
                  objc_msgSend_setObject_forKeyedSubscript_(self->_upsUpdatedEvent, v118, v51, v21);
                }

                v166 |= isEqual ^ 1;

                goto LABEL_90;
              default:
LABEL_83:
                objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v34, v24);
                v40 = LABEL_84:;
                goto LABEL_85;
            }

LABEL_82:
            v24 = v77;
            goto LABEL_83;
          }

          if (v36 != 48)
          {
            if (v36 != 49)
            {
              goto LABEL_83;
            }

            goto LABEL_45;
          }

LABEL_51:
          v24 = (1000 * v24);
          if (objc_msgSend_unit(v8, v34, v37) != 15782177)
          {
            goto LABEL_83;
          }

          v76 = (v32 - 7);
          goto LABEL_53;
        }

        if (v33 == 133)
        {
          v70 = objc_msgSend_usage(v8, v34, v35);
          if (v70 <= 102)
          {
            if ((v70 - 101) < 2)
            {
              if (objc_msgSend_unit(v8, v34, v37) == 1052673)
              {
                v24 = (v24 / 3.6);
              }

              if (!objc_msgSend_unit(v8, v83, v84))
              {
                v85 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v34, v24);
                v87 = objc_msgSend_isEqual_(v18, v86, v85);

                if ((v87 & 1) == 0)
                {
                  v89 = objc_msgSend_integerValue(v8, v34, v88);
                  v91 = objc_msgSend_copyElements_psKey_(self, v90, self->_eventElements, @"Time to Full Charge");
                  v94 = v91;
                  if (v91 && objc_msgSend_count(v91, v92, v93))
                  {
                    v156 = v89;
                    v95 = objc_msgSend_objectAtIndex_(v94, v92, 0);
                    v155 = objc_msgSend_integerValue(v95, v96, v97);
                    v161 = v95;
                    if ((objc_msgSend_isEqual_(v95, v98, v18) & 1) == 0)
                    {
                      v99 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v92, (((100 - v156) / 100.0 * v155) / 60));
                      objc_msgSend_setObject_forKeyedSubscript_(self->_upsUpdatedEvent, v100, v99, @"Time to Full Charge");
                    }
                  }

                  else
                  {
                    v161 = 0;
                  }

                  v124 = objc_msgSend_copyElements_psKey_(self, v92, self->_eventElements, @"Time to Empty");

                  if (v124 && objc_msgSend_count(v124, v125, v126))
                  {
                    v157 = objc_msgSend_objectAtIndex_(v124, v127, 0);

                    v162 = MEMORY[0x29EDBA070];
                    v130 = objc_msgSend_integerValue(v157, v128, v129);
                    v132 = objc_msgSend_numberWithInteger_(v162, v131, v130 / 60);
                    objc_msgSend_setObject_forKeyedSubscript_(self->_upsUpdatedEvent, v133, v132, @"Time to Empty");

                    v134 = v157;
                  }

                  else
                  {
                    v134 = v161;
                  }
                }
              }
            }

            else
            {
              if (v70 == 68)
              {
                v109 = objc_msgSend_integerValue(v8, v34, v37);
                v110 = MEMORY[0x29EDB8EB0];
                v111 = MEMORY[0x29EDB8EA8];
                if (v109)
                {
                  v111 = MEMORY[0x29EDB8EB0];
                }

                v51 = v111;
                HIDWORD(v159) |= objc_msgSend_integerValue(v8, v112, v113) != 0;
                HIDWORD(v158) = objc_msgSend_isEqual_(v18, v114, v110);
                goto LABEL_86;
              }

              if (v70 == 69)
              {
                v71 = objc_msgSend_integerValue(v8, v34, v37);
                v72 = &unk_2A241CAF0;
                if (!v71)
                {
                  v72 = &unk_2A241CAD8;
                }

                v51 = v72;
                LODWORD(v160) = v160 | (objc_msgSend_integerValue(v8, v73, v74) != 0);
                LODWORD(v158) = objc_msgSend_isEqual_(v18, v75, &unk_2A241CAD8);
                goto LABEL_86;
              }
            }

            goto LABEL_83;
          }

          if (v70 > 105)
          {
            if (v70 == 106)
            {
              v101 = objc_msgSend_copyElements_psKey_(self, v34, self->_eventElements, @"Current Capacity");
              v104 = v101;
              if (v101 && objc_msgSend_count(v101, v102, v103))
              {
                v106 = objc_msgSend_objectAtIndex_(v104, v105, 0);
                v24 = (((100 - objc_msgSend_integerValue(v106, v107, v108)) / 100.0 * v24) / 60);
              }
            }

            else if (v70 == 208)
            {
              v78 = objc_msgSend_integerValue(v8, v34, v37);
              v79 = @"Battery Power";
              if (v78)
              {
                v79 = @"AC Power";
              }

              v51 = v79;
              HIDWORD(v160) |= objc_msgSend_integerValue(v8, v80, v81) != 0;
              LODWORD(v159) = objc_msgSend_isEqual_(v18, v82, @"AC Power");
              goto LABEL_86;
            }

            goto LABEL_83;
          }

          if (v70 != 103)
          {
            if (v70 != 104)
            {
              goto LABEL_83;
            }

            objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v34, (v24 / 60));
            goto LABEL_84;
          }
        }

        else
        {
          if (v33 != 65293)
          {
            goto LABEL_83;
          }

          v41 = objc_msgSend_usage(v8, v34, v35);
          if ((v41 - 16) < 0x1E)
          {
            v42 = MEMORY[0x29EDBA070];
            v43 = objc_msgSend_integerValue(v8, v34, v37);
            v45 = objc_msgSend_numberWithInteger_(v42, v44, v43);
            debugInformation = self->_debugInformation;
            v49 = objc_msgSend_psKey(v8, v47, v48);
            objc_msgSend_setObject_forKeyedSubscript_(debugInformation, v50, v45, v49);

            v51 = self->_debugInformation;
            goto LABEL_25;
          }

          if (v41 > 5)
          {
            if (v41 > 4095)
            {
              if (v41 != 4096)
              {
                if (v41 == 4097)
                {
                  v142 = MEMORY[0x29EDBA070];
                  v143 = objc_msgSend_integerValue(v8, v34, v37);
                  v122 = objc_msgSend_numberWithInteger_(v142, v144, v143);
                  objc_msgSend_setObject_forKeyedSubscript_(self->_debugInformation, v145, v122, @"ChargingStatus");
                }

                else
                {
                  if (v41 != 4098)
                  {
                    goto LABEL_83;
                  }

                  v119 = MEMORY[0x29EDBA070];
                  v120 = objc_msgSend_integerValue(v8, v34, v37);
                  v122 = objc_msgSend_numberWithInteger_(v119, v121, v120);
                  objc_msgSend_setObject_forKeyedSubscript_(self->_debugInformation, v123, v122, @"InductiveStatus");
                }

                goto LABEL_110;
              }

              v135 = MEMORY[0x29EDBA070];
              v136 = objc_msgSend_integerValue(v8, v34, v37);
              v138 = objc_msgSend_numberWithInteger_(v135, v137, v136);
              objc_msgSend_setObject_forKeyedSubscript_(self->_debugInformation, v139, v138, @"PowerStatus");

              v51 = self->_debugInformation;
LABEL_25:
              v21 = @"Debug Information";
            }

            else
            {
              if (v41 > 0xE)
              {
                goto LABEL_83;
              }

              if (((1 << v41) & 0x6840) != 0)
              {
                goto LABEL_51;
              }

              if (v41 != 7)
              {
                if (v41 != 12)
                {
                  goto LABEL_83;
                }

                goto LABEL_45;
              }

              v24 = (1000 * v24);
              if (objc_msgSend_unit(v8, v34, v37) == 1048577)
              {
                v24 = (__exp10(v32) * v24);
              }

              v122 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v140, v24);
              objc_msgSend_setObject_forKeyedSubscript_(self->_debugInformation, v141, v122, @"Battery Case Average Charging Current");
LABEL_110:

              v51 = self->_debugInformation;
              v21 = @"Debug Information";
            }

LABEL_26:
            if (v51)
            {
              goto LABEL_86;
            }

            goto LABEL_83;
          }

          if ((v41 - 1) >= 2)
          {
            if (v41 == 3)
            {
              goto LABEL_45;
            }

            if (v41 != 5)
            {
              goto LABEL_83;
            }

            v51 = objc_msgSend_dataValue(v8, v34, v37);
            goto LABEL_26;
          }
        }

        if (objc_msgSend_unit(v8, v34, v37) != 1052673)
        {
          goto LABEL_83;
        }

        v77 = v24 / 3.6;
        goto LABEL_82;
      }

      v18 = _IOHIDLogCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v54 = objc_msgSend_usagePage(v8, v52, v53);
        v57 = objc_msgSend_usage(v8, v55, v56);
        v60 = objc_msgSend_type(v8, v58, v59);
        v63 = objc_msgSend_integerValue(v8, v61, v62);
        v66 = objc_msgSend_psKey(v8, v64, v65);
        *buf = 67110146;
        *v172 = v54;
        *&v172[4] = 1024;
        *&v172[6] = v57;
        LOWORD(v173) = 1024;
        *(&v173 + 2) = v60;
        HIWORD(v173) = 2048;
        *v174 = v63;
        *&v174[8] = 2112;
        v175 = v66;
        _os_log_impl(&dword_29D3EE000, v18, OS_LOG_TYPE_DEFAULT, "Skipping duplicate element (UP : %x U : %x Type : %u IV: %ld) with key %@\n", buf, 0x28u);
      }

LABEL_90:

      ++v7;
    }

    while (v165 != v7);
    v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v167, v176, 16);
    v165 = v146;
  }

  while (v146);
LABEL_115:

  v147 = _IOHIDLogCategory();
  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
  {
    v148 = "No";
    if ((v160 & 0x100000000) != 0)
    {
      v149 = "Yes";
    }

    else
    {
      v149 = "No";
    }

    if ((v159 & 0x100000000) != 0)
    {
      v150 = "Yes";
    }

    else
    {
      v150 = "No";
    }

    *buf = 136315650;
    *v172 = v149;
    *&v172[8] = 2080;
    v173 = v150;
    if (v160)
    {
      v148 = "Yes";
    }

    *v174 = 2080;
    *&v174[2] = v148;
    _os_log_impl(&dword_29D3EE000, v147, OS_LOG_TYPE_DEFAULT, "Power Source status isACSource : %s , isCharging : %s , isDischarging : %s", buf, 0x20u);
  }

  if ((v159 ^ HIDWORD(v160)) & 1) != 0 || ((HIDWORD(v158) ^ HIDWORD(v159)) & 1) != 0 || ((v158 ^ v160))
  {
    upsUpdatedEvent = self->_upsUpdatedEvent;
    if ((v160 | ~BYTE4(v159)) & ~BYTE4(v160))
    {
      objc_msgSend_setObject_forKeyedSubscript_(upsUpdatedEvent, v151, @"Battery Power", @"Power Source State");
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(upsUpdatedEvent, v151, @"AC Power", @"Power Source State");
    }
  }

  objc_msgSend_addEntriesFromDictionary_(self->_upsEvent, v151, self->_upsUpdatedEvent);
  v153 = *MEMORY[0x29EDCA608];
  return v166 & 1;
}

- (void)initialEventUpdate
{
  p_elements = &self->_elements;
  objc_msgSend_updateElements_(self, a2, self->_elements.input);
  objc_msgSend_updateElements_(self, v4, p_elements->feature);

  objc_msgSend_updateEvent(self, v5, v6);
}

- (BOOL)pollEventUpdate
{
  objc_msgSend_updateElements_(self, a2, self->_elements.feature);

  return objc_msgSend_updateEvent(self, v3, v4);
}

- (int)stop
{
  queue = self->_queue;
  if (queue)
  {
    ((*queue)->stop)(queue, 0);
  }

  ((*self->_device)->close)(self->_device, 0);
  return 0;
}

- (int)getProperties:(const __CFDictionary *)a3
{
  if (!a3)
  {
    return -536870206;
  }

  result = 0;
  *a3 = self->_properties;
  return result;
}

- (int)getCapabilities:(const __CFSet *)a3
{
  if (!a3)
  {
    return -536870206;
  }

  result = 0;
  *a3 = self->_capabilities;
  return result;
}

- (int)getEvent:(const __CFDictionary *)a3
{
  if (!a3)
  {
    return -536870206;
  }

  upsEvent = self->_upsEvent;
  *a3 = upsEvent;
  sub_29D3F4CB8(upsEvent, @"getEvent");
  return 0;
}

- (int)setEventCallback:(void *)a3 target:(void *)a4 refcon:(void *)a5
{
  self->_eventCallback = a3;
  self->_eventTarget = a4;
  self->_eventRefcon = a5;
  return 0;
}

- (int)sendCommand:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = _IOHIDLogCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_29D3EE000, v5, OS_LOG_TYPE_DEFAULT, "sendCommand: %@", buf, 0xCu);
  }

  v6 = -536870206;

  if (v4 && objc_msgSend_count(v4, v7, v8))
  {
    transaction = self->_transaction;
    if (transaction)
    {
      ((*transaction)->setDirection)(transaction, 1, 0);
      v14[0] = MEMORY[0x29EDCA5F8];
      v14[1] = 3221225472;
      v14[2] = sub_29D3F67C8;
      v14[3] = &unk_29F34D1B8;
      v14[4] = self;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v10, v14);
      v6 = ((*self->_transaction)->commit)(self->_transaction, 0, 0, 0, 0);
      ((*self->_transaction)->clear)(self->_transaction, 0);
    }

    else
    {
      v11 = _IOHIDLogCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_29D3FB5E8();
      }

      v6 = -536870212;
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return v6;
}

- (int)createAsyncEventSource:(const void *)a3
{
  v5 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  timer = self->_timer;
  if (timer)
  {
    CFRetain(timer);
    objc_msgSend_addObject_(v5, v7, self->_timer);
  }

  runLoopSource = self->_runLoopSource;
  if (runLoopSource)
  {
    CFRetain(runLoopSource);
    objc_msgSend_addObject_(v5, v9, self->_runLoopSource);
  }

  *a3 = v5;
  return 0;
}

- (IOHIDUPSClass)init
{
  v29.receiver = self;
  v29.super_class = IOHIDUPSClass;
  v2 = [(IOHIDPlugin *)&v29 init];
  if (v2)
  {
    v3 = malloc_type_malloc(0x50uLL, 0x80040A1CEA83AuLL);
    v2->_ups = v3;
    vtbl = v2->super.super._vtbl;
    Release = vtbl->Release;
    v6 = *&vtbl->QueryInterface;
    *v3 = v2;
    *(v3 + 8) = v6;
    *(v3 + 3) = Release;
    *(v3 + 4) = sub_29D3F6CB4;
    *(v3 + 5) = sub_29D3F6CC4;
    *(v3 + 6) = sub_29D3F6CD4;
    *(v3 + 7) = sub_29D3F6CE4;
    *(v3 + 8) = sub_29D3F6CFC;
    *(v3 + 9) = sub_29D3F6D0C;
    v7 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    properties = v2->_properties;
    v2->_properties = v7;

    v9 = objc_alloc_init(MEMORY[0x29EDB8E20]);
    capabilities = v2->_capabilities;
    v2->_capabilities = v9;

    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    input = v2->_elements.input;
    v2->_elements.input = v11;

    v13 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    output = v2->_elements.output;
    v2->_elements.output = v13;

    v15 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    feature = v2->_elements.feature;
    v2->_elements.feature = v15;

    v17 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    commandElements = v2->_commandElements;
    v2->_commandElements = v17;

    v19 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    eventElements = v2->_eventElements;
    v2->_eventElements = v19;

    v21 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    upsEvent = v2->_upsEvent;
    v2->_upsEvent = v21;

    v23 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    upsUpdatedEvent = v2->_upsUpdatedEvent;
    v2->_upsUpdatedEvent = v23;

    v25 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    debugInformation = v2->_debugInformation;
    v2->_debugInformation = v25;

    v27 = v2;
  }

  return v2;
}

- (void)dealloc
{
  free(self->_ups);
  queue = self->_queue;
  if (queue)
  {
    ((*queue)->Release)(queue);
  }

  transaction = self->_transaction;
  if (transaction)
  {
    ((*transaction)->Release)(transaction);
  }

  device = self->_device;
  if (device)
  {
    ((*device)->Release)(device);
  }

  v6.receiver = self;
  v6.super_class = IOHIDUPSClass;
  [(IOHIDPlugin *)&v6 dealloc];
}

- (int)start:(id)a3 service:(unsigned int)a4
{
  v90 = *MEMORY[0x29EDCA608];
  cf = 0;
  properties = 0;
  theInterface = 0;
  theScore = 0;
  if (IORegistryEntryCreateCFProperties(a4, &properties, *MEMORY[0x29EDB8ED8], 0))
  {
    sub_29D3F6F04();
    v46 = _IOHIDLogCategory();
    if (sub_29D3F6F10(v46))
    {
      sub_29D3F6EF8(1.5047e-36);
LABEL_52:
      sub_29D3F6F28();
      _os_log_error_impl(v54, v55, v56, v57, v58, 8u);
      goto LABEL_61;
    }

    goto LABEL_61;
  }

  if (!properties)
  {
    v47 = _IOHIDLogCategory();
    if (!sub_29D3F6F10(v47))
    {
      goto LABEL_65;
    }

    v89 = 0;
LABEL_64:
    sub_29D3F6F28();
    _os_log_error_impl(v64, v65, v66, v67, v68, 2u);
    goto LABEL_65;
  }

  objc_msgSend_parseProperties_(self, v8, properties);
  v4 = CFUUIDGetConstantUUIDWithBytes(0, 0x7Du, 0xDEu, 0xECu, 0xA8u, 0xA7u, 0xB4u, 0x11u, 0xDAu, 0x8Au, 0xEu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  if (IOCreatePlugInInterfaceForService(a4, v4, v9, &theInterface, &theScore))
  {
    sub_29D3F6F04();
    v48 = _IOHIDLogCategory();
    if (sub_29D3F6F10(v48))
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  LODWORD(v4) = theInterface;
  if (!theInterface)
  {
    v49 = _IOHIDLogCategory();
    if (!sub_29D3F6F10(v49))
    {
      goto LABEL_65;
    }

    v89 = 0;
    goto LABEL_64;
  }

  sub_29D3F6EE4();
  v10 = sub_29D3EFB6C();
  v11 = CFUUIDGetConstantUUIDWithBytes(v10, 0x47u, 0x4Bu, 0xDCu, 0x8Eu, 0x9Fu, 0x4Au, 0x11u, byte7[0], byte7[1], byte7[2], byte7[3], byte7[4], byte7[5], byte7[6], byte7[7], byte15);
  CFUUIDGetUUIDBytes(v11);
  v12 = sub_29D3F6F38();
  if (v5(v12))
  {
    sub_29D3F6F04();
    v50 = _IOHIDLogCategory();
    if (sub_29D3F6F10(v50))
    {
      goto LABEL_67;
    }

LABEL_60:
    LODWORD(v4) = -536870212;
    goto LABEL_61;
  }

  device = self->_device;
  if (!device)
  {
    v51 = _IOHIDLogCategory();
    if (!sub_29D3F6F10(v51))
    {
      goto LABEL_65;
    }

    v89 = 0;
    goto LABEL_64;
  }

  if (((*device)->open)(device, 0))
  {
    sub_29D3F6F04();
    v52 = _IOHIDLogCategory();
    if (sub_29D3F6F10(v52))
    {
      goto LABEL_51;
    }

    goto LABEL_61;
  }

  if (((*self->_device)->copyMatchingElements)(self->_device, 0, &cf, 0))
  {
    sub_29D3F6F04();
    v53 = _IOHIDLogCategory();
    if (sub_29D3F6F10(v53))
    {
LABEL_51:
      sub_29D3F6EF8(1.5047e-36);
      goto LABEL_52;
    }

LABEL_61:

    goto LABEL_28;
  }

  if (!cf)
  {
    v59 = _IOHIDLogCategory();
    if (!sub_29D3F6F10(v59))
    {
      goto LABEL_65;
    }

    v89 = 0;
    goto LABEL_64;
  }

  v14 = self->_device;
  sub_29D3F6EE4();
  v15 = sub_29D3EFB6C();
  v16 = CFUUIDGetConstantUUIDWithBytes(v15, 0x2Eu, 0xC7u, 0x8Bu, 0xDBu, 0x9Fu, 0x4Eu, 0x11u, byte7a[0], byte7a[1], byte7a[2], byte7a[3], byte7a[4], byte7a[5], byte7a[6], byte7a[7], byte15a);
  CFUUIDGetUUIDBytes(v16);
  v17 = sub_29D3F6F38();
  if (v5(v17))
  {
    sub_29D3F6F04();
    v60 = _IOHIDLogCategory();
    if (sub_29D3F6F10(v60))
    {
      goto LABEL_67;
    }

    goto LABEL_60;
  }

  if (!self->_queue)
  {
    v61 = _IOHIDLogCategory();
    if (!sub_29D3F6F10(v61))
    {
      goto LABEL_65;
    }

    v89 = 0;
    goto LABEL_64;
  }

  v18 = self->_device;
  sub_29D3F6EE4();
  v19 = sub_29D3EFB6C();
  v20 = CFUUIDGetConstantUUIDWithBytes(v19, 0x1Fu, 0x2Eu, 0x78u, 0xFAu, 0x9Fu, 0xFAu, 0x11u, byte7b[0], byte7b[1], byte7b[2], byte7b[3], byte7b[4], byte7b[5], byte7b[6], byte7b[7], byte15b);
  CFUUIDGetUUIDBytes(v20);
  v21 = sub_29D3F6F38();
  if (v5(v21))
  {
    sub_29D3F6F04();
    v62 = _IOHIDLogCategory();
    if (!sub_29D3F6F10(v62))
    {
      goto LABEL_60;
    }

LABEL_67:
    sub_29D3F6EF8(1.5047e-36);
    sub_29D3F6F28();
    _os_log_error_impl(v69, v70, v71, v72, v73, 8u);
    goto LABEL_60;
  }

  transaction = self->_transaction;
  if (!transaction)
  {
    v63 = _IOHIDLogCategory();
    if (sub_29D3F6F10(v63))
    {
      v89 = 0;
      goto LABEL_64;
    }

LABEL_65:

    LODWORD(v4) = -536870911;
    goto LABEL_28;
  }

  ((*transaction)->setDirection)(transaction, 1, 0);
  objc_msgSend_parseElements_(self, v23, cf);
  queue = self->_queue;
  setDepth = (*queue)->setDepth;
  v28 = objc_msgSend_count(self->_elements.input, v26, v27);
  (setDepth)(queue, v28, 0);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v29 = self->_elements.input;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v80, v88, 16);
  if (v31)
  {
    v34 = v31;
    v35 = *v81;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v81 != v35)
        {
          objc_enumerationMutation(v29);
        }

        v37 = *(*(&v80 + 1) + 8 * i);
        if (objc_msgSend_type(v37, v32, v33) <= 4)
        {
          v38 = self->_queue;
          addElement = (*v38)->addElement;
          v40 = objc_msgSend_elementRef(v37, v32, v33);
          (addElement)(v38, v40, 0);
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v80, v88, 16);
    }

    while (v34);
  }

  v41 = ((*self->_queue)->getAsyncEventSource)(self->_queue, &self->_runLoopSource);
  if (v41)
  {
    goto LABEL_35;
  }

  if (!self->_runLoopSource)
  {
    LODWORD(v4) = 0;
    goto LABEL_28;
  }

  v41 = ((*self->_queue)->setValueAvailableCallback)(self->_queue, sub_29D3EFE14, self);
  if (v41)
  {
LABEL_35:
    LODWORD(v4) = v41;
    goto LABEL_28;
  }

  LODWORD(v4) = ((*self->_queue)->start)(self->_queue, 0);
  if (!v4)
  {
    objc_msgSend_initialEventUpdate(self, v42, v43);
  }

LABEL_28:
  if (theInterface)
  {
    ((*theInterface)->Release)(theInterface);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (properties)
  {
    CFRelease(properties);
  }

  v44 = *MEMORY[0x29EDCA608];
  return v4;
}

@end