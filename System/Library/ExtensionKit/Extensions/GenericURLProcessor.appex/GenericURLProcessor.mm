void sub_100001580()
{
  sub_100001974(&qword_10000C910, &unk_100004CD8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100004C40;
  *(v1 + 32) = [objc_allocWithZone(NFTagAppProcessorWallet) init];
  *(v1 + 40) = [objc_allocWithZone(NFTagAppProcessorAMSAccessory) init];
  v2 = objc_allocWithZone(NFTagAppLauncher);
  sub_100001974(&qword_10000C978, qword_100004CE8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = sub_100002804(v2, isa);

  if (v4)
  {
    *(v0 + 16) = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100001698(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  a6(a3, a4, a1, v10);
  _Block_release(v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_release(a1);
}

uint64_t sub_100001748()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

void sub_10000178C(uint64_t *a1@<X8>)
{
  type metadata accessor for GenericURLProcessor();
  v2 = swift_allocObject();
  sub_100001580();
  *a1 = v2;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GenericURLProcessor();
  sub_100001848();
  static AppExtension.main()();
  return 0;
}

unint64_t sub_100001848()
{
  result = qword_10000C7E8;
  if (!qword_10000C7E8)
  {
    type metadata accessor for GenericURLProcessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C7E8);
  }

  return result;
}

unint64_t sub_10000189C(uint64_t a1)
{
  result = sub_100001848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000018C8()
{
  result = qword_10000C900;
  if (!qword_10000C900)
  {
    sub_10000192C(&qword_10000C908, &qword_100004C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C900);
  }

  return result;
}

uint64_t sub_10000192C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001974(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1000019BC(void *a1, void *a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_10000C7E0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100001DE0(v8, qword_10000CC20);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "GenericURLProcessor.processNdef(_:replyWithXPCEvent:)", v11, 2u);
  }

  v12 = *(a3 + 16);
  v14 = 0;
  sub_100002C14(v12, a2, a1, &v14);
  v13 = *(aBlock + 2);
  swift_unknownObjectRetain();
  v13(aBlock, 0);
  swift_unknownObjectRelease();
  _Block_release(aBlock);
}

void sub_100001B38(void *a1, void *a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_10000C7E0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100001DE0(v8, qword_10000CC20);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "GenericURLProcessor.processNdef(_:reply:)", v11, 2u);
  }

  _Block_copy(aBlock);
  sub_1000019BC(a1, a2, a3, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

uint64_t sub_100001C70(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_10000C7E0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100001DE0(v8, qword_10000CC20);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "GenericURLProcessor.processNdef(_:replyWithXPCEvent:)", v11, 2u);
  }

  v12 = *(a3 + 16);
  v15 = 0;
  sub_100002C14(v12, a2, a1, &v15);
  v13 = *(a4 + 16);
  swift_unknownObjectRetain();
  v13(a4, 0, 0);
  return swift_unknownObjectRelease();
}

uint64_t sub_100001DE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001E18()
{
  v0 = type metadata accessor for Logger();
  sub_100002398(v0, qword_10000CC20);
  sub_100001DE0(v0, qword_10000CC20);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100001EA0(void *a1, uint64_t a2)
{
  if (qword_10000C7E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100001DE0(v4, qword_10000CC20);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Accepting XPC connection", v7, 2u);
  }

  v8 = *(a2 + 16);
  [a1 setExportedObject:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v9 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___NFBackgroundTagReadingExtensionProtocol];
  sub_100001974(&qword_10000C9E0, &qword_100004D68);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100004D00;
  v11 = sub_100002350(0, &qword_10000C9E8, NFNdefMessageInternal_ptr);
  *(v10 + 56) = sub_100001974(&qword_10000C9F0, &qword_100004D70);
  *(v10 + 32) = v11;
  v12 = sub_100002350(0, &qword_10000C9F8, NFNdefRecordInternal_ptr);
  *(v10 + 88) = sub_100001974(&qword_10000CA00, &qword_100004D78);
  *(v10 + 64) = v12;
  v13 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100004D10;
  v17 = sub_100002350(0, &qword_10000CA08, NFTagInternal_ptr);
  *(v16 + 56) = sub_100001974(qword_10000CA10, &unk_100004D80);
  *(v16 + 32) = v17;
  v18 = objc_allocWithZone(NSSet);
  v19 = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initWithArray:v19];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  [a1 setExportedInterface:v9];
  [a1 resume];

  return 1;
}

uint64_t sub_100002350(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *sub_100002398(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100002404(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100002474(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1000025B4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id *sub_100002804(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = NFTagAppLauncher;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [[NSMutableArray alloc] initWithArray:v3];
      v5 = a1[1];
      a1[1] = v4;

      [a1[1] addObject:a1];
    }
  }

  return a1;
}

uint64_t sub_100002C14(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  v10 = 0;
  if (!a1 || !v7 || !v8)
  {
    goto LABEL_48;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = *(a1 + 8);
  v12 = [v11 countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (!v12)
  {
    v10 = 0;
    goto LABEL_47;
  }

  v13 = v12;
  v53 = a1;
  v14 = *v58;
  while (2)
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v58 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v57 + 1) + 8 * i);
      v56 = 0;
      v55 = 0;
      v17 = [v16 processNDEFMesssage:v9 outputMessage:&v55 tag:v7 stopProcessing:&v56];
      v18 = v55;
      v19 = v18;
      if (v17)
      {
        v20 = v18 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        if (!v53[2])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v22 = Logger;
            Class = object_getClass(v53);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v53);
            Name = sel_getName("processTag:withNDEFMessage:matchedProcessor:");
            v26 = 45;
            if (isMetaClass)
            {
              v26 = 43;
            }

            v22(5, "%c[%{public}s %{public}s]:%i Creating barcode parser", v26, ClassName, Name, 100);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v27 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = object_getClass(v53);
            if (class_isMetaClass(v28))
            {
              v29 = 43;
            }

            else
            {
              v29 = 45;
            }

            v30 = object_getClassName(v53);
            v31 = sel_getName("processTag:withNDEFMessage:matchedProcessor:");
            *buf = 67109890;
            v62 = v29;
            v63 = 2082;
            v64 = v30;
            v65 = 2082;
            v66 = v31;
            v67 = 1024;
            v68 = 100;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Creating barcode parser", buf, 0x22u);
          }

          v32 = objc_opt_new();
          v33 = v53[2];
          v53[2] = v32;

          if (!v53[2])
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v34 = NFLogGetLogger();
            if (v34)
            {
              v35 = v34;
              v36 = object_getClass(v53);
              v37 = class_isMetaClass(v36);
              v38 = object_getClassName(v53);
              v52 = sel_getName("processTag:withNDEFMessage:matchedProcessor:");
              v39 = 45;
              if (v37)
              {
                v39 = 43;
              }

              v35(3, "%c[%{public}s %{public}s]:%i Failed to allocate barcode parser", v39, v38, v52, 104);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v40 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = object_getClass(v53);
              if (class_isMetaClass(v41))
              {
                v42 = 43;
              }

              else
              {
                v42 = 45;
              }

              v43 = object_getClassName(v53);
              v44 = sel_getName("processTag:withNDEFMessage:matchedProcessor:");
              *buf = 67109890;
              v62 = v42;
              v63 = 2082;
              v64 = v43;
              v65 = 2082;
              v66 = v44;
              v67 = 1024;
              v68 = 104;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to allocate barcode parser", buf, 0x22u);
            }
          }
        }

        v45 = [[NFCNDEFMessage alloc] initWithNFNdefMessage:v9];
        v46 = NFSharedSignpostLog();
        if (os_signpost_enabled(v46))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TagAppProcessed", "", buf, 2u);
        }

        v47 = v53[2];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_100003154;
        v54[3] = &unk_100008440;
        v54[4] = v53;
        v54[5] = "processTag:withNDEFMessage:matchedProcessor:";
        [v47 postNotificationForURL:v17 payload:v45 completionHandler:v54];
        v48 = NFSharedSignpostLog();
        if (os_signpost_enabled(v48))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LPCD_POSTED_NOTIFICATION", "", buf, 2u);
        }

        goto LABEL_46;
      }

      if (v56 == 1)
      {
        v49 = v16;
        *a4 = v16;
LABEL_46:

        v10 = 1;
        goto LABEL_47;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v57 objects:v69 count:16];
    v10 = 0;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_47:

LABEL_48:
  return v10;
}

void sub_100003154(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v7 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    if (a2)
    {
      v12 = @"Y";
    }

    else
    {
      v12 = @"N";
    }

    v20 = v12;
    v13 = 45;
    if (isMetaClass)
    {
      v13 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i Posted notification, isActionable:%{public}@, error:%{public}@", v13, ClassName, Name, 114, v20, v5);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v14 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(*(a1 + 32));
    v18 = sel_getName(*(a1 + 40));
    *buf = 67110402;
    if (a2)
    {
      v19 = @"Y";
    }

    else
    {
      v19 = @"N";
    }

    v22 = v16;
    v23 = 2082;
    v24 = v17;
    v25 = 2082;
    v26 = v18;
    v27 = 1024;
    v28 = 114;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Posted notification, isActionable:%{public}@, error:%{public}@", buf, 0x36u);
  }
}

void sub_100003770(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100003850;
    v9[3] = &unk_100008490;
    v9[4] = a1;
    v12 = "notifySharingServicesClient:payload:retryCount:";
    v13 = a4;
    v10 = v7;
    v11 = v8;
    [v10 broadwayPresentCardWithCode:v11 options:0 completion:v9];
  }
}

void sub_100003850(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
LABEL_23:
    [*(a1 + 40) invalidate];
    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v5(5, "%c[%{public}s %{public}s]:%i error=%{public}@", v8, ClassName, Name, 35, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v9 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v10))
    {
      v11 = 43;
    }

    else
    {
      v11 = 45;
    }

    v12 = object_getClassName(*(a1 + 32));
    v13 = sel_getName(*(a1 + 56));
    *buf = 67110146;
    v38 = v11;
    v39 = 2082;
    v40 = v12;
    v41 = 2082;
    v42 = v13;
    v43 = 1024;
    v44 = 35;
    v45 = 2114;
    v46 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i error=%{public}@", buf, 0x2Cu);
  }

  if (!*(a1 + 64))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(*(a1 + 32));
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(*(a1 + 32));
      v32 = sel_getName(*(a1 + 56));
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(3, "%c[%{public}s %{public}s]:%i Maximum retry count is reached; dropping notification", v24, v23, v32, 37);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(*(a1 + 32));
      v29 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v38 = v27;
      v39 = 2082;
      v40 = v28;
      v41 = 2082;
      v42 = v29;
      v43 = 1024;
      v44 = 37;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Maximum retry count is reached; dropping notification", buf, 0x22u);
    }

    goto LABEL_23;
  }

  v14 = dispatch_time(0, 100000000);
  v15 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003BC0;
  block[3] = &unk_100008468;
  v16 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v34 = v16;
  v17 = *(a1 + 48);
  v18 = *(a1 + 64);
  v35 = v17;
  v36 = v18;
  dispatch_after(v14, v15, block);

LABEL_24:
}