@interface CalAssistantEventDelete
- (id)_deleteEvent:(id)event;
- (id)_validateEvent:(id)event;
- (id)eventStore;
- (void)performWithCompletion:(id)completion;
- (void)setEventStore:(id)store;
@end

@implementation CalAssistantEventDelete

- (id)eventStore
{
  eventStore = self->_eventStore;
  if (!eventStore)
  {
    v5 = objc_msgSend__ca_eventStoreWithError_(MEMORY[0x277CC5A40], a2, 0, v2);
    v6 = self->_eventStore;
    self->_eventStore = v5;

    eventStore = self->_eventStore;
  }

  return eventStore;
}

- (void)setEventStore:(id)store
{
  storeCopy = store;
  if (self->_eventStore != storeCopy)
  {
    v6 = storeCopy;
    objc_storeStrong(&self->_eventStore, store);
    storeCopy = v6;
  }
}

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_2334B11EC();
  sub_2334B11EC();
  v5 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B4C94(v5);
  }

  v6 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
  {
    sub_2334B4D24(v6);
  }

  v10 = objc_msgSend_identifier(self, v7, v8, v9);
  v16 = objc_msgSend__validateEvent_(self, v11, v10, v12);
  if (!v16)
  {
    v16 = objc_msgSend__deleteEvent_(self, v13, v10, v15);
  }

  v17 = objc_msgSend_dictionary(v16, v13, v14, v15);
  completionCopy[2](completionCopy, v17);
}

- (id)_validateEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_identifier(eventCopy, v4, v5, v6);

    if (v7)
    {
      v8 = 0;
      goto LABEL_15;
    }

    sub_2334B11EC();
    v12 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B4F5C(v12);
    }

    v13 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B4FEC(v13);
    }

    v11 = @"No Event ID was specified";
  }

  else
  {
    sub_2334B11EC();
    v9 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B4DC8(v9);
    }

    v10 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B4E90(v10);
    }

    v11 = @"Expected SACalendarEvent object.";
  }

  v14 = objc_alloc(MEMORY[0x277D47208]);
  v8 = objc_msgSend_initWithReason_(v14, v15, v11, v16);
LABEL_15:

  return v8;
}

- (id)_deleteEvent:(id)event
{
  eventCopy = event;
  v8 = objc_msgSend_identifier(eventCopy, v5, v6, v7);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v9, v8, v11);

    v8 = v12;
  }

  v13 = objc_msgSend_eventStore(self, v9, v10, v11);
  v15 = objc_msgSend__eventWithURI_checkValid_(v13, v14, v8, 1);

  if (!v15)
  {
    sub_2334B11EC();
    v43 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5360(v43);
    }

    v44 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B53F0(v44);
    }

    v45 = objc_alloc(MEMORY[0x277D47208]);
    v48 = objc_msgSend_initWithReason_(v45, v46, @"Event not found", v47);
    goto LABEL_21;
  }

  if ((objc_msgSend_isEditable(v15, v16, v17, v18) & 1) == 0)
  {
    sub_2334B11EC();
    v49 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5090(v49);
    }

    v50 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5120(v50);
    }

    v51 = objc_alloc(MEMORY[0x277D47208]);
    v48 = objc_msgSend_initWithReason_(v51, v52, @"Can't delete a read only event.", v53);
LABEL_21:
    v42 = v48;
    goto LABEL_24;
  }

  v22 = objc_msgSend_includeRecurrences(eventCopy, v19, v20, v21);
  v26 = objc_msgSend_BOOLValue(v22, v23, v24, v25);

  v30 = objc_msgSend_eventStore(self, v27, v28, v29);
  v55 = 0;
  objc_msgSend_removeEvent_span_commit_error_(v30, v31, v15, v26, 1, &v55);
  v32 = v55;

  if (v32)
  {
    sub_2334B11EC();
    v33 = qword_27DE0DD38;
    if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
    {
      sub_2334B51C4(v33, self, v32);
    }

    v34 = *MEMORY[0x277CEF0D8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
    {
      sub_2334B5294(v34, self, v32);
    }

    v35 = objc_alloc(MEMORY[0x277D47208]);
    v39 = objc_msgSend_localizedDescription(v32, v36, v37, v38);
    v42 = objc_msgSend_initWithReason_(v35, v40, v39, v41);
  }

  else
  {
    v42 = objc_alloc_init(MEMORY[0x277D472B0]);
  }

LABEL_24:

  return v42;
}

@end