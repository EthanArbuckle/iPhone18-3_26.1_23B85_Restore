@interface IOHIDTransactionClass
- (IOHIDTransactionClass)initWithDevice:(id)device;
- (id)device;
- (int)addElement:(__IOHIDElement *)element;
- (int)commit:(void *)commit timeout:(unsigned int)timeout callback:(void *)callback options:(unsigned int)options;
- (int)containsElement:(__IOHIDElement *)element value:(char *)value;
- (int)getAsyncEventSource:(const void *)source;
- (int)getDirection:(unsigned int *)direction;
- (int)getValue:(__IOHIDElement *)value value:(__IOHIDValue *)a4 options:(unsigned int)options;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)removeElement:(__IOHIDElement *)element;
- (int)setValue:(__IOHIDElement *)value value:(__IOHIDValue *)a4 options:(unsigned int)options;
- (void)dealloc;
@end

@implementation IOHIDTransactionClass

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v6 = CFUUIDCreateFromUUIDBytes(0, interface);
  v7 = CFUUIDGetConstantUUIDWithBytes(0, 0x1Fu, 0x2Eu, 0x78u, 0xFAu, 0x9Fu, 0xFAu, 0x11u, 0xDAu, 0x90u, 0xB4u, 0, 0xDu, 0x93u, 0x6Du, 6u, 0xD2u);
  if (!CFEqual(v6, v7))
  {
    v8 = -2147483644;
    if (!v6)
    {
      return v8;
    }

    goto LABEL_3;
  }

  *outInterface = &self->_interface;
  CFRetain(self);
  v8 = 0;
  if (v6)
  {
LABEL_3:
    CFRelease(v6);
  }

  return v8;
}

- (int)getAsyncEventSource:(const void *)source
{
  if (!source)
  {
    return -536870206;
  }

  WeakRetained = objc_loadWeakRetained(&self->_device);
  *source = objc_msgSend_runLoopSource(WeakRetained, v5, v6);

  return 0;
}

- (int)getDirection:(unsigned int *)direction
{
  if (!direction)
  {
    return -536870206;
  }

  result = 0;
  *direction = self->_direction;
  return result;
}

- (IOHIDTransactionClass)initWithDevice:(id)device
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = IOHIDTransactionClass;
  v5 = [(IOHIDIUnknown2 *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_device, deviceCopy);
    v7 = malloc_type_malloc(0x70uLL, 0x8004065BD1A13uLL);
    v6->_interface = v7;
    vtbl = v6->super._vtbl;
    Release = vtbl->Release;
    v10 = *&vtbl->QueryInterface;
    *v7 = v6;
    *(v7 + 8) = v10;
    *(v7 + 3) = Release;
    *(v7 + 4) = sub_29D3F09E4;
    *(v7 + 5) = sub_29D3F09F4;
    *(v7 + 6) = sub_29D3F0A04;
    *(v7 + 7) = sub_29D3F0A14;
    *(v7 + 8) = sub_29D3F0A24;
    *(v7 + 9) = sub_29D3F0A34;
    *(v7 + 10) = sub_29D3F0A48;
    *(v7 + 11) = sub_29D3F0A60;
    *(v7 + 12) = sub_29D3F0A78;
    *(v7 + 13) = sub_29D3F0A94;
    v11 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    elements = v6->_elements;
    v6->_elements = v11;

    v13 = v6;
  }

  return v6;
}

- (id)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (void)dealloc
{
  free(self->_interface);
  v3.receiver = self;
  v3.super_class = IOHIDTransactionClass;
  [(IOHIDIUnknown2 *)&v3 dealloc];
}

- (int)addElement:(__IOHIDElement *)element
{
  elementCopy = element;
  v4 = -536870212;
  if (element)
  {
    v6 = [HIDLibElement alloc];
    elementCopy = objc_msgSend_initWithElementRef_(v6, v7, elementCopy);
    if (elementCopy)
    {
      v8 = sub_29D3F13E0();
      if ((objc_msgSend_containsObject_(v8, v9, v10) & 1) == 0 && (self->_direction != 1 || objc_msgSend_type(elementCopy, v11, v12) == 129 || objc_msgSend_type(elementCopy, v13, v14) == 257))
      {
        v15 = sub_29D3F13E0();
        objc_msgSend_addObject_(v15, v16, v17);
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = -536870206;
  }

  return v4;
}

- (int)removeElement:(__IOHIDElement *)element
{
  elementCopy = element;
  v4 = -536870212;
  if (element)
  {
    v5 = [HIDLibElement alloc];
    elementCopy = objc_msgSend_initWithElementRef_(v5, v6, elementCopy);
    if (elementCopy)
    {
      v7 = sub_29D3F13E0();
      if (objc_msgSend_containsObject_(v7, v8, v9))
      {
        v10 = sub_29D3F13E0();
        objc_msgSend_removeObject_(v10, v11, v12);
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = -536870206;
  }

  return v4;
}

- (int)containsElement:(__IOHIDElement *)element value:(char *)value
{
  result = -536870206;
  if (element && value)
  {
    v8 = [HIDLibElement alloc];
    v10 = objc_msgSend_initWithElementRef_(v8, v9, element);
    if (v10)
    {
      v12 = v10;
      *value = objc_msgSend_containsObject_(self->_elements, v11, v10);

      return 0;
    }

    else
    {
      return -536870212;
    }
  }

  return result;
}

- (int)setValue:(__IOHIDElement *)value value:(__IOHIDValue *)a4 options:(unsigned int)options
{
  v5 = 0;
  v6 = -536870206;
  if (!value || !a4)
  {
    goto LABEL_10;
  }

  if (self->_direction != 1)
  {
    v5 = 0;
LABEL_12:
    v6 = -536870212;
    goto LABEL_10;
  }

  optionsCopy = options;
  v11 = [HIDLibElement alloc];
  v5 = objc_msgSend_initWithElementRef_(v11, v12, value);
  if (!v5 || !objc_msgSend_containsObject_(self->_elements, v13, v5))
  {
    goto LABEL_12;
  }

  if (optionsCopy)
  {
    objc_msgSend_setDefaultValueRef_(v5, v14, a4);
  }

  else
  {
    objc_msgSend_setValueRef_(v5, v14, a4);
  }

  elements = self->_elements;
  v17 = objc_msgSend_indexOfObject_(elements, v15, v5);
  objc_msgSend_replaceObjectAtIndex_withObject_(elements, v18, v17, v5);
  v6 = 0;
LABEL_10:

  return v6;
}

- (int)getValue:(__IOHIDElement *)value value:(__IOHIDValue *)a4 options:(unsigned int)options
{
  v5 = 0;
  v6 = -536870206;
  if (value)
  {
    v8 = 0;
    if (a4)
    {
      optionsCopy = options;
      v12 = [HIDLibElement alloc];
      v8 = objc_msgSend_initWithElementRef_(v12, v13, value);
      if (v8 && objc_msgSend_containsObject_(self->_elements, v14, v8))
      {
        elements = self->_elements;
        v17 = objc_msgSend_indexOfObject_(elements, v15, v8);
        v19 = objc_msgSend_objectAtIndex_(elements, v18, v17);
        v5 = v19;
        if (optionsCopy)
        {
          v22 = objc_msgSend_defaultValueRef(v19, v20, v21);
        }

        else
        {
          v22 = objc_msgSend_valueRef(v19, v20, v21);
        }

        v6 = 0;
        *a4 = v22;
      }

      else
      {
        v5 = 0;
        v6 = -536870212;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v6;
}

- (int)commit:(void *)commit timeout:(unsigned int)timeout callback:(void *)callback options:(unsigned int)options
{
  v189 = *MEMORY[0x29EDCA608];
  sub_29D3F13D4();
  v175 = 0;
  entryID = 0xAAAAAAAAAAAAAAAALL;
  input = 0;
  v187 = 0;
  optionsCopy = 0;
  v15 = objc_msgSend_count(*(v12 + 32), v13, v14);
  cf = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v184 = v16;
  v185 = v16;
  *reference = v16;
  v183 = v16;
  LODWORD(v17) = v6 - 1;
  v18 = v15;
  if (!v15)
  {
    goto LABEL_69;
  }

  obj = callback;
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v22 = objc_msgSend_service(WeakRetained, v20, v21);
  IORegistryEntryGetRegistryEntryID(v22, &entryID);

  optionsCopy = options;
  if (!obj)
  {
    v25 = 0;
    goto LABEL_6;
  }

  input = timeout;
  v24 = malloc_type_calloc(1uLL, 0x28uLL, 0x800402FCC0CB6uLL);
  if (!v24)
  {
LABEL_69:
    v30 = 0;
    goto LABEL_59;
  }

  v25 = v24;
  *v24 = obj;
  v24[1] = commit;
  v26 = objc_loadWeakRetained(&self->_device);
  v25[2] = v26;

  v27 = v25[4];
  v25[3] = &self->_interface;
  v25[4] = 0;

  reference[1] = sub_29D3F05CC;
  *&v183 = v25;
LABEL_6:
  v167 = v25;
  if (self->_direction == 1)
  {
    inputStructCnt = 0;
    v29 = 0;
    v30 = 0;
    do
    {
      v17 = v30;
      v30 = objc_msgSend_objectAtIndex_(self->_elements, v23, v29);

      v31 = objc_loadWeakRetained(&self->_device);
      objc_msgSend_elementRef(v30, v32, v33);
      objc_msgSend_valueRef(v30, v34, v35);
      sub_29D3F1400();
      LODWORD(v17) = objc_msgSend_setValue_value_timeout_callback_context_options_(v36, v37, v38);

      if (v17)
      {
        v127 = _IOHIDLogCategory();
        if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
        {
          v178 = 134218240;
          v179 = entryID;
          v180 = 1024;
          v181 = v17;
          sub_29D3EFB54();
          _os_log_error_impl(v131, v132, v133, v134, v135, v136);
        }

        goto LABEL_56;
      }

      v41 = objc_msgSend_valueRef(v30, v39, v40);
      inputStructCnt += IOHIDValueGetLength(v41) + 8;
      v175 = inputStructCnt;
      ++v29;
    }

    while (v18 != v29);
    v42 = malloc_type_malloc(inputStructCnt, 0x5F4D46C1uLL);
    if (!v42)
    {
      sub_29D3F13D4();
      goto LABEL_56;
    }

    v44 = v42;
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = v30;
      v30 = objc_msgSend_objectAtIndex_(self->_elements, v43, v45);

      objc_msgSend_valueRef(v30, v48, v49);
      _IOHIDValueCopyToElementValueHeader();
      v46 += *&v44[v46 + 4] + 8;
      ++v45;
    }

    while (v18 != v45);
    v50 = objc_loadWeakRetained(&self->_device);
    v53 = objc_msgSend_connect(v50, v51, v52);
    v54 = v53;
    if (obj)
    {
      v55 = objc_loadWeakRetained(&self->_device);
      objc_msgSend_getPort(v55, v56, v57);
      sub_29D3F13EC();
      LODWORD(v17) = IOConnectCallAsyncMethod(v54, 0xBu, v58, reference, 3u, &input, 1u, v44, inputStructCnt, v162, v163, v164, v165);
    }

    else
    {
      LODWORD(v17) = IOConnectCallMethod(v53, 0xBu, &input, 1u, v44, inputStructCnt, 0, 0, 0, 0);
    }

    v25 = v167;

    if (v17)
    {
      v89 = _IOHIDLogCategory();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        sub_29D3F13B8(entryID, 3.8521e-34);
        sub_29D3EFB54();
        _os_log_error_impl(v150, v151, v152, v153, v154, v155);
      }
    }

    goto LABEL_54;
  }

  v59 = 0;
  v60 = 0;
  v30 = 0;
  size = 4 * v15;
  do
  {
    v61 = v30;
    v30 = objc_msgSend_objectAtIndex_(self->_elements, v23, v60);

    objc_msgSend_elementRef(v30, v62, v63);
    v59 += _IOHIDElementGetLength() + 24;
    cf = objc_msgSend_valueRef(v30, v64, v65);
    v175 = v59;
    v66 = objc_loadWeakRetained(&self->_device);
    objc_msgSend_elementRef(v30, v67, v68);
    sub_29D3F1400();
    LODWORD(v17) = objc_msgSend_getValue_value_timeout_callback_context_options_(v69, v70, v71);

    if (v17)
    {
      v128 = _IOHIDLogCategory();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        v178 = 134218240;
        v179 = entryID;
        v180 = 1024;
        v181 = v17;
        sub_29D3EFB54();
        _os_log_error_impl(v137, v138, v139, v140, v141, v142);
      }

      goto LABEL_66;
    }

    ++v60;
  }

  while (v18 != v60);
  v72 = malloc_type_malloc(size, 0xF4431F6BuLL);
  if (!v72)
  {
    sub_29D3F13D4();
LABEL_66:
    v25 = v167;
    goto LABEL_56;
  }

  v74 = v72;
  v17 = 0;
  v25 = v167;
  do
  {
    v75 = v30;
    v30 = objc_msgSend_objectAtIndex_(self->_elements, v73, v17);

    v74[v17++] = objc_msgSend_elementCookie(v30, v76, v77);
  }

  while (v18 != v17);
  if (obj)
  {
    v187 = v59;
    v78 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v73, self->_elements);
    v79 = v167[4];
    v167[4] = v78;

    sub_29D3F13D4();
    if (v78)
    {
      v80 = objc_loadWeakRetained(&self->_device);
      v83 = objc_msgSend_connect(v80, v81, v82);
      v84 = objc_loadWeakRetained(&self->_device);
      objc_msgSend_getPort(v84, v85, v86);
      sub_29D3F13EC();
      LODWORD(v17) = IOConnectCallAsyncMethod(v83, 0xAu, v87, reference, 3u, &input, 3u, v74, size, v162, v163, v164, v165);

      if (v17)
      {
        v143 = _IOHIDLogCategory();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
        {
          sub_29D3F13B8(entryID, 3.8521e-34);
          sub_29D3EFB54();
          _os_log_error_impl(v156, v157, v158, v159, v160, v161);
        }
      }
    }

    goto LABEL_24;
  }

  malloc_type_calloc(1uLL, v59, 0xE20A27BDuLL);
  sub_29D3F13D4();
  if (!v90)
  {
LABEL_24:
    v88 = v74;
    goto LABEL_55;
  }

  v44 = v90;
  v91 = objc_loadWeakRetained(&self->_device);
  v94 = objc_msgSend_connect(v91, v92, v93);
  LODWORD(v17) = IOConnectCallMethod(v94, 0xAu, &input, 3u, v74, size, 0, 0, v44, &v175);

  if (v17)
  {
    obja = _IOHIDLogCategory();
    if (os_log_type_enabled(&obja->super.super, OS_LOG_TYPE_ERROR))
    {
      sub_29D3F13B8(entryID, 3.8521e-34);
      sub_29D3EFB54();
      _os_log_error_impl(v144, v145, v146, v147, v148, v149);
    }

    goto LABEL_53;
  }

  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  obja = self->_elements;
  v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v95, &v170, v177, 16);
  if (!v96)
  {
    v114 = 0;
    goto LABEL_52;
  }

  v97 = v96;
  v98 = 0;
  v99 = *v171;
  v100 = *MEMORY[0x29EDB8ED8];
  v101 = v30;
  while (2)
  {
    v102 = 0;
    v103 = v101;
    while (2)
    {
      if (*v171 != v99)
      {
        objc_enumerationMutation(obja);
      }

      v101 = *(*(&v170 + 1) + 8 * v102);

      v106 = &v44[v98];
      v107 = *&v44[v98 + 4];
      v98 += v107 >> 8;
      if (v107 >> 10 < 5 || v98 > v175)
      {
        v30 = _IOHIDLogCategory();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
LABEL_51:
          v114 = v101;
          goto LABEL_52;
        }

        v115 = *(v106 + 1) >> 8;
        v178 = 67109120;
        LODWORD(v179) = v115;
        v116 = &dword_29D3EE000;
        v117 = "Unable to copy back value for element, unexpected size(%d)\n";
        v118 = &v178;
        v119 = v30;
        v120 = OS_LOG_TYPE_ERROR;
        v121 = 8;
LABEL_68:
        _os_log_error_impl(v116, v119, v120, v117, v118, v121);
        goto LABEL_51;
      }

      v109 = *v106;
      if (v109 != objc_msgSend_elementCookie(v101, v104, v105))
      {
        v30 = _IOHIDLogCategory();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        v129 = *v106;
        v130 = objc_msgSend_elementCookie(v101, v122, v123);
        v178 = 134218240;
        v179 = v129;
        v180 = 1024;
        v181 = v130;
        sub_29D3EFB54();
        goto LABEL_68;
      }

      objc_msgSend_elementRef(v101, v110, v111);
      cf = _IOHIDValueCreateWithElementValuePtr();
      objc_msgSend_setValueRef_(v101, v112, cf);
      if (cf)
      {
        CFRelease(cf);
      }

      ++v102;
      v103 = v101;
      if (v97 != v102)
      {
        continue;
      }

      break;
    }

    v97 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v113, &v170, v177, 16);
    v114 = 0;
    v30 = v101;
    if (v97)
    {
      continue;
    }

    break;
  }

LABEL_52:

  LODWORD(v17) = 0;
  v30 = v114;
LABEL_53:

  free(v74);
  v25 = v167;
LABEL_54:
  v88 = v44;
LABEL_55:
  free(v88);
LABEL_56:
  if (v25 && v17)
  {
    v124 = v25[4];
    v25[4] = 0;

    free(v25);
  }

LABEL_59:

  v125 = *MEMORY[0x29EDCA608];
  return v17;
}

@end