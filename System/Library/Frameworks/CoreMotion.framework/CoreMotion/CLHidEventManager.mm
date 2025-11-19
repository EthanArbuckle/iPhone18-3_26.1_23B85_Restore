@interface CLHidEventManager
- (CLHidEventManager)initWithDelegate:(id)a3 queue:(id)a4 matching:(id)a5 type:(int64_t)a6;
- (void)dealloc;
@end

@implementation CLHidEventManager

- (CLHidEventManager)initWithDelegate:(id)a3 queue:(id)a4 matching:(id)a5 type:(int64_t)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = CLHidEventManager;
  v10 = [(CLHidEventManager *)&v38 init];
  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E69A2950]);
    v13 = objc_msgSend_initWithType_(v11, v12, a6);
    *(v10 + 2) = a4;
    *(v10 + 3) = v13;
    *(v10 + 1) = a3;
    v14 = objc_opt_new();
    *(v10 + 4) = v14;
    objc_msgSend_addObject_(v14, v15, a5);
    objc_msgSend_setMatching_(*(v10 + 3), v16, *(v10 + 4));
    v17 = *(v10 + 3);
    v20 = objc_msgSend_delegateQueue(v10, v18, v19);
    objc_msgSend_setDispatchQueue_(v17, v21, v20);
    v22 = *(v10 + 3);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = sub_19B6F7A90;
    v37[3] = &unk_1E7535160;
    v37[4] = v10;
    objc_msgSend_setEventHandler_(v22, v23, v37);
    objc_msgSend_activate(*(v10 + 3), v24, v25);
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29D20);
    }

    v26 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_DEBUG))
    {
      v29 = objc_msgSend_services(*(v10 + 3), v27, v28);
      *buf = 138412290;
      v42 = v29;
      _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEBUG, "[CLHidManager] enumerated these devices: %@", buf, 0xCu);
    }

    v30 = sub_19B420058();
    if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29D20);
      }

      v33 = objc_msgSend_services(*(v10 + 3), v31, v32);
      v39 = 138412290;
      v40 = v33;
      v34 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLHidEventManager initWithDelegate:queue:matching:type:]", "CoreLocation: %s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)dealloc
{
  objc_msgSend_cancel(self->_manager, a2, v2);

  objc_msgSend_removeAllObjects(self->_matching, v4, v5);
  v6.receiver = self;
  v6.super_class = CLHidEventManager;
  [(CLHidEventManager *)&v6 dealloc];
}

@end