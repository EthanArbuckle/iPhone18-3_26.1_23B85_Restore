uint64_t sub_10016F0BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  if (a6)
  {
    if (a2)
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 56);
      ObjectType = swift_getObjectType();
      EmbeddedChannel.WrongTypeError.actual.getter(ObjectType, &type metadata for ()[8]);
      sub_100171E70();
      EventLoop.makePromise<A>(of:file:line:)(v12, v13, v14, v15, 21, ObjectType, v16, v10);
      v17 = *(v9 + 56);
      v18 = swift_getObjectType();
      EmbeddedChannel.WrongTypeError.actual.getter(v18, &type metadata for ()[8]);
      sub_100171E70();
      EventLoop.makePromise<A>(of:file:line:)(v19, v20, v21, v22, 21, v18, v23, v17);
      v24 = *(v9 + 56);
      v25 = swift_getObjectType();
      EmbeddedChannel.WrongTypeError.actual.getter(v25, &type metadata for ()[8]);
      sub_100171E70();
      EventLoop.makePromise<A>(of:file:line:)(v26, v27, v28, v29, 21, v25, v30, v24);

      sub_100171E70();
      sub_10016E930(v31);

      sub_100171E70();
      sub_10016EC64(v32);

      sub_10019F874("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/HTTPEncoder.swift", 113, 2, 22, debugOnly(_:), 0);

      sub_10002FEFC(v33);
      v7 = a3;
    }

    else
    {
    }
  }

  v34 = IOData.readableBytes.getter(v7, a4, a5 & 0xFFFFFFFFFFFFFFLL);
  if ((a2 & 1) == 0)
  {
    v74 = v7;
    v75 = a4;
    v76 = a5;
    sub_100171EC0();
    v79 = 0;
    sub_100037154();
    ChannelHandlerContext.write(_:promise:)();

    sub_100034310(&v74);
  }

  v35 = v34;
  v67 = v7;
  sub_10009B39C();
  v37 = v36;
  v38 = swift_getObjectType();
  v39 = (*(v37 + 16))(v38, v37);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  swift_unknownObjectRelease();
  type metadata accessor for ByteBuffer._Storage();
  v46 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(32, v39, v41, v43, v45);
  v47 = *(v46 + 16);
  v69 = v46;
  v70 = 0;
  v71 = v47;
  v72 = 0;
  v73 = 0;
  v74 = v35;
  sub_1000DD154();
  v48 = sub_1001F6D88();
  v50 = v49;
  sub_10007C1D0(v48, v49, &v69, 0);
  if (v52)
  {
    v53._countAndFlagsBits = v48;
    v53._object = v50;
    v51 = ByteBuffer._setStringSlowpath(_:at:)(v53, 0);
  }

  v54 = v51;

  v58 = HIDWORD(v70) + v54;
  if (__CFADD__(HIDWORD(v70), v54))
  {
    __break(1u);
    goto LABEL_17;
  }

  HIDWORD(v70) += v54;
  result = sub_100171EF0("\r\n", v56, v57, v58);
  v59 = (HIDWORD(v70) + result);
  if (__CFADD__(HIDWORD(v70), result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v60 = v69;
  v61 = v70;
  v62 = v71;
  v63 = v72;
  v64 = v73;
  v74 = v69;
  v75 = v70 | (v59 << 32);
  v78 = v73;
  v77 = v72;
  v76 = v71;
  v79 = 0;

  ChannelHandlerContext.write(_:promise:)();
  sub_100034310(&v74);
  v74 = v67;
  v75 = a4;
  sub_100171EC0();
  v76 = a5;
  v79 = 0;
  sub_100037154();
  ChannelHandlerContext.write(_:promise:)();
  result = sub_100034310(&v74);
  if (v59 < v61)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v65 = v59 - 2;
  if (__CFADD__(v61, v59 - v61 - 2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v59 >= v65)
  {
    v74 = v60;
    v75 = (v59 << 32) | v65;
    v76 = v62;
    v78 = (v62 | (v63 << 32) | (v64 << 48)) >> 48;
    v77 = (v62 | (v63 << 32) | (v64 << 48)) >> 32;
    v79 = 0;

    ChannelHandlerContext.write(_:promise:)();

    sub_100034310(&v74);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10016F594(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (!a3)
    {
      sub_10009B39C();
      v45 = v44;
      ObjectType = swift_getObjectType();
      v47 = (*(v45 + 16))(ObjectType, v45);
      v49 = v48;
      v51 = v50;
      v53 = v52;
      swift_unknownObjectRelease();
      type metadata accessor for ByteBuffer._Storage();
      v54 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(8, v47, v49, v51, v53);
      v55 = *(v54 + 16);
      v56 = v54;
      v57 = 0;
      v58 = v55;
      v59 = 0;
      v60 = 0;
      v39 = ByteBuffer.setStaticString(_:at:)("0\r\n\r\n", 5, 2, 0);
      goto LABEL_20;
    }

    sub_10009B39C();
    v7 = v6;
    v8 = swift_getObjectType();
    v9 = (*(v7 + 16))(v8, v7);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    v16 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(256, v9, v11, v13, v15);
    v17 = *(v16 + 16);
    v56 = v16;
    LODWORD(v57) = 0;
    v58 = v17;
    v59 = 0;
    v60 = 0;
    v18 = ByteBuffer.setStaticString(_:at:)("0\r\n", 3, 2, 0);
    HIDWORD(v57) = v18;
    v19 = *(a3 + 16);
    if (v19)
    {
      v20 = (a3 + 56);
      while (1)
      {
        v21 = *(v20 - 3);
        v22 = *(v20 - 2);
        v23 = v18;
        v25 = *(v20 - 1);
        v24 = *v20;

        sub_10007C1D0(v21, v22, &v56, v23);
        if (v27)
        {
          v28._countAndFlagsBits = v21;
          v28._object = v22;
          v26 = ByteBuffer._setStringSlowpath(_:at:)(v28, v23);
        }

        v29 = HIDWORD(v57) + v26;
        if (__CFADD__(HIDWORD(v57), v26))
        {
          break;
        }

        HIDWORD(v57) += v26;
        ByteBuffer._setBytes(_:at:)(": ", "", v29);
        v31 = (HIDWORD(v57) + v30);
        if (__CFADD__(HIDWORD(v57), v30))
        {
          goto LABEL_26;
        }

        HIDWORD(v57) += v30;
        sub_10007C1D0(v25, v24, &v56, v31);
        if (v33)
        {
          v34._countAndFlagsBits = v25;
          v34._object = v24;
          v32 = ByteBuffer._setStringSlowpath(_:at:)(v34, v31);
        }

        v35 = v32;

        v36 = HIDWORD(v57) + v35;
        if (__CFADD__(HIDWORD(v57), v35))
        {
          goto LABEL_27;
        }

        HIDWORD(v57) += v35;
        ByteBuffer._setBytes(_:at:)("\r\n", "", v36);
        v18 = HIDWORD(v57) + v37;
        if (__CFADD__(HIDWORD(v57), v37))
        {
          goto LABEL_28;
        }

        HIDWORD(v57) += v37;
        v20 += 4;
        if (!--v19)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      __break(1u);
      goto LABEL_29;
    }

LABEL_14:
    result = ByteBuffer.setStaticString(_:at:)("\r\n", 2, 2, v18);
    v39 = (HIDWORD(v57) + result);
    if (!__CFADD__(HIDWORD(v57), result))
    {
LABEL_20:
      v61 = v56;
      v62 = v57 | (v39 << 32);
      v65 = v60;
      v64 = v59;
      v63 = v58;
      v66 = 0;

      ChannelHandlerContext.write(_:promise:)();
      sub_100034310(&v61);
    }

    __break(1u);
    __break(1u);
  }

  else
  {
    if (a5)
    {
      sub_10009B39C();
      v41 = v40;
      v42 = swift_getObjectType();
      v43 = *(v41 + 16);

      v43(v42, v41);
      swift_unknownObjectRelease();
      if (qword_1002AC430 == -1)
      {
LABEL_18:
        v61 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
        v62 = qword_1002E6088;
        v65 = byte_1002E6096;
        v64 = word_1002E6094;
        v63 = dword_1002E6090;
        v66 = 0;

        ChannelHandlerContext.write(_:promise:)();

        sub_100034310(&v61);
      }

LABEL_29:
      swift_once();
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_10016FA18(char a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v5 = HIWORD(a3);
  if (a1)
  {
    if (a1 == 1)
    {
      v6._countAndFlagsBits = 0x2D746E65746E6F63;
      v6._object = 0xEE006874676E656CLL;
      HTTPHeaders.remove(name:)(v6);
      v7._object = 0x800000010022B530;
      v7._countAndFlagsBits = 0xD000000000000011;
      HTTPHeaders.remove(name:)(v7);
      return 2;
    }

    v13._countAndFlagsBits = 0x2D746E65746E6F63;
    v13._object = 0xEE006874676E656CLL;
    if (HTTPHeaders.contains(name:)(v13))
    {
      return 1;
    }

    result = 2;
    if (v5 == 1 && v3)
    {
      HTTPHeaders.subscript.getter();
      if (!v14[2])
      {

        return 2;
      }

      v16 = v14[4];
      v15 = v14[5];

      if (v16 != 0x64656B6E756863 || v15 != 0xE700000000000000)
      {
        v18 = sub_1001F7EA8();

        result = 0;
        if ((v18 & 1) == 0)
        {
          return 2;
        }

        return result;
      }

      return 0;
    }
  }

  else
  {
    v9._countAndFlagsBits = 0x2D746E65746E6F63;
    v9._object = 0xEE006874676E656CLL;
    if (HTTPHeaders.contains(name:)(v9))
    {
      return 1;
    }

    result = 2;
    if (v5 == 1 && v3)
    {
      if (sub_100030BD4(0x697463656E6E6F63, 0xEA00000000006E6FLL, 0xD000000000000011, 0x800000010022B530))
      {
        *(a2 + 8) = 2;
      }

      v10._object = 0x800000010022B530;
      v10._countAndFlagsBits = 0xD000000000000011;
      HTTPHeaders.remove(name:)(v10);
      v11._countAndFlagsBits = 0x64656B6E756863;
      v12._object = 0x800000010022B530;
      v12._countAndFlagsBits = 0xD000000000000011;
      v11._object = 0xE700000000000000;
      HTTPHeaders.add(name:value:)(v12, v11);
      return 0;
    }
  }

  return result;
}

void HTTPRequestEncoder.write(context:data:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000183C4(&qword_1002ADD38);
  sub_1000375F8();
  v8 = v5;
  v9 = v6;
  v10 = v7;
  if (HIBYTE(v7))
  {
    if (HIBYTE(v7) != 1)
    {
      v58 = *(v3 + 16);

      sub_10016F594(a1, v58, v8, v9, a3);
      v12 = sub_100171ED4();
      v15 = 2;
      goto LABEL_31;
    }

    if (IOData.readableBytes.getter(v5, v6, v7 & 0xFFFFFFFFFFFFFFLL) >= 1)
    {
      v11 = *(v3 + 16);

      sub_10016F0BC(a1, v11, v8, v9, v10 & 0xFFFFFFFFFFFFFFLL, a3);
      v12 = sub_100171ED4();
      v15 = 1;
LABEL_31:
      sub_100034284(v12, v13, v14, v15);
      return;
    }

    v70 = v8;
    v71 = v9;
    v72 = v10;
    sub_100171EC0();
    v75 = 0;
    sub_100171ED4();
    sub_100037154();
    ChannelHandlerContext.write(_:promise:)();
    v59 = sub_100171ED4();
    sub_100034284(v59, v60, v61, 1);
    sub_100034310(&v70);
  }

  else
  {
    v68 = v6;
    v69 = v7;
    v16 = *(v5 + 24);
    if (v16 == 11)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 == 1 || v16 == 4 || v16 == 10)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
    }

    *(v3 + 16) = sub_10016FA18(v20, &v68, *(v8 + 48)) == 0;
    v21 = v68;
    sub_10009B39C();
    v23 = v22;
    ObjectType = swift_getObjectType();
    v25 = (*(v23 + 16))(ObjectType, v23);
    v27 = v26;
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    v32 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(256, v25, v27, v29, v31);
    v33 = *(v32 + 16);
    v63 = v32;
    v64 = 0;
    v65 = v33;
    v66 = 0;
    v67 = 0;
    sub_10017003C(v8);
    v36 = *(v21 + 16);
    v37 = 0;
    if (v36)
    {
      v38 = v21 + 56;
      while (1)
      {
        v39 = *(v38 - 24);
        v40 = *(v38 - 16);
        v41 = v37;

        sub_10007C1D0(v39, v40, &v63, v41);
        if (v43)
        {
          v44._countAndFlagsBits = v39;
          v44._object = v40;
          v42 = ByteBuffer._setStringSlowpath(_:at:)(v44, v41);
        }

        v45 = HIDWORD(v64) + v42;
        if (__CFADD__(HIDWORD(v64), v42))
        {
          break;
        }

        HIDWORD(v64) += v42;
        ByteBuffer._setBytes(_:at:)(": ", "", v45);
        v47 = (HIDWORD(v64) + v46);
        if (__CFADD__(HIDWORD(v64), v46))
        {
          goto LABEL_34;
        }

        HIDWORD(v64) += v46;
        v48 = sub_100171EE4();
        sub_10007C1D0(v48, v49, v50, v47);
        if (v52)
        {
          v53._countAndFlagsBits = sub_100171EE4();
          v51 = ByteBuffer._setStringSlowpath(_:at:)(v53, v47);
        }

        v54 = v51;

        v55 = HIDWORD(v64) + v54;
        if (__CFADD__(HIDWORD(v64), v54))
        {
          goto LABEL_35;
        }

        HIDWORD(v64) += v54;
        ByteBuffer._setBytes(_:at:)("\r\n", "", v55);
        v37 = HIDWORD(v64) + v56;
        if (__CFADD__(HIDWORD(v64), v56))
        {
          goto LABEL_36;
        }

        HIDWORD(v64) += v56;
        v38 += 32;
        if (!--v36)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }

    else
    {
LABEL_28:
      v57 = sub_100171EF0("\r\n", v34, v35, v37);
      if (!__CFADD__(HIDWORD(v64), v57))
      {
        v70 = v63;
        v71 = v64 | ((HIDWORD(v64) + v57) << 32);
        v74 = v67;
        v73 = v66;
        v72 = v65;
        v75 = 0;

        ChannelHandlerContext.write(_:promise:)();
        sub_100034310(&v70);

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10017003C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_10005E2E0(v3, v4);
  sub_10017180C(v3, v4);
  sub_10005E2F4(v3, v4);
  sub_10016E8A0(32);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  v7._countAndFlagsBits = v5;
  v7._object = v6;
  ByteBuffer.writeString(_:)(v7);

  sub_10016E8A0(32);
  sub_1001715CC(*(a1 + 48));
  result = ByteBuffer.setStaticString(_:at:)("\r\n", 2, 2, *(v1 + 12));
  v9 = *(v1 + 12);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 12) = v11;
  }

  return result;
}

uint64_t HTTPResponseEncoder.write(context:data:promise:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000183C4(&qword_1002ADA10);
  sub_1000375F0();
  v11 = v8;
  v12 = v10;
  if (!HIBYTE(v10))
  {
    v92 = v9;
    v93 = v10;
    v17 = v8[4];
    if (v17 >= 0x3C)
    {
      v18 = (HTTPResponseStatus.code.getter(v8[2], v8[3], v17) - 100) < 0x64;
    }

    else
    {
      v18 = byte_10021318A[v17];
    }

    *(v4 + 16) = sub_10016FA18(v18, &v92, *(v11 + 40)) == 0;
    v12 = v92;
    sub_10009B39C();
    sub_1000A4220();
    sub_10012F1B4();
    v50 = v49();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(256, v50, v52, v54, v56);
    sub_100171E58();
    sub_1001707CC(v11);
    v11 = *(v12 + 16);
    v59 = v95;
    if (v11)
    {
      v60 = (v12 + 56);
      while (1)
      {
        v61 = *(v60 - 3);
        v12 = *(v60 - 2);
        v62 = v59;
        v5 = *v60;

        sub_10007C1D0(v61, v12, v94, v62);
        if (v64)
        {
          v65._countAndFlagsBits = v61;
          v65._object = v12;
          v63 = ByteBuffer._setStringSlowpath(_:at:)(v65, v62);
        }

        v66 = v95 + v63;
        if (__CFADD__(v95, v63))
        {
          break;
        }

        v95 += v63;
        ByteBuffer._setBytes(_:at:)(": ", "", v66);
        v68 = v95 + v67;
        if (__CFADD__(v95, v67))
        {
          goto LABEL_45;
        }

        v95 += v67;
        v69 = sub_100171EE4();
        sub_10007C1D0(v69, v70, v71, v68);
        if (v73)
        {
          v74._countAndFlagsBits = sub_100171EE4();
          v72 = ByteBuffer._setStringSlowpath(_:at:)(v74, v68);
        }

        v75 = v72;

        v76 = v95 + v75;
        if (__CFADD__(v95, v75))
        {
          goto LABEL_46;
        }

        v95 += v75;
        ByteBuffer._setBytes(_:at:)("\r\n", "", v76);
        v59 = v95 + v77;
        if (__CFADD__(v95, v77))
        {
          goto LABEL_47;
        }

        v95 += v77;
        v60 += 4;
        if (!--v11)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_35:
    v78 = sub_100171EF0("\r\n", v57, v58, v59);
    if (__CFADD__(v95, v78))
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    sub_100171E80();
    ChannelHandlerContext.write(_:promise:)();
    sub_100034310(v96);
  }

  if (HIBYTE(v10) == 1)
  {
    v13 = *(v4 + 16);
    v14 = v9;

    sub_10016F0BC(a1, v13, v11, v14, v12 & 0xFFFFFFFFFFFFFFLL, a3);
    v8 = v11;
    v9 = v14;
    v10 = v12;
    v15 = 1;
    return sub_100034284(v8, v9, v10, v15);
  }

  if (*(v4 + 16) != 1)
  {
    if (!a3)
    {
      v15 = 2;
      return sub_100034284(v8, v9, v10, v15);
    }

    v5 = v9;
    sub_10009B39C();
    v79 = sub_1000A4220();
    v80 = *(v3 + 16);

    v80(v79, v3);
    swift_unknownObjectRelease();
    if (qword_1002AC430 == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_54;
  }

  v90 = v9;
  if (v8)
  {
    sub_10009B39C();
    sub_1000A4220();
    sub_10012F1B4();
    v20 = v19();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(256, v20, v22, v24, v26);
    sub_100171E58();
    v27 = ByteBuffer.setStaticString(_:at:)("0\r\n", 3, 2, 0);
    v30 = v95 + v27;
    if (__CFADD__(v95, v27))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      swift_once();
LABEL_39:
      v96[0] = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
      v96[1] = qword_1002E6088;
      v99 = byte_1002E6096;
      v98 = word_1002E6094;
      v97 = dword_1002E6090;
      v100 = 0;

      ChannelHandlerContext.write(_:promise:)();

      sub_100034284(v11, v5, v12, 2);

      return sub_100034310(v96);
    }

    v89 = v12;
    v95 += v27;
    v31 = v11;
    v11 = *(v11 + 16);
    v91 = v31;
    if (v11)
    {
      v32 = (v31 + 56);
      v12 = "\r\n";
      while (1)
      {
        v33 = *(v32 - 3);
        v5 = *(v32 - 2);
        v34 = v30;
        v36 = *(v32 - 1);
        v35 = *v32;

        sub_10007C1D0(v33, v5, v94, v34);
        if (v38)
        {
          v39._countAndFlagsBits = v33;
          v39._object = v5;
          v37 = ByteBuffer._setStringSlowpath(_:at:)(v39, v34);
        }

        v40 = v95 + v37;
        if (__CFADD__(v95, v37))
        {
          break;
        }

        v95 += v37;
        ByteBuffer._setBytes(_:at:)(": ", "", v40);
        v42 = v95 + v41;
        if (__CFADD__(v95, v41))
        {
          goto LABEL_49;
        }

        v95 += v41;
        sub_10007C1D0(v36, v35, v94, v42);
        if (v44)
        {
          v45._countAndFlagsBits = v36;
          v45._object = v35;
          v43 = ByteBuffer._setStringSlowpath(_:at:)(v45, v42);
        }

        v46 = v43;

        v47 = v95 + v46;
        if (__CFADD__(v95, v46))
        {
          goto LABEL_50;
        }

        v95 += v46;
        ByteBuffer._setBytes(_:at:)("\r\n", "", v47);
        v30 = v95 + v48;
        if (__CFADD__(v95, v48))
        {
          goto LABEL_51;
        }

        v95 += v48;
        v32 += 4;
        if (!--v11)
        {
          goto LABEL_21;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_21:
    result = sub_100171EF0("\r\n", v28, v29, v30);
    if (!__CFADD__(v95, result))
    {
      v11 = v91;
      v12 = v89;
LABEL_41:
      sub_100171E80();
      ChannelHandlerContext.write(_:promise:)();
      sub_100034284(v11, v90, v12, 2);
      sub_100034310(v96);
    }

    __break(1u);
  }

  else
  {
    sub_10009B39C();
    sub_1000A4220();
    sub_10012F1B4();
    v82 = v81();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    swift_unknownObjectRelease();
    type metadata accessor for ByteBuffer._Storage();
    static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(8, v82, v84, v86, v88);
    sub_100171E58();
    result = ByteBuffer.setStaticString(_:at:)("0\r\n\r\n", 5, 2, 0);
    if (!__CFADD__(v95, result))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

void sub_1001707CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 42);
  v4 = *(a1 + 32);
  switch(v4)
  {
    case 0uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 100 Continue\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 100 Continue\r\n";
      }

      goto LABEL_289;
    case 1uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 101 Switching Protocols\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 101 Switching Protocols\r\n";
      }

      goto LABEL_322;
    case 2uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 102 Processing\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 102 Processing\r\n";
      }

      goto LABEL_293;
    case 3uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 200 OK\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 200 OK\r\n";
      }

      v6 = 17;
      goto LABEL_243;
    case 4uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 201 Created\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 201 Created\r\n";
      }

      goto LABEL_287;
    case 5uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 202 Accepted\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 202 Accepted\r\n";
      }

      goto LABEL_289;
    case 6uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 203 Non-Authoritative Information\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 203 Non-Authoritative Information\r\n";
      }

      goto LABEL_313;
    case 7uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 204 No Content\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 204 No Content\r\n";
      }

LABEL_293:
      v6 = 25;
      goto LABEL_243;
    case 8uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 205 Reset Content\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 205 Reset Content\r\n";
      }

      goto LABEL_305;
    case 9uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 206 Partial Content\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 206 Partial Content\r\n";
      }

      goto LABEL_295;
    case 0xAuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 207 Multi-Status\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 207 Multi-Status\r\n";
      }

      goto LABEL_309;
    case 0xBuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 208 Already Reported\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 208 Already Reported\r\n";
      }

      goto LABEL_283;
    case 0xCuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 226 IM Used\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 226 IM Used\r\n";
      }

LABEL_287:
      v6 = 22;
      goto LABEL_243;
    case 0xDuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 300 Multiple Choices\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 300 Multiple Choices\r\n";
      }

      goto LABEL_283;
    case 0xEuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 301 Moved Permanently\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 301 Moved Permanently\r\n";
      }

      goto LABEL_324;
    case 0xFuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 302 Found\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 302 Found\r\n";
      }

      v6 = 20;
      goto LABEL_243;
    case 0x10uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 303 See Other\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 303 See Other\r\n";
      }

      goto LABEL_316;
    case 0x11uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 304 Not Modified\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 304 Not Modified\r\n";
      }

      goto LABEL_309;
    case 0x12uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 305 Use Proxy\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 305 Use Proxy\r\n";
      }

      goto LABEL_316;
    case 0x13uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 307 Tempory Redirect\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 307 Tempory Redirect\r\n";
      }

      goto LABEL_283;
    case 0x14uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 308 Permanent Redirect\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 308 Permanent Redirect\r\n";
      }

      goto LABEL_302;
    case 0x15uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 400 Bad Request\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 400 Bad Request\r\n";
      }

      goto LABEL_326;
    case 0x16uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 401 Unauthorized\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 401 Unauthorized\r\n";
      }

      goto LABEL_309;
    case 0x17uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 402 Payment Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 402 Payment Required\r\n";
      }

      goto LABEL_283;
    case 0x18uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 403 Forbidden\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 403 Forbidden\r\n";
      }

      goto LABEL_316;
    case 0x19uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 404 Not Found\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 404 Not Found\r\n";
      }

LABEL_316:
      v6 = 24;
      goto LABEL_243;
    case 0x1AuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 405 Method Not Allowed\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 405 Method Not Allowed\r\n";
      }

      goto LABEL_302;
    case 0x1BuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 406 Not Acceptable\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 406 Not Acceptable\r\n";
      }

      v6 = 29;
      goto LABEL_243;
    case 0x1CuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 407 Proxy Authentication Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 407 Proxy Authentication Required\r\n";
      }

      goto LABEL_313;
    case 0x1DuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 408 Request Timeout\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 408 Request Timeout\r\n";
      }

      goto LABEL_295;
    case 0x1EuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 409 Conflict\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 409 Conflict\r\n";
      }

LABEL_289:
      v6 = 23;
      goto LABEL_243;
    case 0x1FuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 410 Gone\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 410 Gone\r\n";
      }

      v6 = 19;
      goto LABEL_243;
    case 0x20uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 411 Length Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 411 Length Required\r\n";
      }

      goto LABEL_295;
    case 0x21uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 412 Precondition Failed\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 412 Precondition Failed\r\n";
      }

      goto LABEL_322;
    case 0x22uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 413 Payload Too Large\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 413 Payload Too Large\r\n";
      }

      goto LABEL_324;
    case 0x23uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 414 URI Too Long\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 414 URI Too Long\r\n";
      }

      goto LABEL_309;
    case 0x24uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 415 Unsupported Media Type\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 415 Unsupported Media Type\r\n";
      }

      v6 = 37;
      goto LABEL_243;
    case 0x25uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 416 Request Range Not Satisified\r\n";
        v6 = 43;
        goto LABEL_243;
      }

      if (*(a1 + 40))
      {
        goto LABEL_242;
      }

      v5 = "HTTP/1.0 416 Range Not Satisfiable\r\n";
      goto LABEL_299;
    case 0x26uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 417 Expectation Failed\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 417 Expectation Failed\r\n";
      }

LABEL_302:
      v6 = 33;
      goto LABEL_243;
    case 0x27uLL:
      goto LABEL_242;
    case 0x28uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 421 Misdirected Request\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 421 Misdirected Request\r\n";
      }

      goto LABEL_322;
    case 0x29uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 422 Unprocessable Entity\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 422 Unprocessable Entity\r\n";
      }

      goto LABEL_281;
    case 0x2AuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 423 Locked\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 423 Locked\r\n";
      }

      v6 = 21;
      goto LABEL_243;
    case 0x2BuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 424 Failed Dependency\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 424 Failed Dependency\r\n";
      }

      goto LABEL_324;
    case 0x2CuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 426 Upgrade Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 426 Upgrade Required\r\n";
      }

LABEL_283:
      v6 = 31;
      goto LABEL_243;
    case 0x2DuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 428 Precondition Required\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 428 Precondition Required\r\n";
      }

      goto LABEL_299;
    case 0x2EuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 429 Too Many Requests\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 429 Too Many Requests\r\n";
      }

LABEL_324:
      v6 = 32;
      goto LABEL_243;
    case 0x2FuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 431 Range Not Satisfiable\r\n";
        goto LABEL_299;
      }

      if (*(a1 + 40))
      {
        goto LABEL_242;
      }

      v5 = "HTTP/1.0 431 Request Header Fields Too Large\r\n";
LABEL_197:
      v6 = 46;
      goto LABEL_243;
    case 0x30uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 451 Unavailable For Legal Reasons\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 451 Unavailable For Legal Reasons\r\n";
      }

LABEL_313:
      v6 = 44;
      goto LABEL_243;
    case 0x31uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 500 Internal Server Error\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 500 Internal Server Error\r\n";
      }

LABEL_299:
      v6 = 36;
      goto LABEL_243;
    case 0x32uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 501 Not Implemented\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 501 Not Implemented\r\n";
      }

      goto LABEL_295;
    case 0x33uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 502 Bad Gateway\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 502 Bad Gateway\r\n";
      }

LABEL_326:
      v6 = 26;
      goto LABEL_243;
    case 0x34uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 503 Service Unavailable\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 503 Service Unavailable\r\n";
      }

LABEL_322:
      v6 = 34;
      goto LABEL_243;
    case 0x35uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 504 Gateway Timeout\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 504 Gateway Timeout\r\n";
      }

LABEL_295:
      v6 = 30;
      goto LABEL_243;
    case 0x36uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 505 HTTP Version Not Supported\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 505 HTTP Version Not Supported\r\n";
      }

      v6 = 41;
      goto LABEL_243;
    case 0x37uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 506 Variant Also Negotiates\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 506 Variant Also Negotiates\r\n";
      }

      v6 = 38;
      goto LABEL_243;
    case 0x38uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 507 Insufficient Storage\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 507 Insufficient Storage\r\n";
      }

LABEL_281:
      v6 = 35;
      goto LABEL_243;
    case 0x39uLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 508 Loop Detected\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 508 Loop Detected\r\n";
      }

LABEL_305:
      v6 = 28;
      goto LABEL_243;
    case 0x3AuLL:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      if (v2 == 1)
      {
        v5 = "HTTP/1.1 510 Not Extended\r\n";
      }

      else
      {
        if (*(a1 + 40))
        {
          goto LABEL_242;
        }

        v5 = "HTTP/1.0 510 Not Extended\r\n";
      }

LABEL_309:
      v6 = 27;
      goto LABEL_243;
    case 0x3BuLL:
      if (v3 != 1 || v2 > 1)
      {
        goto LABEL_242;
      }

      v5 = "HTTP/1.1 511 Network Authentication Required\r\n";
      goto LABEL_197;
    default:
      if (v3 != 1)
      {
        goto LABEL_242;
      }

      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      if (v2 == 1)
      {

        v9 = "HTTP/1.1 ";
        goto LABEL_328;
      }

      if (!*(a1 + 40))
      {

        v9 = "HTTP/1.0 ";
LABEL_328:
        ByteBuffer.writeStaticString(_:)(v9, 9, 2);
        v13 = *(a1 + 16);
        v14 = *(a1 + 24);
        v15 = *(a1 + 32);
        sub_100171734(v13, v14, v15);
        sub_1001714E0(v13, v14, v15);
        sub_100171748(v13, v14, v15);
        ByteBuffer.writeStaticString(_:)("\r\n", 2, 2);

        sub_100171748(v7, v8, v4);
        return;
      }

LABEL_242:
      sub_1001715CC(v2 | (v3 << 16));
      sub_10016E8A0(32);
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      v12 = *(a1 + 32);
      sub_100171734(v10, v11, v12);
      sub_1001714E0(v10, v11, v12);
      sub_100171748(v10, v11, v12);
      v5 = "\r\n";
      v6 = 2;
LABEL_243:

      ByteBuffer.writeStaticString(_:)(v5, v6, 2);
      return;
  }
}

uint64_t sub_1001714E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  HTTPResponseStatus.code.getter(a1, a2, a3);
  v6._countAndFlagsBits = sub_1001F7E28();
  ByteBuffer.writeString(_:)(v6);

  sub_10016E8A0(32);
  v7._countAndFlagsBits = HTTPResponseStatus.reasonPhrase.getter(a1, a2, a3);
  ByteBuffer.writeString(_:)(v7);
}

uint64_t sub_1001715CC(unsigned int a1)
{
  v2 = HIWORD(a1);
  if (a1 != 1)
  {
LABEL_7:
    result = ByteBuffer.setStaticString(_:at:)("HTTP/", 5, 2, *(v1 + 12));
    v7 = *(v1 + 12);
    v5 = __CFADD__(v7, result);
    v8 = v7 + result;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 12) = v8;
      v9._countAndFlagsBits = sub_1001F7E28();
      ByteBuffer.writeString(_:)(v9);

      result = ByteBuffer.setStaticString(_:at:)(".", 1, 2, *(v1 + 12));
      v10 = *(v1 + 12);
      v5 = __CFADD__(v10, result);
      v11 = v10 + result;
      if (!v5)
      {
        *(v1 + 12) = v11;
        v12._countAndFlagsBits = sub_1001F7E28();
        ByteBuffer.writeString(_:)(v12);
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v2 != 1)
  {
    if (!v2)
    {
      result = ByteBuffer.setStaticString(_:at:)("HTTP/1.0", 8, 2, *(v1 + 12));
      v4 = *(v1 + 12);
      v5 = __CFADD__(v4, result);
      v6 = v4 + result;
      if (!v5)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    goto LABEL_7;
  }

  result = ByteBuffer.setStaticString(_:at:)("HTTP/1.1", 8, 2, *(v1 + 12));
  v13 = *(v1 + 12);
  v5 = __CFADD__(v13, result);
  v6 = v13 + result;
  if (v5)
  {
LABEL_15:
    __break(1u);
    return result;
  }

LABEL_11:
  *(v1 + 12) = v6;
  return result;
}

uint64_t sub_100171734(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x3C)
  {
  }

  return result;
}

uint64_t sub_100171748(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x3C)
  {
  }

  return result;
}

uint64_t sub_10017178C()
{

  return _swift_deallocObject(v0, 56, 7);
}

Swift::Int sub_10017180C(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
      result = ByteBuffer.setStaticString(_:at:)("GET", 3, 2, *(v2 + 12));
      v4 = *(v2 + 12);
      v5 = __CFADD__(v4, result);
      v6 = v4 + result;
      if (!v5)
      {
        goto LABEL_102;
      }

      __break(1u);
      goto LABEL_5;
    case 1:
      goto LABEL_47;
    case 2:
      goto LABEL_35;
    case 3:
      goto LABEL_41;
    case 4:
      goto LABEL_20;
    case 5:
      goto LABEL_59;
    case 6:
      goto LABEL_68;
    case 7:
      goto LABEL_44;
    case 8:
      goto LABEL_77;
    case 9:
      goto LABEL_26;
    case 10:
      goto LABEL_74;
    case 11:
      goto LABEL_17;
    case 12:
      goto LABEL_23;
    case 13:
      goto LABEL_65;
    case 14:
      goto LABEL_11;
    case 15:
      goto LABEL_38;
    case 16:
      goto LABEL_8;
    case 17:
      goto LABEL_53;
    case 18:
      goto LABEL_71;
    case 19:
      goto LABEL_89;
    case 20:
      goto LABEL_56;
    case 21:
      goto LABEL_62;
    case 22:
      goto LABEL_86;
    case 23:
      goto LABEL_92;
    case 24:
      goto LABEL_32;
    case 25:
      goto LABEL_29;
    case 26:
      goto LABEL_101;
    case 27:
LABEL_5:
      result = ByteBuffer.setStaticString(_:at:)("CHECKOUT", 8, 2, *(v2 + 12));
      v7 = *(v2 + 12);
      v5 = __CFADD__(v7, result);
      v6 = v7 + result;
      if (!v5)
      {
        goto LABEL_102;
      }

      __break(1u);
LABEL_8:
      result = ByteBuffer.setStaticString(_:at:)("SEARCH", 6, 2, *(v2 + 12));
      v8 = *(v2 + 12);
      v5 = __CFADD__(v8, result);
      v6 = v8 + result;
      if (v5)
      {
        __break(1u);
LABEL_11:
        result = ByteBuffer.setStaticString(_:at:)("PURGE", 5, 2, *(v2 + 12));
        v9 = *(v2 + 12);
        v5 = __CFADD__(v9, result);
        v6 = v9 + result;
        if (v5)
        {
          __break(1u);
LABEL_14:
          result = ByteBuffer.setStaticString(_:at:)("SOURCE", 6, 2, *(v2 + 12));
          v10 = *(v2 + 12);
          v5 = __CFADD__(v10, result);
          v6 = v10 + result;
          if (v5)
          {
            __break(1u);
LABEL_17:
            result = ByteBuffer.setStaticString(_:at:)("TRACE", 5, 2, *(v2 + 12));
            v11 = *(v2 + 12);
            v5 = __CFADD__(v11, result);
            v6 = v11 + result;
            if (v5)
            {
              __break(1u);
LABEL_20:
              result = ByteBuffer.setStaticString(_:at:)("POST", 4, 2, *(v2 + 12));
              v12 = *(v2 + 12);
              v5 = __CFADD__(v12, result);
              v6 = v12 + result;
              if (v5)
              {
                __break(1u);
LABEL_23:
                result = ByteBuffer.setStaticString(_:at:)("MKCOL", 5, 2, *(v2 + 12));
                v13 = *(v2 + 12);
                v5 = __CFADD__(v13, result);
                v6 = v13 + result;
                if (v5)
                {
                  __break(1u);
LABEL_26:
                  result = ByteBuffer.setStaticString(_:at:)("LINK", 4, 2, *(v2 + 12));
                  v14 = *(v2 + 12);
                  v5 = __CFADD__(v14, result);
                  v6 = v14 + result;
                  if (v5)
                  {
                    __break(1u);
LABEL_29:
                    result = ByteBuffer.setStaticString(_:at:)("OPTIONS", 7, 2, *(v2 + 12));
                    v15 = *(v2 + 12);
                    v5 = __CFADD__(v15, result);
                    v6 = v15 + result;
                    if (v5)
                    {
                      __break(1u);
LABEL_32:
                      result = ByteBuffer.setStaticString(_:at:)("MSEARCH", 7, 2, *(v2 + 12));
                      v16 = *(v2 + 12);
                      v5 = __CFADD__(v16, result);
                      v6 = v16 + result;
                      if (v5)
                      {
                        __break(1u);
LABEL_35:
                        result = ByteBuffer.setStaticString(_:at:)("ACL", 3, 2, *(v2 + 12));
                        v17 = *(v2 + 12);
                        v5 = __CFADD__(v17, result);
                        v6 = v17 + result;
                        if (v5)
                        {
                          __break(1u);
LABEL_38:
                          result = ByteBuffer.setStaticString(_:at:)("NOTIFY", 6, 2, *(v2 + 12));
                          v18 = *(v2 + 12);
                          v5 = __CFADD__(v18, result);
                          v6 = v18 + result;
                          if (v5)
                          {
                            __break(1u);
LABEL_41:
                            result = ByteBuffer.setStaticString(_:at:)("HEAD", 4, 2, *(v2 + 12));
                            v19 = *(v2 + 12);
                            v5 = __CFADD__(v19, result);
                            v6 = v19 + result;
                            if (v5)
                            {
                              __break(1u);
LABEL_44:
                              result = ByteBuffer.setStaticString(_:at:)("MOVE", 4, 2, *(v2 + 12));
                              v20 = *(v2 + 12);
                              v5 = __CFADD__(v20, result);
                              v6 = v20 + result;
                              if (v5)
                              {
                                __break(1u);
LABEL_47:
                                result = ByteBuffer.setStaticString(_:at:)("PUT", 3, 2, *(v2 + 12));
                                v21 = *(v2 + 12);
                                v5 = __CFADD__(v21, result);
                                v6 = v21 + result;
                                if (v5)
                                {
                                  __break(1u);
LABEL_50:
                                  result = ByteBuffer.setStaticString(_:at:)("MKACTIVITY", 10, 2, *(v2 + 12));
                                  v22 = *(v2 + 12);
                                  v5 = __CFADD__(v22, result);
                                  v6 = v22 + result;
                                  if (v5)
                                  {
                                    __break(1u);
LABEL_53:
                                    result = ByteBuffer.setStaticString(_:at:)("UNLOCK", 6, 2, *(v2 + 12));
                                    v23 = *(v2 + 12);
                                    v5 = __CFADD__(v23, result);
                                    v6 = v23 + result;
                                    if (v5)
                                    {
                                      __break(1u);
LABEL_56:
                                      result = ByteBuffer.setStaticString(_:at:)("REPORT", 6, 2, *(v2 + 12));
                                      v24 = *(v2 + 12);
                                      v5 = __CFADD__(v24, result);
                                      v6 = v24 + result;
                                      if (v5)
                                      {
                                        __break(1u);
LABEL_59:
                                        result = ByteBuffer.setStaticString(_:at:)("COPY", 4, 2, *(v2 + 12));
                                        v25 = *(v2 + 12);
                                        v5 = __CFADD__(v25, result);
                                        v6 = v25 + result;
                                        if (v5)
                                        {
                                          __break(1u);
LABEL_62:
                                          result = ByteBuffer.setStaticString(_:at:)("DELETE", 6, 2, *(v2 + 12));
                                          v26 = *(v2 + 12);
                                          v5 = __CFADD__(v26, result);
                                          v6 = v26 + result;
                                          if (v5)
                                          {
                                            __break(1u);
LABEL_65:
                                            result = ByteBuffer.setStaticString(_:at:)("MERGE", 5, 2, *(v2 + 12));
                                            v27 = *(v2 + 12);
                                            v5 = __CFADD__(v27, result);
                                            v6 = v27 + result;
                                            if (v5)
                                            {
                                              __break(1u);
LABEL_68:
                                              result = ByteBuffer.setStaticString(_:at:)("LOCK", 4, 2, *(v2 + 12));
                                              v28 = *(v2 + 12);
                                              v5 = __CFADD__(v28, result);
                                              v6 = v28 + result;
                                              if (v5)
                                              {
                                                __break(1u);
LABEL_71:
                                                result = ByteBuffer.setStaticString(_:at:)("REBIND", 6, 2, *(v2 + 12));
                                                v29 = *(v2 + 12);
                                                v5 = __CFADD__(v29, result);
                                                v6 = v29 + result;
                                                if (v5)
                                                {
                                                  __break(1u);
LABEL_74:
                                                  result = ByteBuffer.setStaticString(_:at:)("PATCH", 5, 2, *(v2 + 12));
                                                  v30 = *(v2 + 12);
                                                  v5 = __CFADD__(v30, result);
                                                  v6 = v30 + result;
                                                  if (v5)
                                                  {
                                                    __break(1u);
LABEL_77:
                                                    result = ByteBuffer.setStaticString(_:at:)("BIND", 4, 2, *(v2 + 12));
                                                    v31 = *(v2 + 12);
                                                    v5 = __CFADD__(v31, result);
                                                    v6 = v31 + result;
                                                    if (v5)
                                                    {
                                                      __break(1u);
LABEL_80:
                                                      result = ByteBuffer.setStaticString(_:at:)("MKCALENDAR", 10, 2, *(v2 + 12));
                                                      v32 = *(v2 + 12);
                                                      v5 = __CFADD__(v32, result);
                                                      v6 = v32 + result;
                                                      if (v5)
                                                      {
                                                        __break(1u);
LABEL_83:
                                                        result = ByteBuffer.setStaticString(_:at:)("UNSUBSCRIBE", 11, 2, *(v2 + 12));
                                                        v33 = *(v2 + 12);
                                                        v5 = __CFADD__(v33, result);
                                                        v6 = v33 + result;
                                                        if (v5)
                                                        {
                                                          __break(1u);
LABEL_86:
                                                          result = ByteBuffer.setStaticString(_:at:)("UNLINK", 6, 2, *(v2 + 12));
                                                          v34 = *(v2 + 12);
                                                          v5 = __CFADD__(v34, result);
                                                          v6 = v34 + result;
                                                          if (v5)
                                                          {
                                                            __break(1u);
LABEL_89:
                                                            result = ByteBuffer.setStaticString(_:at:)("UNBIND", 6, 2, *(v2 + 12));
                                                            v35 = *(v2 + 12);
                                                            v5 = __CFADD__(v35, result);
                                                            v6 = v35 + result;
                                                            if (v5)
                                                            {
                                                              __break(1u);
LABEL_92:
                                                              result = ByteBuffer.setStaticString(_:at:)("CONNECT", 7, 2, *(v2 + 12));
                                                              v36 = *(v2 + 12);
                                                              v5 = __CFADD__(v36, result);
                                                              v6 = v36 + result;
                                                              if (v5)
                                                              {
                                                                __break(1u);
LABEL_95:
                                                                result = ByteBuffer.setStaticString(_:at:)("PROPPATCH", 9, 2, *(v2 + 12));
                                                                v37 = *(v2 + 12);
                                                                v5 = __CFADD__(v37, result);
                                                                v6 = v37 + result;
                                                                if (v5)
                                                                {
                                                                  __break(1u);
LABEL_98:
                                                                  result = ByteBuffer.setStaticString(_:at:)("SUBSCRIBE", 9, 2, *(v2 + 12));
                                                                  v38 = *(v2 + 12);
                                                                  v5 = __CFADD__(v38, result);
                                                                  v6 = v38 + result;
                                                                  if (v5)
                                                                  {
                                                                    __break(1u);
LABEL_101:
                                                                    result = ByteBuffer.setStaticString(_:at:)("PROPFIND", 8, 2, *(v2 + 12));
                                                                    v39 = *(v2 + 12);
                                                                    v5 = __CFADD__(v39, result);
                                                                    v6 = v39 + result;
                                                                    if (v5)
                                                                    {
                                                                      __break(1u);
                                                                      JUMPOUT(0x100171DB8);
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_102:
      *(v2 + 12) = v6;
      return result;
    case 28:
      goto LABEL_95;
    case 29:
      goto LABEL_98;
    case 30:
      goto LABEL_80;
    case 31:
      goto LABEL_50;
    case 32:
      goto LABEL_83;
    case 33:
      goto LABEL_14;
    default:

      return ByteBuffer.writeString(_:)(*&a1);
  }
}

uint64_t sub_100171E80()
{
}

uint64_t sub_100171EF0(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt32 a4)
{

  return ByteBuffer.setStaticString(_:at:)(a1, 2, 2, a4);
}

uint64_t sub_100171F18(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027CB10;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100171F64(char a1)
{
  result = 6580578;
  switch(a1)
  {
    case 1:
      result = 1936881250;
      break;
    case 2:
      result = 1684632935;
      break;
    case 3:
      result = 0x6E4F707041534F69;
      break;
    case 4:
      result = 6580598;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100171FF4(void *a1)
{
  v3 = sub_1000183C4(&qword_1002B9630);
  sub_10001A278();
  v5 = v4;
  __chkstk_darwin(v6, v7);
  v9 = &v11[-v8];
  sub_10001AE68(a1, a1[3]);
  sub_100172698();
  sub_1001F8198();
  v11[15] = 0;
  sub_10005DBC4();
  sub_1001F7D88();
  if (!v1)
  {
    v11[14] = 1;
    sub_10005DBC4();
    sub_1001F7D88();
    v11[13] = 2;
    sub_10005DBC4();
    sub_1001F7D18();
    v11[12] = 3;
    sub_10005DBC4();
    sub_1001F7D18();
    v11[11] = 4;
    sub_10005DBC4();
    sub_1001F7D18();
  }

  return (*(v5 + 8))(v9, v3);
}

void *sub_10017219C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000183C4(&qword_1002B9620);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = &v25 - v10;
  sub_10001AE68(a1, a1[3]);
  sub_100172698();
  sub_1001F8178();
  if (v2)
  {
    return sub_100019CCC(a1);
  }

  LOBYTE(v33[0]) = 0;
  v12 = sub_1001F7C78();
  v31 = v13;
  sub_100172948(1);
  v14 = sub_1001F7C78();
  v30 = v15;
  v27 = v14;
  sub_100172948(2);
  v26 = sub_1001F7C08();
  v29 = v16;
  sub_100172948(3);
  v25 = sub_1001F7C08();
  v28 = v17;
  v34 = 4;
  v18 = sub_1001F7C08();
  v20 = v19;
  (*(v7 + 8))(v11, v5);
  __src[0] = v12;
  __src[1] = v31;
  v21 = v30;
  __src[2] = v27;
  __src[3] = v30;
  v22 = v29;
  __src[4] = v26;
  __src[5] = v29;
  v23 = v28;
  __src[6] = v25;
  __src[7] = v28;
  __src[8] = v18;
  __src[9] = v20;
  sub_1001726EC(__src, v33);
  sub_100019CCC(a1);
  v33[0] = v12;
  v33[1] = v31;
  v33[2] = v27;
  v33[3] = v21;
  v33[4] = v26;
  v33[5] = v22;
  v33[6] = v25;
  v33[7] = v23;
  v33[8] = v18;
  v33[9] = v20;
  sub_100064048(v33);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_100172530@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100171F18(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100172560@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100171F64(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100172594@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100171F18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001725BC(uint64_t a1)
{
  v2 = sub_100172698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001725F8(uint64_t a1)
{
  v2 = sub_100172698();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100172634@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10017219C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

unint64_t sub_100172698()
{
  result = qword_1002B9628;
  if (!qword_1002B9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9628);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InAppRegrantPurchaseHistoryRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001727F0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10017282C()
{
  result = qword_1002B9638;
  if (!qword_1002B9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9638);
  }

  return result;
}

unint64_t sub_100172884()
{
  result = qword_1002B9640;
  if (!qword_1002B9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B9640);
  }

  return result;
}

unint64_t sub_1001728DC()
{
  result = qword_1002B9648[0];
  if (!qword_1002B9648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B9648);
  }

  return result;
}

void sub_10017295C()
{
  type metadata accessor for JWS.Header();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_100172DC8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100172A10(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 72) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

        goto LABEL_22;
      case 2:
        v15 = *(a1 + v9);
        if (v15)
        {
          goto LABEL_22;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x100172B60);
      case 4:
        v15 = *(a1 + v9);
        if (!v15)
        {
          break;
        }

LABEL_22:
        v17 = v15 - 1;
        if (v11)
        {
          v17 = 0;
          LODWORD(v11) = *a1;
        }

        return v8 + (v11 | v17) + 1;
      default:
        break;
    }
  }

  if ((v6 & 0x80000000) != 0)
  {
    return sub_10001C990((a1 + v7 + 72) & ~v7, v6, v4);
  }

  v18 = *(a1 + 8);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

double sub_100172B74(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 72) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        return result;
      case 2:
        *&a1[v11] = v16;
        return result;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        return result;
      default:
        return result;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    case 3:
LABEL_42:
      __break(1u);
      JUMPOUT(0x100172D70);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (a2)
      {
LABEL_32:
        if ((v8 & 0x80000000) != 0)
        {
          v19 = &a1[v10 + 72] & ~v10;

          sub_100018460(v19, a2, v8, v6);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(a1 + 40) = 0u;
          *(a1 + 24) = 0u;
          *(a1 + 8) = 0u;
          *(a1 + 56) = 0u;
          *a1 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(a1 + 1) = (a2 - 1);
        }
      }

      return result;
  }
}

void sub_100172DC8()
{
  if (!qword_1002ACA80)
  {
    v0 = sub_1001F6FC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002ACA80);
    }
  }
}

uint64_t sub_100172E18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100172E54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100172E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100172EE4()
{

  sub_1000183C4(&qword_1002ACA10);
  sub_10003A2B4();
  v0 = sub_1001F6A68();

  return v0;
}

uint64_t sub_100172F70(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027CBA8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100172FC0(char a1)
{
  result = 6777953;
  switch(a1)
  {
    case 1:
      result = 6580587;
      break;
    case 2:
      result = 7371124;
      break;
    case 3:
      result = 6501752;
      break;
    case 4:
      result = 0x676E696666757473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100173044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_1001730B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100173124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100173194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t sub_100173204@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100172F70(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100173240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100172FC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100173284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_100172FBC(a1, a2, a3[2], a3[3], a3[4]);
  *a4 = result;
  return result;
}

uint64_t sub_1001732E0@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.unexpectedMessageEnd.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100173314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100173368(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void sub_1001733BC()
{
  sub_10001E850();
  v13[0] = v1;
  v2 = v0;
  v4 = v3;
  type metadata accessor for JWS.Header.CodingKeys();
  sub_100174A04();
  swift_getWitnessTable();
  v5 = sub_1001F7DE8();
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  v11 = v13 - v10;
  sub_10001AE68(v4, v4[3]);
  sub_1001F8198();
  v12 = v13[0];
  sub_1001F7D88();
  if (!v12)
  {
    sub_100174A1C();
    sub_100174A1C();
    if (*(v2 + 48))
    {
      v13[1] = *(v2 + 48);
      sub_1000183C4(&qword_1002ACA10);
      sub_10001DE1C(&qword_1002ACB30);
      sub_1001F7DC8();
    }

    if (*(v2 + 64))
    {
      sub_100174A1C();
    }
  }

  (*(v7 + 8))(v11, v5);
  sub_10001E868();
}

void sub_1001735DC()
{
  sub_10001E850();
  v33 = v0;
  v2 = v1;
  v29 = v3;
  type metadata accessor for JWS.Header.CodingKeys();
  sub_100174A04();
  swift_getWitnessTable();
  v31 = sub_1001F7CE8();
  sub_10001A278();
  v30 = v4;
  __chkstk_darwin(v5, v6);
  v8 = v26 - v7;
  sub_10001AE68(v2, v2[3]);
  v32 = v8;
  v9 = v33;
  sub_1001F8178();
  if (v9)
  {
    sub_100019CCC(v2);
  }

  else
  {
    v10 = v30;
    LOBYTE(v35[0]) = 0;
    v27 = sub_1001F7C78();
    v33 = v11;
    LOBYTE(v35[0]) = 1;
    v12 = sub_1001F7C78();
    v28 = v13;
    v26[1] = v12;
    sub_1000183C4(&qword_1002ACA10);
    LOBYTE(v34[0]) = 3;
    sub_10001DE1C(&qword_1002ACB50);
    sub_1001F7C48();
    v14 = v2;
    v15 = v35[0];
    v16 = sub_1001F7C08();
    v17 = *(v10 + 8);
    v19 = v18;
    v26[0] = v18;
    v17(v32, v31);
    v34[0] = v27;
    v34[1] = v33;
    sub_100174A38();
    v34[2] = v21;
    v34[3] = v20;
    v34[4] = 5527370;
    v34[5] = 0xE300000000000000;
    v34[6] = v15;
    v34[7] = v16;
    v34[8] = v19;
    v22 = type metadata accessor for JWS.Header();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v35, v34, v22);
    sub_100019CCC(v14);
    v35[0] = v27;
    v35[1] = v33;
    sub_100174A38();
    v35[2] = v25;
    v35[3] = v24;
    v35[4] = 5527370;
    v35[5] = 0xE300000000000000;
    v35[6] = v15;
    v35[7] = v16;
    v35[8] = v26[0];
    (*(v23 + 8))(v35, v22);
    memcpy(v29, v34, 0x48uLL);
  }

  sub_10001E868();
}

void sub_1001739E0(void *a1@<X8>)
{
  sub_1001735DC();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

void sub_100173A50()
{
  sub_10001E850();
  v75 = v1;
  v65 = v2;
  v68 = v3;
  v5 = v4;
  v7 = v6;
  v66 = v8;
  v67 = v9;
  __chkstk_darwin(v6, v4);
  sub_1000D4804();
  sub_1001F5E48();
  sub_10001A278();
  __chkstk_darwin(v10, v11);
  sub_1000D4804();
  v63 = v12;
  v70[0] = 46;
  v70[1] = 0xE100000000000000;
  v69[2] = v70;
  v13 = sub_1001BF6D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_100048E80, v69, v7, v5);
  v14 = 0;
  v15 = v13[2];
  v16 = v13 + 7;
  v17 = _swiftEmptyArrayStorage;
  while (v15 != v14)
  {
    if (v14 >= v13[2])
    {
      __break(1u);
LABEL_37:
      sub_10001B230();
LABEL_15:
      v37 = sub_1001F6688();
      sub_100019C94(v37, qword_1002E6180);
      v38 = sub_1001F6668();
      v39 = sub_1001F7298();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Invalid JWS header and/or payload components", v40, 2u);
      }

      LOBYTE(v70[0]) = 0;
      sub_1000B2894();
      swift_willThrowTypedImpl();
LABEL_18:
      *v75 = 0;
LABEL_19:
      sub_10001E868();
      return;
    }

    v18 = sub_1001F6BE8();
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032370();
      v17 = v23;
    }

    v21 = v17[2];
    if (v21 >= v17[3] >> 1)
    {
      sub_100032370();
      v17 = v24;
    }

    v17[2] = v21 + 1;
    v22 = &v17[2 * v21];
    v22[4] = v18;
    v22[5] = v20;
    v16 += 4;
    ++v14;
  }

  if (v17[2] != 3)
  {
    goto LABEL_13;
  }

  v25 = v17[5];
  v73 = v17[4];
  v74 = v25;
  v71 = 45;
  v72 = 0xE100000000000000;
  v70[9] = 43;
  v70[10] = 0xE100000000000000;
  v26 = sub_10001C790();
  v27 = &type metadata for String;
  v73 = sub_1001749C4();
  v74 = v28;
  v71 = 95;
  v72 = 0xE100000000000000;
  sub_1001749EC(47);
  v29 = sub_1001749C4();
  v31 = v30;

  v70[0] = v29;
  v70[1] = v31;

  v32 = sub_1001F6C38();

  if (v32 % 4)
  {
    v76._countAndFlagsBits = sub_100174A60(v32 % 4);
    sub_1001F6CA8(v76);
  }

  v33 = sub_1001F6328();
  v35 = v34;
  sub_100040C5C(v33, v34);

  v36 = v68;
  if (v35 >> 60 == 15)
  {
LABEL_13:

    goto LABEL_14;
  }

  sub_10003A36C(v33, v35);
  if (v17[2] < 2uLL)
  {
    __break(1u);
LABEL_39:
    sub_10001B230();
LABEL_29:
    v51 = sub_1001F6688();
    sub_100019C94(v51, qword_1002E6180);
    swift_errorRetain();
    v52 = sub_1001F6668();
    v53 = sub_1001F7298();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      swift_errorRetain();
      v56 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v56;
      *v55 = v56;
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to decode JWS data: %@", v54, 0xCu);
      sub_1001327E0(v55);

      v31 = v61;
      v36 = v66;
    }

    LOBYTE(v70[0]) = 0;
    sub_1000B2894();
    swift_willThrowTypedImpl();
    sub_10003A36C(v31, v35);
    sub_10003A36C(v60, v27);

    if (!v65)
    {
      memcpy(v70, v36, 0x48uLL);
      (*(*(v33 - 8) + 8))(v70, v33);
    }

    goto LABEL_18;
  }

  v61 = v33;
  v41 = v17[7];
  v73 = v17[6];
  v74 = v41;
  v71 = 45;
  v72 = 0xE100000000000000;
  sub_1001749EC(43);
  v62 = v26;
  v73 = sub_1001749C4();
  v74 = v42;
  v71 = 95;
  v72 = 0xE100000000000000;
  sub_1001749EC(47);
  v64 = v26;
  v43 = sub_1001749C4();
  v45 = v44;

  v70[0] = v43;
  v70[1] = v45;

  v46 = sub_1001F6C38();

  if (v46 % 4)
  {
    v77._countAndFlagsBits = sub_100174A60(v46 % 4);
    sub_1001F6CA8(v77);
  }

  v47 = sub_1001F6328();
  v49 = v48;
  sub_100040C5C(v47, v48);

  v31 = v61;
  if (v49 >> 60 == 15)
  {

    sub_10003A36C(v61, v35);
LABEL_14:
    if (qword_1002AC510 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  sub_10003A36C(v47, v49);
  v60 = v47;
  v50 = type metadata accessor for JWS();
  *&v66[v50[13]] = v17;
  sub_1001F5E88();
  swift_allocObject();

  sub_1001F5E78();
  (*(&type metadata for String + 13))(v63, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v64);
  sub_1001F5E58();
  v33 = type metadata accessor for JWS.Header();
  swift_getWitnessTable();
  sub_1001F5E68();
  v65 = v0;
  if (v0)
  {
    v36 = v66;

    v27 = v49;
    if (qword_1002AC510 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  memcpy(v66, v70, 0x48uLL);
  sub_1001F5E68();

  (*(&type metadata for String + 4))(&v66[v50[11]], v62, v67);
  if (v17[2] >= 3uLL)
  {
    v58 = v17[8];
    v57 = v17[9];

    sub_10003A36C(v61, v35);
    sub_10003A36C(v60, v49);
    v59 = &v66[v50[12]];
    *v59 = v58;
    *(v59 + 1) = v57;
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1001743A4()
{
  sub_10001E850();
  v2 = v1;
  v18 = v4;
  v19 = v3;
  v5 = type metadata accessor for JWS();
  sub_10001A278();
  v17 = v6;
  __chkstk_darwin(v7, v8);
  v10 = &v13 - v9;
  sub_10001AE68(v2, v2[3]);
  sub_100174A4C();
  sub_1001F8168();
  if (v0)
  {
    v12 = v2;
  }

  else
  {
    v15 = v10;
    v16 = v2;
    v14 = v5;
    sub_10001AE68(v20, v20[3]);
    sub_100174A4C();
    sub_1001F7EC8();
    v11 = v15;
    sub_100173A50();
    (*(v17 + 32))(v18, v11, v14);
    sub_100019CCC(v20);
    v12 = v16;
  }

  sub_100019CCC(v12);
  sub_10001E868();
}

uint64_t sub_100174538(void *a1)
{
  sub_10001AE68(a1, a1[3]);
  sub_1001F8188();
  sub_100172EE4();
  sub_10004BD98(v2, v3);
  sub_1001F7EE8();

  return sub_100019CCC(v2);
}

uint64_t sub_100174630(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_100174690(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

_BYTE *sub_10017471C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001747E8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JWSError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001748DCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100174918()
{
  result = qword_1002B97D0;
  if (!qword_1002B97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B97D0);
  }

  return result;
}

uint64_t sub_1001749C4()
{

  return sub_1001F75F8();
}

uint64_t sub_1001749EC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = v1;
  return v2 - 120;
}

uint64_t sub_100174A1C()
{

  return sub_1001F7D88();
}

uint64_t sub_100174A60@<X0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 61;
  v2._object = 0xE100000000000000;

  return sub_1001F6D78(v2, 4 - a1);
}

unint64_t sub_100174A80(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_1001F7858();
    }

    sub_1001F6388();
  }

  return v2 >> 60;
}

uint64_t sub_100174B14(double a1)
{
  v2 = a1;
  v3[3] = &type metadata for UnsafeRawBufferPointer;
  v3[4] = &protocol witness table for UnsafeRawBufferPointer;
  v3[0] = &v2;
  v3[1] = v3;
  sub_10001AE68(v3, &type metadata for UnsafeRawBufferPointer);
  sub_1001F6388();
  return sub_100019CCC(v3);
}

uint64_t sub_100174BB0(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 < result)
      {
        __break(1u);
        JUMPOUT(0x100174C2CLL);
      }

      result = result;
      goto LABEL_5;
    case 2uLL:
      result = *(result + 16);
LABEL_5:
      result = sub_100177784(result);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100174C3C()
{
  type metadata accessor for CertificateManager();
  swift_allocObject();
  result = sub_100174D48();
  qword_1002E6148 = result;
  return result;
}

uint64_t sub_100174C7C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  sub_100176F1C();
  v2 = *(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v3);
  return v2;
}

void sub_100174CDC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  sub_100176F1C();
  v4 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
  sub_100047940();
  swift_beginAccess();
  sub_1001776A4(v1 + v4, a1);
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_100174D48()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 16) = v1;
  v3 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
  v4 = sub_1001F68E8();
  sub_100018460(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
  *v5 = 0;
  v5[1] = 0;
  return v0;
}

uint64_t sub_100174DCC()
{
  v0 = sub_1001F6B48();
  v1 = sub_100175248();
  if (!v1)
  {

    return 0;
  }

  v2 = v1;
  sub_1000183C4(&qword_1002B9910);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001FEBE0;
  sub_1000183C4(&qword_1002B9918);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001FE9E0;
  sub_1000183C4(&unk_1002B3460);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100208ED0;
  v6 = kSecOidCommonName;
  *(v5 + 32) = kSecOidCommonName;
  *(v5 + 40) = v0;
  *(v4 + 32) = v5;
  *(v3 + 32) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001FE9E0;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100208ED0;
  v9 = kSecOidOrganization;
  *(v8 + 32) = kSecOidOrganization;
  *(v8 + 40) = v0;
  *(v7 + 32) = v8;
  *(v3 + 40) = v7;
  v10 = v0;
  v11 = v6;
  v12 = v9;
  sub_1000183C4(&qword_1002B9920);
  v13.super.isa = sub_1001F6F18().super.isa;

  sub_1000183C4(&qword_1002B1FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100208B20;
  v15 = kSecCertificateKeyUsage;
  *(inited + 32) = kSecCertificateKeyUsage;
  v16 = v15;
  isa = sub_1001F7588().super.super.isa;
  type metadata accessor for CFNumber(0);
  v19 = v18;
  *(inited + 40) = isa;
  v20 = kSecSubjectAltName;
  *(inited + 64) = v18;
  *(inited + 72) = v20;
  sub_1000183C4(&qword_1002B9928);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1001FE9E0;
  v22 = kSecSubjectAltNameEmailAddress;
  *(v21 + 32) = kSecSubjectAltNameEmailAddress;
  *(v21 + 40) = v10;
  type metadata accessor for CFString(0);
  sub_100177974(&qword_1002AC8D0, type metadata accessor for CFString);
  v23 = v10;
  v24 = v20;
  v25 = v22;
  sub_1001F69B8();
  v26 = sub_1001F6988().super.isa;

  type metadata accessor for CFDictionary(0);
  *(inited + 80) = v26;
  v27 = kSecCSRBasicContraintsPathLen;
  *(inited + 104) = v28;
  *(inited + 112) = v27;
  v29 = v27;
  v30.super.super.isa = sub_1001F70D8().super.super.isa;
  *(inited + 144) = v19;
  *(inited + 120) = v30;
  sub_1001F69B8();
  v31.super.isa = sub_1001F6988().super.isa;

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();
  if (!SelfSignedCertificate)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v36 = sub_1001F6688();
    sub_100019C94(v36, qword_1002E6180);
    v37 = sub_1001F6668();
    v38 = sub_1001F7298();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to generate self-signed certificate for StoreKit testing", v39, 2u);
    }

    return 0;
  }

  v33 = SelfSignedCertificate;
  v34 = SecCertificateCopyData(v33);
  v35 = sub_1001F63C8();

  return v35;
}

SecKeyRef sub_100175248()
{
  sub_1000183C4(&qword_1002B9930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100208B20;
  *(inited + 32) = kSecAttrKeyType;
  *(inited + 40) = kSecAttrKeyTypeEC;
  *(inited + 48) = kSecAttrKeyClass;
  *(inited + 56) = kSecAttrKeyClassPrivate;
  *(inited + 64) = kSecAttrKeySizeInBits;
  v1 = kSecAttrKeyType;
  v2 = kSecAttrKeyTypeEC;
  v3 = kSecAttrKeyClass;
  v4 = kSecAttrKeyClassPrivate;
  v5 = kSecAttrKeySizeInBits;
  *(inited + 72) = sub_1001F70D8();
  type metadata accessor for CFString(0);
  sub_100177974(&qword_1002AC8D0, type metadata accessor for CFString);
  sub_1001F69B8();
  error = 0;
  v6 = sub_1001F68B8();
  v8 = v7;
  isa = sub_1001F63A8().super.isa;
  sub_10003A380(v6, v8);
  v10 = sub_1001F6988().super.isa;

  v11 = SecKeyCreateWithData(isa, v10, &error);

  if (error)
  {
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v12 = sub_1001F6688();
    sub_100019C94(v12, qword_1002E6180);
    v13 = sub_1001F6668();
    v14 = sub_1001F7298();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      type metadata accessor for CFError(0);
      v17 = sub_1001F6BA8();
      v19 = sub_1000E4544(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to convert CryptoKit key to SecKey: %{public}s", v15, 0xCu);
      sub_100019CCC(v16);
    }
  }

  return v11;
}

uint64_t sub_10017552C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F6288();
  sub_10001A278();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  sub_100023510();
  v9 = v8 - v7;
  v10 = objc_opt_self();
  sub_10017788C(v10);
  if (v11)
  {
    sub_1001F61F8();
    sub_1001F6228();

    (*(v4 + 8))(v9, v2);
    sub_1001779E4();
    return sub_100018460(v12, v13, v14, v15);
  }

  else
  {

    return sub_100018460(a1, 1, 1, v2);
  }
}

Swift::Int sub_100175670(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ACE98);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = sub_1001F6288();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017552C(v7);
  if (sub_10001C990(v7, 1, v8) == 1)
  {
    sub_10004BDE8(v7, &qword_1002ACE98);
    type metadata accessor for OctaneError();
    sub_100177974(&qword_1002B09C8, type metadata accessor for OctaneError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v18 = xmmword_10020F550;
    sub_1001F6438();
    v15 = v14;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v16 = sub_1001F6CF8();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v16 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v16 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v17 = __OFADD__(v16, 8);
    result = v16 + 8;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      sub_1001F6368(result);
      sub_100174B14(v15 + 31536000.0);
      sub_100175914(a1, a2);
      sub_1001F63F8();
      (*(v9 + 8))(v12, v8);
      return sub_10003A380(v18, *(&v18 + 1));
    }
  }

  return result;
}

unint64_t sub_100175914(uint64_t a1, unint64_t a2)
{

  sub_1000183C4(&qword_1002B6F48);
  if (swift_dynamicCast())
  {
    sub_10002DD3C(v40, &v42);
    v5 = sub_10001AE68(&v42, v43);
    __chkstk_darwin(v5, v6);
    sub_1001F6108();
    return sub_100019CCC(&v42);
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_10004BDE8(v40, &qword_1002B6F50);
  result = sub_100174A80(a1, a2);
  if (result)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_61;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

LABEL_8:
    v9 = *v2;
    v10 = v2[1];
    v11 = 0;
    v12 = 0;
    switch(v10 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_68;
        }

        v12 = HIDWORD(v9) - v9;
        v11 = v9 >> 32;
LABEL_13:
        if (__OFADD__(v11, v8))
        {
          __break(1u);
        }

        else if (v11 + v8 >= v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            v15 = sub_1001F6348();
            __chkstk_darwin(v15, v16);
            v17 = sub_100143ECC(sub_100177928);
            v21 = v18;
            if (v20 == v8)
            {
              v22 = v17;
              v23 = v19;
              LOBYTE(v24) = 0;
              if ((v18 & 0x2000000000000000) != 0)
              {
                v25 = HIBYTE(v18) & 0xF;
              }

              else
              {
                v25 = v17 & 0xFFFFFFFFFFFFLL;
              }

              v26 = (v17 >> 59) & 1;
              if ((v18 & 0x1000000000000000) == 0)
              {
                LOBYTE(v26) = 1;
              }

              v27 = 4 << v26;
              v39 = v18 & 0xFFFFFFFFFFFFFFLL;
              v38 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
              *(v40 + 7) = 0;
              *&v40[0] = 0;
              while (1)
              {
                if (4 * v25 == v23 >> 14)
                {
                  if (v24)
                  {
                    *&v42 = *&v40[0];
                    *(&v42 + 6) = *(v40 + 6);
                    sub_1001F6388();
                  }
                }

                v28 = v23;
                if ((v23 & 0xC) == v27)
                {
                  v28 = sub_1001EE2BC(v23, v22, v21);
                }

                v29 = v28 >> 16;
                if (v28 >> 16 >= v25)
                {
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
LABEL_61:
                  v8 = sub_1001F6CF8();
                  goto LABEL_8;
                }

                if ((v21 & 0x1000000000000000) != 0)
                {
                  v31 = sub_1001F6D38();
                }

                else if ((v21 & 0x2000000000000000) != 0)
                {
                  *&v42 = v22;
                  *(&v42 + 1) = v39;
                  v31 = *(&v42 + v29);
                }

                else
                {
                  v30 = v38;
                  if ((v22 & 0x1000000000000000) == 0)
                  {
                    v30 = sub_1001F7858();
                  }

                  v31 = *(v30 + v29);
                }

                if ((v23 & 0xC) == v27)
                {
                  v23 = sub_1001EE2BC(v23, v22, v21);
                  if ((v21 & 0x1000000000000000) == 0)
                  {
LABEL_35:
                    v23 = (v23 & 0xFFFFFFFFFFFF0000) + 65540;
                    goto LABEL_40;
                  }
                }

                else if ((v21 & 0x1000000000000000) == 0)
                {
                  goto LABEL_35;
                }

                if (v25 <= v23 >> 16)
                {
                  goto LABEL_60;
                }

                v23 = sub_1001F6D08();
LABEL_40:
                *(v40 + v24) = v31;
                v24 = v24 + 1;
                if ((v24 >> 8))
                {
                  goto LABEL_59;
                }

                if (v24 == 14)
                {
                  *&v42 = *&v40[0];
                  *(&v42 + 6) = *(v40 + 6);
                  sub_1001F6388();
                  LOBYTE(v24) = 0;
                }
              }
            }

            v32 = *v2;
            v33 = v2[1];
            v34 = 0;
            switch(v33 >> 62)
            {
              case 1uLL:
                v34 = v32;
                break;
              case 2uLL:
                v34 = *(v32 + 16);
                break;
              default:
                break;
            }

            v35 = __OFADD__(v34, v12);
            v36 = v34 + v12;
            if (!v35)
            {
              if (!__OFADD__(v36, v20))
              {
                v37 = 0;
                switch(v33 >> 62)
                {
                  case 1uLL:
                    v37 = v32 >> 32;
                    break;
                  case 2uLL:
                    v37 = *(v32 + 24);
                    break;
                  case 3uLL:
                    break;
                  default:
                    v37 = BYTE6(v33);
                    break;
                }

                if (v37 >= v36 + v20)
                {
                  sub_1001F6358();
                }

LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
              }

LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        __break(1u);
        goto LABEL_64;
      case 2uLL:
        v14 = v9 + 16;
        v13 = *(v9 + 16);
        v11 = *(v14 + 8);
        v12 = v11 - v13;
        if (!__OFSUB__(v11, v13))
        {
          goto LABEL_13;
        }

        goto LABEL_69;
      case 3uLL:
        goto LABEL_13;
      default:
        v11 = BYTE6(v10);
        v12 = BYTE6(v10);
        goto LABEL_13;
    }
  }

  return result;
}

char *sub_100175E34(uint64_t a1)
{
  v3 = sub_1001F6B98();
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000183C4(&qword_1002ACE98);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = sub_1001F6288();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017552C(v10);
  if (sub_10001C990(v10, 1, v11) == 1)
  {
    sub_10004BDE8(v10, &qword_1002ACE98);
    type metadata accessor for OctaneError();
    sub_100177974(&qword_1002B09C8, type metadata accessor for OctaneError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v16 = sub_1001F62C8();
    if (!v1)
    {
      v19 = v16;
      v20 = v17;
      sub_100174BB0(v16, v17);
      sub_1001F6418();
      v21 = sub_1001F6508();
      v31 = *(v21 - 8);
      v32 = v21;
      v22 = *(v31 + 64);
      v33 = v20;
      v23 = sub_100176210(v22, v19, v20);
      v30 = a1;
      v24 = v23;
      v26 = v25;
      sub_1001F6B88();
      v6 = sub_1001F6B78();
      v28 = v27;
      sub_10003A380(v24, v26);
      if (v28)
      {
        (*(v12 + 8))(v15, v11);
        sub_10003A380(v19, v33);
        return v6;
      }

      type metadata accessor for OctaneError();
      sub_100177974(&qword_1002B09C8, type metadata accessor for OctaneError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_10003A380(v19, v33);
      (*(v31 + 8))(v30, v32);
    }

    (*(v12 + 8))(v15, v11);
  }

  return v6;
}

uint64_t sub_100176210(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = BYTE6(a3);
  v4 = a3 >> 62;
  v6 = 0;
  v7 = 0;
  switch(v4)
  {
    case 1uLL:
      v7 = a2;
      v6 = a2 >> 32;
      break;
    case 2uLL:
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      break;
    case 3uLL:
      break;
    default:
      v7 = 0;
      v6 = v3;
      break;
  }

  if (v6 < a1 || v6 < v7)
  {
    __break(1u);
    JUMPOUT(0x100176274);
  }

  return sub_1001F6398();
}

uint64_t sub_100176284()
{
  v1 = v0;
  v49 = *v0;
  v2 = sub_1000183C4(&qword_1002ACE98);
  sub_100056658(v2);
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  v6 = &v47 - v5;
  v7 = sub_1001F6288();
  sub_10001A278();
  v48 = v8;
  __chkstk_darwin(v9, v10);
  sub_100023510();
  v13 = v12 - v11;
  v14 = sub_1001F68E8();
  sub_10001A278();
  v16 = v15;
  __chkstk_darwin(v17, v18);
  sub_100023510();
  v21 = v20 - v19;
  v22 = sub_1000183C4(&qword_1002B2570);
  sub_100056658(v22);
  sub_10001E844();
  __chkstk_darwin(v23, v24);
  v26 = &v47 - v25;
  v27 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
  sub_100047940();
  swift_beginAccess();
  sub_1001776A4(v1 + v27, v26);
  if (sub_10001C990(v26, 1, v14))
  {
    return sub_10004BDE8(v26, &qword_1002B2570);
  }

  v47 = v13;
  (*(v16 + 16))(v21, v26, v14);
  sub_10004BDE8(v26, &qword_1002B2570);
  v29 = sub_1001F6898();
  v31 = v30;
  (*(v16 + 8))(v21, v14);
  v32 = (v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
  v33 = *(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert + 8);
  if (!v33)
  {
    return sub_10003A380(v29, v31);
  }

  v34 = *v32;

  sub_10017552C(v6);
  v35 = v7;
  if (sub_10001C990(v6, 1, v7) == 1)
  {
    v36 = v31;

    sub_10004BDE8(v6, &qword_1002ACE98);
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v37 = sub_1001F6688();
    sub_100019C94(v37, qword_1002E6180);
    v38 = sub_1001F6668();
    v39 = sub_1001F72A8();
    if (os_log_type_enabled(v38, v39))
    {
      *swift_slowAlloc() = 0;
      sub_100177A4C(&_mh_execute_header, v40, v41, "Failed to persist testing StoreKit 2 key pair due to missing directory.");
      sub_100021754();
    }

    type metadata accessor for OctaneError();
    sub_1001779BC();
    sub_100177974(v42, v43);
    sub_100177A2C();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_10003A380(v29, v36);
  }

  else
  {
    v45 = v47;
    v44 = v48;
    (*(v48 + 32))(v47, v6, v35);
    v46 = v50;
    sub_1001F63F8();
    if (v46)
    {
      (*(v44 + 8))(v45, v35);
    }

    else
    {
      sub_100175670(v34, v33);
      (*(v48 + 8))(v45, v35);
    }

    sub_10003A380(v29, v31);
  }
}

uint64_t sub_10017672C()
{
  v2 = sub_1000183C4(&qword_1002B2570);
  sub_100056658(v2);
  sub_10001E844();
  __chkstk_darwin(v3, v4);
  v76 = &v69 - v5;
  v81 = sub_1001F6508();
  sub_10001A278();
  v78 = v6;
  __chkstk_darwin(v7, v8);
  sub_100099484();
  v77 = v9 - v10;
  v13 = __chkstk_darwin(v11, v12);
  v15 = &v69 - v14;
  __chkstk_darwin(v13, v16);
  v84 = &v69 - v17;
  sub_1001F68E8();
  sub_10001A278();
  v79 = v19;
  v80 = v18;
  __chkstk_darwin(v18, v20);
  sub_100023510();
  v23 = v22 - v21;
  v24 = sub_1000183C4(&qword_1002ACE98);
  sub_100056658(v24);
  sub_10001E844();
  __chkstk_darwin(v25, v26);
  v28 = &v69 - v27;
  v29 = sub_1001F6288();
  sub_10001A278();
  v31 = v30;
  __chkstk_darwin(v32, v33);
  sub_100023510();
  v36 = v35 - v34;
  sub_10017552C(v28);
  if (sub_10001C990(v28, 1, v29) != 1)
  {
    (*(v31 + 32))(v36, v28, v29);
    v45 = sub_1001F62C8();
    if (!v1)
    {
      v49 = v46;
      v75 = v0;
      v82 = v45;
      v83 = v46;
      v50 = v45;
      sub_100040C70(v45, v46);
      sub_1001F68A8();
      v74 = v50;
      v70 = sub_100175E34(v15);
      v71 = v49;
      v72 = v23;
      v73 = v51;
      v52 = v78;
      v53 = v81;
      (*(v78 + 32))(v84, v15, v81);
      v54 = v77;
      sub_1001F64F8();
      sub_100177974(&qword_1002AD110, &type metadata accessor for Date);
      LOBYTE(v50) = sub_1001F6A78();
      v55 = *(v52 + 8);
      v55(v54, v53);
      if (v50)
      {
        sub_10003A380(v74, v71);
        v55(v84, v53);
        v56 = sub_1001779D4();
        v57(v56);
        v58 = v76;
        (*(v79 + 32))(v76, v72, v80);
        sub_1001779E4();
        sub_100018460(v59, v60, v61, v62);
        v63 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
        v64 = v75;
        swift_beginAccess();
        sub_100177714(v58, v64 + v63);
        swift_endAccess();
        v65 = (v64 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
        v66 = v73;
        *v65 = v70;
        v65[1] = v66;
      }

      type metadata accessor for OctaneError();
      sub_1001779BC();
      sub_100177974(v67, v68);
      sub_100177A2C();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_10003A380(v74, v71);
      v55(v84, v53);
      (*(v79 + 8))(v72, v80);
    }

    v47 = sub_1001779D4();
    return v48(v47);
  }

  sub_10004BDE8(v28, &qword_1002ACE98);
  if (qword_1002AC510 != -1)
  {
    sub_1000216F8();
    swift_once();
  }

  v37 = sub_1001F6688();
  sub_100019C94(v37, qword_1002E6180);
  v38 = sub_1001F6668();
  v39 = sub_1001F72A8();
  if (os_log_type_enabled(v38, v39))
  {
    *swift_slowAlloc() = 0;
    sub_100177A4C(&_mh_execute_header, v40, v41, "Failed to read testing StoreKit 2 key pair due to missing directory.");
    sub_100021754();
  }

  type metadata accessor for OctaneError();
  sub_1001779BC();
  sub_100177974(v42, v43);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_100176F1C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1001F68E8();
  sub_10001A278();
  v36 = v4;
  __chkstk_darwin(v5, v6);
  sub_100099484();
  v35[2] = v7 - v8;
  __chkstk_darwin(v9, v10);
  v12 = v35 - v11;
  v13 = sub_1000183C4(&qword_1002B2570);
  v14 = sub_100056658(v13);
  __chkstk_darwin(v14, v15);
  sub_100099484();
  v18 = __chkstk_darwin(v16, v17);
  v20 = v35 - v19;
  __chkstk_darwin(v18, v21);
  v23 = v35 - v22;
  v24 = (v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert);
  if (!*(v1 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedCert + 8) || (v25 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey, sub_100047940(), swift_beginAccess(), sub_1001776A4(v1 + v25, v23), LODWORD(v25) = sub_10001C990(v23, 1, v3), result = sub_10004BDE8(v23, &qword_1002B2570), v25 == 1))
  {
    v27 = OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey;
    sub_100047940();
    swift_beginAccess();
    sub_1001776A4(v1 + v27, v20);
    if (sub_10001C990(v20, 1, v3) == 1)
    {
      sub_10004BDE8(v20, &qword_1002B2570);
      return sub_10017672C();
    }

    v28 = v36;
    (*(v36 + 32))(v12, v20, v3);
    sub_100174DCC();
    if (v29 >> 60 == 15)
    {
      (*(v28 + 8))(v12, v3);
      return sub_10017672C();
    }

    v30 = sub_1001779F4();
    v32 = v31;
    sub_10003A36C(v2, v23);
    *v24 = v30;
    v24[1] = v32;

    sub_100175670(v30, v32);
    v33 = sub_100177A18();
    v34(v33);
  }

  return result;
}

uint64_t sub_1001774A4()
{

  sub_10004BDE8(v0 + OBJC_IVAR____TtC25ASOctaneSupportXPCService18CertificateManager_cachedKey, &qword_1002B2570);

  return v0;
}

uint64_t sub_1001774F8()
{
  sub_1001774A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CertificateManager()
{
  result = qword_1002B9810;
  if (!qword_1002B9810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001775A4()
{
  sub_10017764C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10017764C()
{
  if (!qword_1002B9820)
  {
    sub_1001F68E8();
    v0 = sub_1001F74B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002B9820);
    }
  }
}

uint64_t sub_1001776A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B2570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177714(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B2570);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177784(uint64_t a1)
{
  v2 = sub_1001F6058();
  if (v2)
  {
    v3 = v2;
    result = sub_1001F6078();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_1001F6068();
  if (!v5)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001777F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1001F77C8();
  if ((v3 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10017788C(void *a1)
{
  v1 = [a1 persistedDataPath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1001F6B58();

  return v3;
}

uint64_t sub_1001778F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1001777F0(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_100177974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001779F4()
{

  return sub_1001F63B8(0);
}

uint64_t sub_100177A2C()
{

  return swift_allocError();
}

void sub_100177A4C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100177A6C(uint64_t a1, uint64_t a2)
{
  result = sub_1000B3348();
  if (result)
  {
    Lock.lock()();
    v6 = *(v2 + 168);
    v7 = *(v2 + 176);
    *(v2 + 168) = a1;
    *(v2 + 176) = a2;
    sub_10002D824(a1);
    sub_10002D824(a2);
    sub_10002D83C(v6);
    sub_10002D83C(v7);
    Lock.unlock()();
    sub_10002D83C(a1);

    return sub_10002D83C(a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100177B08()
{
  if (sub_1000B3348())
  {
    return *(v0 + 184);
  }

  Lock.lock()();
  v1 = *(v0 + 184);
  Lock.unlock()();

  return v1;
}

BOOL sub_100177B8C()
{
  sub_100047940();
  swift_beginAccess();
  v1 = *(v0 + 232);
  v2 = *(v0 + 249);
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)(v3, v4, v5, 188, v6, v1);
  return v2 != 4;
}

BOOL sub_100177C00()
{
  sub_100047940();
  swift_beginAccess();
  v1 = *(v0 + 232);
  v2 = *(v0 + 249);
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)(v3, v4, v5, 166, v6, v1);
  return (v2 & 0xFB) != 0;
}

uint64_t sub_100177C7C()
{
  result = *(v0 + 160);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t sub_100177C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for Lock();
  swift_allocObject();
  *(v5 + 56) = Lock.init()();
  sub_1000183C4(&qword_1002BA560);
  swift_bufferAllocate();
  v12 = swift_unknownObjectRetain();
  sub_1000069C8((v12 + 16), 0);
  swift_unknownObjectRelease();
  v13 = swift_dynamicCastClassUnconditional();
  *(v6 + 64) = v13;
  *(v6 + 88) = 0;
  *(v6 + 144) = 4;
  *(v6 + 152) = 256;
  *(v6 + 160) = xmmword_100213830;
  *(v6 + 216) = 0;
  *(v6 + 256) = j_j__malloc;
  *(v6 + 264) = j_j__realloc;
  *(v6 + 272) = j_j__free;
  *(v6 + 280) = sub_10005EC68;
  *(v6 + 176) = 0xF000000000000007;
  *(v6 + 184) = j_j__malloc;
  *(v6 + 192) = j_j__realloc;
  *(v6 + 200) = j_j__free;
  *(v6 + 208) = sub_10005EC68;
  *(v6 + 32) = a1;
  *(v6 + 48) = a4;
  sub_1000183C4(&qword_1002ADC18);
  v14 = swift_allocObject();
  *(v14 + 32) = a4;
  *(v14 + 40) = &protocol witness table for SelectableEventLoop;
  *(v14 + 16) = 0;
  *(v14 + 24) = -1;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 48) = 0;
  *(v6 + 40) = v14;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_100026064(a5, v6 + 104);
  *(v6 + 168) = vdupq_n_s64(0xF000000000000007);
  *(v6 + 224) = a4;
  *(v6 + 232) = &protocol witness table for SelectableEventLoop;
  *(v6 + 240) = v13;
  *(v6 + 248) = 0;
  swift_unknownObjectRetain();

  swift_retain_n();

  v15 = sub_1000B42D4();
  v17 = v16;

  *(v6 + 72) = v15;
  *(v6 + 80) = v17;
  *(v6 + 96) = 0;
  type metadata accessor for ChannelPipeline();
  v18 = swift_allocObject();

  v20 = sub_1001DBFE0(v19, v18);

  swift_unknownObjectRelease();
  sub_100019CCC(a5);
  *(v6 + 160) = v20;

  return v6;
}

uint64_t sub_100177EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v8 = v7;
  v9 = v6;
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();

  *(v6 + 56) = Lock.init()();
  sub_1000183C4(&qword_1002BA560);
  swift_bufferAllocate();
  v15 = swift_unknownObjectRetain();
  sub_1000069C8((v15 + 16), 0);
  swift_unknownObjectRelease();
  sub_10002E0D8();
  *(v6 + 64) = swift_dynamicCastClassUnconditional();
  *(v6 + 88) = 0;
  *(v6 + 144) = 4;
  *(v6 + 152) = 256;
  *(v6 + 160) = xmmword_100213830;
  *(v6 + 216) = 0;
  *(v6 + 256) = j_j__malloc;
  *(v6 + 264) = j_j__realloc;
  *(v6 + 272) = j_j__free;
  *(v6 + 280) = sub_10005EC68;
  *(v6 + 176) = 0xF000000000000007;
  *(v6 + 184) = j_j__malloc;
  *(v6 + 192) = j_j__realloc;
  *(v6 + 200) = j_j__free;
  *(v6 + 208) = sub_10005EC68;
  *(v6 + 32) = a1;
  *(v6 + 48) = a4;
  sub_1000183C4(&qword_1002ADC18);
  v16 = swift_allocObject();
  *(v16 + 32) = a4;
  *(v16 + 40) = &protocol witness table for SelectableEventLoop;
  *(v6 + 40) = sub_1000479AC(v16);
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_100026064(a5, v6 + 104);
  sub_100180FB8();
  if (!sub_1000E220C())
  {
    swift_unknownObjectRetain();
    swift_retain_n();
    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  swift_retain_n();
  sub_10019E704();
  if (v7)
  {

    v8 = 0;
LABEL_5:
    v17 = 0xF000000000000007;
    goto LABEL_6;
  }

  v17 = sub_1000E2678();
LABEL_6:
  sub_100180FB8();
  if (sub_1000E220C())
  {
    sub_10019E670();
    if (!v8)
    {
      v18 = sub_1000E2678();
      goto LABEL_10;
    }
  }

  v18 = 0xF000000000000007;
LABEL_10:
  v19 = *(v6 + 168);
  v20 = *(v6 + 176);
  *(v9 + 168) = v17;
  *(v9 + 176) = v18;
  sub_10002D83C(v19);
  sub_10002D83C(v20);
  v21 = *(v9 + 64);
  *(v9 + 224) = a4;
  *(v9 + 232) = &protocol witness table for SelectableEventLoop;
  *(v9 + 240) = v21;
  *(v9 + 248) = 0;

  v22 = sub_1000E2FC4();
  v24 = v23;

  *(v9 + 72) = v22;
  *(v9 + 80) = v24;
  *(v9 + 96) = 0;
  type metadata accessor for ChannelPipeline();
  v25 = swift_allocObject();

  v27 = a6(v26, v25);

  swift_unknownObjectRelease();
  sub_100019CCC(a5);
  *(v9 + 160) = v27;

  return v9;
}

uint64_t sub_100178244()
{
  swift_unknownObjectRelease();

  sub_100019CCC(v0 + 104);

  v1 = *(v0 + 176);
  sub_10002D83C(*(v0 + 168));
  sub_10002D83C(v1);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1001782D8()
{
  sub_10002E27C();
  v1 = (*(v0 + 584))();
  sub_10002D678();
  sub_10002E0D8();
  swift_allocError();
  v3 = 1;
  if ((v1 & 1) == 0)
  {
    v3 = 2;
  }

  sub_10002E020(v2, v3);
  return swift_willThrow();
}

unint64_t sub_100178358(uint64_t (*a1)(void, _BYTE *, _BYTE *))
{
  sub_10002E27C();
  if (((*(v4 + 584))() & 1) == 0)
  {
    sub_10002D678();
    sub_10002E0D8();
    v7 = swift_allocError();
    sub_100180F60(v7, v8);
    return swift_willThrow();
  }

  v5 = *(v1 + 32);
  sub_100180FB8();
  if (!sub_1000E220C())
  {
    sub_100077354();
    sub_10002E0D8();
    v9 = swift_allocError();
    sub_100180F48(v9, v10);
    return swift_willThrow();
  }

  result = a1(*(v5 + 16), v12, v11);
  if (!v2)
  {
    return sub_1000E2678();
  }

  return result;
}

uint64_t sub_10017848C(char a1, char a2)
{
  v4 = sub_1000B6F64();
  v5 = v4;
  v7 = v6;
  if (a1)
  {
    v8 = sub_1001782D8();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10002D824(v4);
    v8 = v5;
    if (a2)
    {
LABEL_3:
      v9 = sub_1001782D8();
      goto LABEL_6;
    }
  }

  sub_10002D824(v7);
  v9 = v7;
LABEL_6:
  sub_10002D824(v8);
  sub_10002D824(v9);
  v10 = sub_1000377A8();
  sub_100177A6C(v10, v11);
  v12 = sub_1001814C4();

  return sub_10002D83C(v12);
}

uint64_t sub_10017856C(char a1, char a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = v5;
  v8 = v7;
  if (a1)
  {
    v9 = sub_100178358(sub_10019E704);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10002D824(v5);
    v9 = v6;
    if (a2)
    {
LABEL_3:
      v10 = sub_100178358(sub_10019E670);
      goto LABEL_6;
    }
  }

  sub_10002D824(v8);
  v10 = v8;
LABEL_6:
  sub_10002D824(v9);
  sub_10002D824(v10);
  v11 = sub_1000377A8();
  sub_100177A6C(v11, v12);
  v13 = sub_1001814C4();

  return sub_10002D83C(v13);
}

uint64_t sub_10017867C(unsigned __int8 a1)
{
  sub_10002E27C();
  result = (*(v3 + 584))();
  if ((result & 1) != 0 && *(v1 + 216) != a1)
  {
    *(v1 + 216) = a1;
    return sub_100179C08();
  }

  return result;
}

uint64_t sub_1001787CC()
{
  if ((*(v0 + 216) & 8) != 0)
  {
    return sub_10017867C(*(v0 + 216) & 0xF7);
  }

  return result;
}

uint64_t sub_1001787F0()
{
  if ((*(v0 + 216) & 4) != 0)
  {
    return sub_10017867C(*(v0 + 216) & 0xFB);
  }

  return result;
}

uint64_t sub_100178814()
{
  sub_100047940();
  result = swift_beginAccess();
  if ((*(v0 + 248) & 1) == 0 && (*(v0 + 216) & 2) == 0)
  {
    return sub_10017867C(*(v0 + 216) | 2u);
  }

  return result;
}

uint64_t sub_100178858(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  sub_10002E27C();
  result = (*(v8 + 584))();
  if ((result & 1) == 0)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    *v11 = 3;
    *(v11 + 8) = 3;
LABEL_8:
    swift_errorRetain();
    sub_1000A13B0();
  }

  if (a2 != 2)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v12, 1);
    goto LABEL_8;
  }

  *(v3 + 216) = 1;
  sub_100179840();
  v13 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_1000568C0();
  swift_beginAccess();
  v14 = *(v4 + 232);
  swift_getObjectType();
  sub_10002E0AC();
  sub_1001814AC(v15, v16, v17, 91);
  switch(*(v4 + 249))
  {
    case 1:
    case 2:
      *(v4 + 249) = 4;
      sub_10018103C();
      sub_1001814AC(v18, v19, v20, v21);
      v22 = sub_10002860C;
      break;
    case 3:
      *(v4 + 249) = 4;
      sub_10018103C();
      sub_1001814AC(v27, v28, v29, v30);
      sub_1000069C8((*(v4 + 240) + 16), 0);
      v22 = sub_100028524;
      break;
    case 4:
      __break(1u);
      JUMPOUT(0x100178D28);
    default:
      *(v4 + 249) = 4;
      sub_10018103C();
      sub_1001814AC(v23, v24, v25, v26);
      v22 = sub_100028500;
      break;
  }

  v37 = v22;
  swift_endAccess();
  v31 = v4;
  (*(*v4 + 672))(a1);
  v32 = 0;
  a1 = v13[2];
  v33 = v13 + 5;
  while (a1 != v32)
  {
    if (v32 >= v13[2])
    {
      __break(1u);
      sub_10018133C();
      v13 = v36;

      v13[2] = v14;
      v10 = &v13[2 * v32];
      v10[4] = sub_100180EA0;
      v10[5] = v31;
      goto LABEL_11;
    }

    ++v32;
    v34 = *(v33 - 1);
    v14 = *v33;
    v38[0] = sub_100177C7C();

    v31 = v14;
    v34(v38);

    v33 += 2;
  }

  if (*(v4 + 96))
  {
    *(v4 + 96) = 0;
    swift_errorRetain();
    sub_1001811C0();
    sub_1000A13B0();
  }

  v35 = sub_100177C7C();
  v37(a3, v35);

  SelectableEventLoop.execute(_:)(sub_100180DEC, v4);
}

uint64_t sub_100178D3C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  result = (*(*v3 + 584))();
  if ((result & 1) == 0)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    swift_allocError();
    *v10 = 3;
    *(v10 + 8) = 3;
LABEL_8:
    swift_errorRetain();
    sub_1000A13B0();
  }

  if (a2 != 2)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 3;
    goto LABEL_8;
  }

  v3[216] = 1;
  sub_100179840();
  v12 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_1000E21B0();
  swift_beginAccess();
  v13 = *(v4 + 232);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 91, ObjectType, v13);
  switch(*(v4 + 249))
  {
    case 1:
    case 2:
      *(v4 + 249) = 4;
      debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 44, ObjectType, v13);
      v15 = sub_10002860C;
      break;
    case 3:
      *(v4 + 249) = 4;
      debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 44, ObjectType, v13);
      sub_1000069C8((*(v4 + 240) + 16), 0);
      v15 = sub_100028524;
      break;
    case 4:
      __break(1u);
      JUMPOUT(0x100179290);
    default:
      *(v4 + 249) = 4;
      debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 44, ObjectType, v13);
      v15 = sub_100028500;
      break;
  }

  v22 = v15;
  swift_endAccess();
  v16 = v4;
  (*(*v4 + 672))(a1);
  v17 = 0;
  a1 = v12[2];
  v18 = v12 + 5;
  while (a1 != v17)
  {
    if (v17 >= v12[2])
    {
      __break(1u);
      sub_100032AD0();
      v12 = v21;

      v12[2] = v13;
      v9 = &v12[2 * v17];
      v9[4] = sub_10002DBA8;
      v9[5] = v16;
      goto LABEL_11;
    }

    ++v17;
    v19 = *(v18 - 1);
    v13 = *v18;
    v23[0] = sub_100177C7C();

    v16 = v13;
    v19(v23);

    v18 += 2;
  }

  if (*(v4 + 96))
  {
    *(v4 + 96) = 0;
    swift_errorRetain();
    sub_1000A13B0();
  }

  v20 = sub_100177C7C();
  v22(a3, v20);

  SelectableEventLoop.execute(_:)(sub_100180E68, v4);
}

uint64_t sub_1001792A4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  result = (*(*v3 + 584))();
  if ((result & 1) == 0)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    swift_allocError();
    *v10 = 3;
    *(v10 + 8) = 3;
LABEL_8:
    swift_errorRetain();
    sub_1000A13B0();
  }

  if (a2 != 2)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 3;
    goto LABEL_8;
  }

  v3[216] = 1;
  sub_100179840();
  v12 = _swiftEmptyArrayStorage;
LABEL_11:
  sub_1000B4600();
  swift_beginAccess();
  v13 = *(v4 + 232);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 91, ObjectType, v13);
  switch(*(v4 + 249))
  {
    case 1:
    case 2:
      *(v4 + 249) = 4;
      debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 44, ObjectType, v13);
      v15 = sub_10002860C;
      break;
    case 3:
      *(v4 + 249) = 4;
      debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 44, ObjectType, v13);
      sub_1000069C8((*(v4 + 240) + 16), 0);
      v15 = sub_100028524;
      break;
    case 4:
      __break(1u);
      JUMPOUT(0x1001797F8);
    default:
      *(v4 + 249) = 4;
      debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/BaseSocketChannel.swift", 119, 2, 44, ObjectType, v13);
      v15 = sub_100028500;
      break;
  }

  v22 = v15;
  swift_endAccess();
  v16 = v4;
  (*(*v4 + 672))(a1);
  v17 = 0;
  a1 = v12[2];
  v18 = v12 + 5;
  while (a1 != v17)
  {
    if (v17 >= v12[2])
    {
      __break(1u);
      sub_100032AD0();
      v12 = v21;

      v12[2] = v13;
      v9 = &v12[2 * v17];
      v9[4] = sub_100180EA0;
      v9[5] = v16;
      goto LABEL_11;
    }

    ++v17;
    v19 = *(v18 - 1);
    v13 = *v18;
    v23[0] = sub_100177C7C();

    v16 = v13;
    v19(v23);

    v18 += 2;
  }

  if (*(v4 + 96))
  {
    *(v4 + 96) = 0;
    swift_errorRetain();
    sub_1000A13B0();
  }

  v20 = sub_100177C7C();
  v22(a3, v20);

  SelectableEventLoop.execute(_:)(sub_100180E68, v4);
}

void sub_10017980C(uint64_t a1, unsigned __int8 a2)
{
  if (!*(v2 + 88))
  {
    sub_1000B66EC(*(v2 + 16), a2);
  }
}

void sub_100179840()
{
  if (!*(v0 + 88))
  {
    v1 = sub_1001810D4();
    (*(v2 + 848))(v1);
  }
}

uint64_t sub_100179890()
{
  sub_100177C7C();
  sub_10009AF34();

  sub_10002E2C0();
  sub_1000A13B0();
  return sub_100177A6C(0xF000000000000007, 0xF000000000000007);
}

uint64_t sub_1001798FC()
{
  result = sub_100179C54(1);
  if (!v1)
  {
    swift_beginAccess();
    v3 = *(v0 + 232);
    ObjectType = swift_getObjectType();
    sub_10002E0AC();
    result = debugOnly(_:)(v5, v6, v7, 91, ObjectType, v3);
    if (*(v0 + 249) == 1)
    {
      *(v0 + 249) = 2;
      sub_10018103C();
      debugOnly(_:)(v8, v9, v10, v11, ObjectType, v3);
      sub_100177C7C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001799C8(uint64_t a1)
{
  sub_100047940();
  swift_beginAccess();
  v3 = *(v1 + 232);
  v4 = *(v1 + 249);
  swift_getObjectType();
  sub_10002E0AC();
  debugOnly(_:)(v5, v6, v7, 176, v8, v3);
  if (v4 <= 4 && ((1 << v4) & 0x13) != 0)
  {
    sub_1001798FC();
  }

  sub_100047924();
  swift_beginAccess();
  v10 = *(v1 + 232);
  ObjectType = swift_getObjectType();
  sub_10002E0AC();
  result = debugOnly(_:)(v12, v13, v14, 91, ObjectType, v10);
  if (*(v1 + 249) == 2)
  {
    *(v1 + 249) = 3;
    sub_10018103C();
    debugOnly(_:)(v16, v17, v18, v19, ObjectType, v10);
    sub_1000069C8((*(v1 + 240) + 16), 1);
    swift_endAccess();
    v20 = sub_100177C7C();
    if (a1)
    {
      sub_10002E2C0();
      sub_1000A13B0();
    }

    v21 = *(v20 + 56);
    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)(v22, v23, v24, 1149, v25, v21);
    if (sub_10009D370())
    {
      sub_10009E060();
    }

    v26 = *(v1 + 232);
    v27 = *(v1 + 249);
    swift_getObjectType();
    sub_10002E0AC();
    result = debugOnly(_:)(v28, v29, v30, 188, v31, v26);
    if (v27 != 4)
    {
      v32 = sub_100178814();
      return (*(*v1 + 720))(v32);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100179C54(char a1)
{
  sub_10002E27C();
  if ((*(v4 + 584))())
  {
    v1[216] = a1;
    result = sub_100179D98();
    if (!v2)
    {
      return result;
    }

    v6 = *(sub_100177C7C() + 56);
    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)(v7, v8, v9, 1189, v10, v6);
    if (sub_10009D370())
    {
      sub_10009E508();
    }

    (*(*v1 + 760))(v2, 2, 0);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v11 = swift_allocError();
    sub_100180F60(v11, v12);
  }

  return swift_willThrow();
}

uint64_t sub_100179D98()
{
  if (*(v0 + 88))
  {
    sub_10002D864();
    sub_10002E0D8();
    swift_allocError();
    *v1 = 2;
    return swift_willThrow();
  }

  else
  {
    v3 = sub_1001810D4();
    return (*(v4 + 840))(v3, *(v5 + 216));
  }
}

uint64_t sub_100179E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1000183C4(&qword_1002ADC18);
  v8 = swift_allocObject();
  *(v8 + 32) = v4;
  *(v8 + 40) = &protocol witness table for SelectableEventLoop;
  *(v8 + 16) = 0;
  *(v8 + 24) = -1;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  type metadata accessor for ScheduledTask();
  swift_allocObject();
  v10 = ScheduledTask.init(_:_:_:)(sub_100180CB4, v9, sub_10002D85C, v8, a1);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100046A8C;
  *(v12 + 24) = v11;
  swift_retain_n();
  swift_retain_n();

  sub_10011DD5C();

  SelectableEventLoop._schedule0(_:)(v10);

  return v8;
}

uint64_t sub_10017A03C(uint64_t a1, void (*a2)(void))
{
  a2();

  return sub_1000A13B0();
}

uint64_t sub_10017A0E4(uint64_t (*a1)(void))
{
  if (sub_1000E220C())
  {
    return a1(*(v1 + 16));
  }

  sub_100077354();
  sub_10002E0D8();
  v4 = swift_allocError();
  sub_100180F48(v4, v5);
  return swift_willThrow();
}

uint64_t sub_10017A17C(void (*a1)(uint64_t *__return_ptr, void))
{
  if (sub_1000E220C())
  {
    a1(&v8, *(v1 + 16));
    if (!v2)
    {
      v4 = v8;
    }
  }

  else
  {
    sub_100077354();
    sub_10002E0D8();
    v5 = swift_allocError();
    sub_100180F48(v5, v6);
    swift_willThrow();
  }

  return v4 & 1;
}

uint64_t sub_10017A21C(uint64_t result, uint64_t a2)
{
  if (result == 6 && a2 == 1)
  {
    result = sub_1000E220C();
    if (result)
    {
      sub_10019E704();
      if (v2)
      {
      }

      else
      {
        v4 = sub_1000E2678();

        if ((v4 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }
    }
  }

  __chkstk_darwin(result, a2);
  return sub_10017A0E4(sub_100180A9C);
}

uint64_t sub_10017A364(uint64_t result, uint64_t a2)
{
  if (result == 6 && a2 == 1)
  {
    result = sub_1000E220C();
    if (result)
    {
      sub_10019E704();
      if (v2)
      {
      }

      else
      {
        v4 = sub_1000E2678();

        if ((v4 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }
    }
  }

  __chkstk_darwin(result, a2);
  return sub_10017A0E4(sub_10018082C);
}

uint64_t sub_10017A4B4(uint64_t result, uint64_t a2)
{
  if (result == 6 && a2 == 1)
  {
    result = sub_1000E220C();
    if (result)
    {
      sub_10019E704();
      if (v2)
      {
      }

      else
      {
        v4 = sub_1000E2678();

        if ((v4 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }
    }
  }

  __chkstk_darwin(result, a2);
  return sub_10017A0E4(sub_10018084C);
}

void sub_10017A608(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(38);
    sub_100181248();
    sub_100181134();
    v6._countAndFlagsBits = 0xD000000000000023;
    sub_1001F6CA8(v6);
    sub_10018123C();
    sub_100181324();
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v2 = swift_allocError();
    sub_100180F94(v2, v3);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v4, v5);
    sub_1001811A0();
    sub_10017B204(sub_100180D48);
    sub_10018127C();
  }

  sub_100181254();
}

void sub_10017A6E8(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(38);
    sub_100181248();
    sub_100181134();
    v7._countAndFlagsBits = 0xD000000000000023;
    sub_1001F6CA8(v7);
    sub_10018123C();
    sub_100181324();
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v2 = swift_allocError();
    sub_100180F94(v2, v3);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v4, v5);
    sub_1001811A0();
    sub_10017A0E4(v6);
    sub_10018127C();
  }

  sub_100181254();
}

uint64_t sub_10017A7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t))
{
  result = sub_10017BF9C(a3, a4, 256, *(a2 + 32));
  if (!v5)
  {
    ++*(a2 + 32);
    a5(&v13, a4);
    v10 = v13;
    v11 = v14;
    swift_beginAccess();
    Scheduled.futureResult.getter(v10);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a2 + 24);
    sub_1001E5DDC();
    *(a2 + 24) = v12;
    swift_endAccess();
    return j__swift_release(v10, v11);
  }

  return result;
}

uint64_t sub_10017A8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t))
{
  result = sub_10017C0A4(a3, a4, 256, *(a2 + 32));
  if (!v5)
  {
    ++*(a2 + 32);
    a5(&v13, a4);
    v10 = v13;
    v11 = v14;
    sub_100047924();
    swift_beginAccess();
    Scheduled.futureResult.getter(v10);
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a2 + 24);
    sub_1001E5DDC();
    *(a2 + 24) = v12;
    swift_endAccess();
    return j__swift_release(v10, v11);
  }

  return result;
}

void sub_10017A9D0(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(41);
    sub_100181248();
    sub_100181134();
    v6._countAndFlagsBits = 0xD000000000000026;
    sub_1001F6CA8(v6);
    sub_10018123C();
    sub_100181324();
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v2 = swift_allocError();
    sub_100180F94(v2, v3);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v4, v5);
    sub_100181220();
    sub_10017B204(sub_100180D0C);
    sub_10018127C();
  }

  sub_100181254();
}

void sub_10017AAB0(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(41);
    sub_100181248();
    sub_100181134();
    v7._countAndFlagsBits = 0xD000000000000026;
    sub_1001F6CA8(v7);
    sub_10018123C();
    sub_100181324();
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v2 = swift_allocError();
    sub_100180F94(v2, v3);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v4, v5);
    sub_100181220();
    sub_10017A0E4(v6);
    sub_10018127C();
  }

  sub_100181254();
}

unint64_t sub_10017AB80(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1;
  swift_beginAccess();
  result = sub_1001F1150(v8, *(a2 + 24));
  v13 = result;
  v14 = v10;
  if ((~result & 0xF000000000000007) == 0 && (v10 & 0xFE) == 0xFELL)
  {
    __break(1u);
  }

  else
  {
    sub_10017BF9C(a3, a4, v11, v12);
    if (!v4)
    {
      swift_beginAccess();
      sub_100180934(v13, v14);
      swift_isUniquelyReferenced_nonNull_native();
      v15 = *(a2 + 24);
      sub_1001E5DDC();
      *(a2 + 24) = v15;
      swift_endAccess();
    }

    return sub_100180914(v13, v14);
  }

  return result;
}

void sub_10017ACA4(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = a1;
  sub_100047940();
  swift_beginAccess();
  sub_1001F1150(v9, *(a2 + 24));
  sub_1001813A4();
  if ((~v10 & 0xF000000000000007) == 0 && (v5 & 0xFE) == 0xFE)
  {
    __break(1u);
  }

  else
  {
    sub_10017C0A4(a3, a4, BYTE1(v5), HIDWORD(v5));
    if (!v4)
    {
      swift_beginAccess();
      v11 = sub_1000377A8();
      sub_100180934(v11, v12);
      swift_isUniquelyReferenced_nonNull_native();
      v15 = *(a2 + 24);
      sub_1001E5DDC();
      *(a2 + 24) = v15;
      swift_endAccess();
    }

    v13 = sub_1000377A8();
    sub_100180914(v13, v14);
  }
}

void sub_10017ADB8(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(42);
    sub_100181248();
    sub_100181134();
    v6._countAndFlagsBits = 0xD000000000000027;
    sub_1001F6CA8(v6);
    sub_10018123C();
    sub_100181324();
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v2 = swift_allocError();
    sub_100180F94(v2, v3);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v4, v5);
    sub_10017B204(sub_100180D2C);
    sub_10018127C();
  }

  sub_100181254();
}

void sub_10017AEA4(uint64_t a1)
{
  sub_100181008(a1);
  if (v1)
  {
    sub_100181018();
    sub_1001F77B8(42);
    sub_100181248();
    sub_100181134();
    v7._countAndFlagsBits = 0xD000000000000027;
    sub_1001F6CA8(v7);
    sub_10018123C();
    sub_100181324();
    sub_10018130C();
    sub_1000274C4();
    sub_10002E0D8();
    v2 = swift_allocError();
    sub_100180F94(v2, v3);
  }

  else
  {
    sub_1001811F8();
    __chkstk_darwin(v4, v5);
    sub_10017A0E4(v6);
    sub_10018127C();
  }

  sub_100181254();
}

uint64_t sub_10017AF84(int a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_beginAccess();
  v6 = sub_100111164(v5);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + 24);
  v10 = *(v16 + 24);
  sub_1000183C4(&qword_1002BA558);
  sub_1001F7A98(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(v16 + 56) + 16 * v8;
  v12 = *v11;
  LOWORD(v10) = *(v11 + 9);
  v13 = *(v11 + 12);
  v14 = *(v11 + 8);
  sub_1001F7AB8();
  *(a2 + 24) = v16;
  swift_endAccess();
  sub_10017BF9C(a3, 1, v10, v13);
  return j__swift_release(v12, v14);
}

uint64_t sub_10017B0C8(int a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  sub_100047924();
  swift_beginAccess();
  v6 = sub_100111164(v5);
  if ((v7 & 1) == 0)
  {
    return swift_endAccess();
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + 24);
  v10 = *(v16 + 24);
  sub_1000183C4(&qword_1002BA558);
  sub_1001F7A98(isUniquelyReferenced_nonNull_native, v10);
  v11 = *(v16 + 56) + 16 * v8;
  v12 = *v11;
  LOWORD(v10) = *(v11 + 9);
  v13 = *(v11 + 12);
  v14 = *(v11 + 8);
  sub_1001F7AB8();
  *(a2 + 24) = v16;
  swift_endAccess();
  sub_10017C0A4(a3, 1, v10, v13);
  return j__swift_release(v12, v14);
}

uint64_t sub_10017B204(uint64_t (*a1)(void))
{
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    return a1(*(v1 + 20));
  }

  sub_1000274C4();
  swift_allocError();
  *v4 = 0xD00000000000001FLL;
  *(v4 + 8) = 0x8000000100224AB0;
  *(v4 + 16) = 9;
  return swift_willThrow();
}

uint64_t sub_10017B2D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 296) = 0;
  *(v5 + 298) = 0;
  v11 = a4[14];
  v12 = a4[15];
  v13 = a4[16];
  v14 = a4[17];
  type metadata accessor for PendingStreamWritesManager();
  swift_allocObject();
  *(v6 + 304) = sub_1001CC6D0(v11, v12, v13, v14);
  *(v6 + 288) = 0;
  sub_100026064(a5, v18);
  v15 = sub_100177EF0(a1, a2, a3, a4, v18, sub_1001DBFE0);
  sub_100019CCC(a5);
  return v15;
}

uint64_t sub_10017B3D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  *(v5 + 296) = 0;
  *(v5 + 298) = 0;
  v11 = a4[14];
  v12 = a4[15];
  v13 = a4[16];
  v14 = a4[17];
  type metadata accessor for PendingStreamWritesManager();
  swift_allocObject();
  *(v6 + 304) = sub_1001CC6D0(v11, v12, v13, v14);
  *(v6 + 288) = 0;
  sub_100026064(a5, v18);
  v15 = sub_100177C8C(a1, a2, a3, a4, v18);
  sub_100019CCC(a5);
  return v15;
}

void sub_10017B4EC(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      NIOFileHandle.close()();
      if (!v2)
      {
        *(v1 + 297) = 1;
      }
    }
  }

  else
  {
    NIOFileHandle.close()();
    if (!v3)
    {
      *(v1 + 298) = 1;
    }
  }
}

void sub_10017B550(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_100076FB0(0);
      if (!v2)
      {
        *(v1 + 297) = 1;
      }
    }
  }

  else
  {
    sub_100076FB0(1u);
    if (!v2)
    {
      *(v1 + 298) = 1;
    }
  }
}

uint64_t sub_10017B5C0()
{
  v0 = sub_100178244();

  return v0;
}

void sub_10017B5F8()
{
  sub_1001813D0();
  if (v13)
  {
    if (*(v2 + 298))
    {
      if (v0)
      {
        sub_10002D678();
        sub_10002E0D8();
        swift_allocError();
        v6 = 4;
        goto LABEL_9;
      }

LABEL_37:
      sub_1001814F0();
      return;
    }

    sub_100181398();
    sub_10017B550(v15);
    if (!v1)
    {
      sub_1001CBB4C(v3, 0);
      sub_1001787CC();
      if (v0)
      {
        sub_10002E2C0();
        sub_1000A13B0();
      }

      sub_100181458();
      v18 = &type metadata for ChannelEvent;
      LOBYTE(v16) = 1;
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (v4 == 1)
  {
    if (*(v2 + 297))
    {
      if (v0)
      {
        sub_10002D678();
        sub_10002E0D8();
        swift_allocError();
        v6 = 5;
LABEL_9:
        sub_10002E020(v5, v6);
        swift_errorRetain();
        sub_10002E17C();

        sub_1001814F0();

        return;
      }

      goto LABEL_37;
    }

    v19 = v3;
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88);
    if (swift_dynamicCast())
    {
      v13 = v17 == 3 && v16 == 6;
      if (v13)
      {
        *(v2 + 297) = 1;

LABEL_33:
        sub_1001787F0();
        if (v0)
        {
          sub_10002E2C0();
          sub_1000A13B0();
        }

        sub_100181458();
        v18 = &type metadata for ChannelEvent;
        LOBYTE(v16) = 0;
LABEL_36:
        ChannelPipeline.fireUserInboundEventTriggered(_:)();

        sub_100019CCC(&v16);
        goto LABEL_37;
      }

      sub_100073868(v16, v17);
    }

    sub_100181398();
    sub_10017B550(v14);
    if (!v1)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v0)
    {
      swift_errorRetain();
      sub_1001811C0();
      sub_1000A13B0();
    }

    goto LABEL_37;
  }

  if (*(v2 + 288))
  {
    *(v2 + 288) = 0;
    sub_10002D864();
    sub_10002E0D8();
    swift_allocError();
    *v8 = 1;
    swift_errorRetain();
    sub_1001811C0();
    sub_1000A13B0();
  }

  sub_1001814F0();

  sub_100178D3C(v9, v10, v11);
}

void sub_10017B8A0()
{
  sub_1001813D0();
  if (v13)
  {
    if (*(v2 + 298))
    {
      if (v0)
      {
        sub_10002D678();
        sub_10002E0D8();
        swift_allocError();
        v6 = 4;
        goto LABEL_9;
      }

LABEL_37:
      sub_1001814F0();
      return;
    }

    sub_100181398();
    v15();
    if (!v1)
    {
      sub_1001CBB4C(v3, 0);
      sub_1001787CC();
      if (v0)
      {
        sub_10002E2C0();
        sub_1000A13B0();
      }

      sub_100181458();
      v18 = &type metadata for ChannelEvent;
      LOBYTE(v16) = 1;
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (v4 == 1)
  {
    if (*(v2 + 297))
    {
      if (v0)
      {
        sub_10002D678();
        sub_10002E0D8();
        swift_allocError();
        v6 = 5;
LABEL_9:
        sub_10002E020(v5, v6);
        swift_errorRetain();
        sub_10002E17C();

        sub_1001814F0();

        return;
      }

      goto LABEL_37;
    }

    v19 = v3;
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88);
    if (swift_dynamicCast())
    {
      v13 = v17 == 3 && v16 == 6;
      if (v13)
      {
        *(v2 + 297) = 1;

LABEL_33:
        sub_1001787F0();
        if (v0)
        {
          sub_10002E2C0();
          sub_1000A13B0();
        }

        sub_100181458();
        v18 = &type metadata for ChannelEvent;
        LOBYTE(v16) = 0;
LABEL_36:
        ChannelPipeline.fireUserInboundEventTriggered(_:)();

        sub_100019CCC(&v16);
        goto LABEL_37;
      }

      sub_100073868(v16, v17);
    }

    sub_100181398();
    v14();
    if (!v1)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v0)
    {
      swift_errorRetain();
      sub_1001811C0();
      sub_1000A13B0();
    }

    goto LABEL_37;
  }

  if (*(v2 + 288))
  {
    *(v2 + 288) = 0;
    sub_10002D864();
    sub_10002E0D8();
    swift_allocError();
    *v8 = 1;
    swift_errorRetain();
    sub_1001811C0();
    sub_1000A13B0();
  }

  sub_1001814F0();

  sub_1001792A4(v9, v10, v11);
}

void sub_10017BBFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = a4;
  sub_10019EA44(a1, a5, a6, v6, 0x14u);
}

uint64_t sub_10017BCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 8;
  v7 = swift_slowAlloc();
  *v7 = 0;
  sub_10019E798(a1, a2, a3, v7, &v9);
  if (!v3)
  {
    a3 = *v7;
  }

  return a3;
}

uint64_t sub_10017BDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 4;
  v7 = swift_slowAlloc();
  *v7 = 0;
  sub_10019E798(a1, a2, a3, v7, &v9);
  if (!v3)
  {
    a3 = *v7;
  }

  sub_100021754();

  return a3;
}

kevent *sub_10017BE7C(kevent *changelist, uint64_t nchanges)
{
  if (nchanges < 1)
  {
    return changelist;
  }

  if (!changelist)
  {
LABEL_12:
    __break(1u);
    return changelist;
  }

  if (nchanges >> 31)
  {
    __break(1u);
    goto LABEL_12;
  }

  changelist = sub_10019F158(*(v2 + 56), changelist, nchanges, 0, 0, 0);
  if (v3)
  {
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88);
    if (swift_dynamicCast())
    {

      if (v7 == 4)
      {
      }

      sub_1000274C4();
      sub_10002E0D8();
      swift_allocError();
      *v4 = v5;
      *(v4 + 8) = v6;
      *(v4 + 16) = v7;
      swift_willThrow();
    }
  }

  return changelist;
}

uint64_t sub_10017BF9C(uint64_t a1, char a2, __int16 a3, unsigned int a4)
{
  if ((a3 & 0x100) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  v8 = sub_100147A34(v7);
  v9 = sub_100147A34(a2);
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v10 = *(a1 + 20);

    sub_10017C18C(v10, v9, v8, a4);
  }

  else
  {
    sub_1000274C4();
    swift_allocError();
    *v12 = 0xD00000000000001FLL;
    *(v12 + 8) = 0x8000000100224AB0;
    *(v12 + 16) = 9;
    return swift_willThrow();
  }
}

uint64_t sub_10017C0A4(uint64_t a1, char a2, __int16 a3, unsigned int a4)
{
  if ((a3 & 0x100) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  v8 = sub_100147A34(v7);
  v9 = sub_100147A34(a2);
  if (sub_1000E220C())
  {
    v10 = *(a1 + 16);

    sub_10017C18C(v10, v9, v8, a4);
  }

  else
  {
    sub_1000274C4();
    sub_10002E0D8();
    swift_allocError();
    *v12 = 0xD00000000000001FLL;
    *(v12 + 8) = 0x8000000100224AB0;
    *(v12 + 16) = 9;
    return swift_willThrow();
  }
}

kevent *sub_10017C18C(unsigned int a1, int a2, int a3, unsigned int a4)
{
  v19 = 0u;
  v20 = 0u;
  v4 = a2;
  v17 = 0u;
  v18 = 0u;
  v5 = a3 ^ a2;
  memset(&v16, 0, sizeof(v16));
  if (((a3 ^ a2) & 4) == 0)
  {
    if (((a3 ^ a2) & 8) == 0)
    {
      v6 = 0;
      if ((v5 & 2) != 0)
      {
        if ((v4 & 2) != 0)
        {
          v7 = 1;
          goto LABEL_23;
        }

LABEL_22:
        v7 = 2;
LABEL_23:
        if ((a1 & 0x80000000) == 0)
        {
          v9 = a1;
          v10 = a4;
LABEL_26:
          v14 = &v16 + v6;
          v14->ident = v9;
          v14->filter = -15;
          v14->flags = v7;
          v14->fflags = 1;
          v14->data = 0x7FFFFFFFFFFFFFFFLL;
          v14->udata = v10;
          return sub_10017BE7C(&v16, ++v6);
        }

LABEL_30:
        __break(1u);
      }

      return sub_10017BE7C(&v16, v6);
    }

    v11 = 0;
    if ((a2 & 8) != 0)
    {
      v12 = 1;
      goto LABEL_18;
    }

LABEL_17:
    v12 = 2;
LABEL_18:
    if ((a1 & 0x80000000) == 0)
    {
      v9 = a1;
      v10 = a4;
LABEL_20:
      v13 = &v16 + v11;
      v13->ident = v9;
      v13->filter = -2;
      v13->flags = v12;
      v13->fflags = 0;
      v13->data = 0;
      v13->udata = v10;
      v6 = v11 + 1;
      if ((v5 & 2) != 0)
      {
        if ((v4 & 2) != 0)
        {
          v7 = 1;
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      return sub_10017BE7C(&v16, v6);
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((a2 & 4) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = a1;
  v16.ident = a1;
  v16.filter = -1;
  v16.flags = v8;
  v10 = a4;
  v16.data = 0;
  v16.udata = a4;
  if (((a3 ^ a2) & 8) != 0)
  {
    v11 = 1;
    v12 = 1;
    if ((a2 & 8) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v6 = 1;
  if ((v5 & 2) != 0)
  {
    v7 = 1;
    if ((v4 & 2) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  return sub_10017BE7C(&v16, v6);
}

uint64_t sub_10017C30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ServerSocket();
  swift_allocObject();
  v8 = sub_1001810C0();
  v10 = sub_100056768(v8, v9);
  if (!v4)
  {
    v11 = v10;
    swift_allocObject();

    swift_unknownObjectRetain();
    a4 = sub_10017CF00(v11, a2, a3, a4, v12, v13, v14, v15);
    v16 = *(a4 + 288);

    sub_100056824(v16);
  }

  swift_unknownObjectRelease();
  return a4;
}

uint64_t sub_10017C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ServerSocket();
  swift_allocObject();
  v7 = sub_1001810C0();
  v9 = sub_1000566C8(v7, v8);
  if (v3)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v11 = v9;
    v12 = swift_allocObject();
    return sub_10017CF00(v11, a1, a2, a3, v12, v13, v14, v15);
  }
}

uint64_t sub_10017C514(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Socket();
  v5 = sub_100181360();
  v6 = a2;
  v7 = v5;
  sub_1000E2024(v6);
  if (!v2)
  {
    swift_allocObject();

    sub_10012F1C4();
    v7 = sub_10017E1D0(v8, v9, v10, a1);
  }

  return v7;
}

uint64_t sub_10017C60C()
{
  sub_100181204();
  sub_1001813E4();
  sub_100181360();
  v2 = sub_100076738(v0, 1, 1);
  if (v1)
  {

    return sub_100181404();
  }

  else
  {
    sub_1001810A0(v2, v3, v4, v5, v6, v7, v8, v9, v28, v31, v33, v35, v36, v37);
    v11 = sub_100181424();
    sub_100180F78(v11, v12, v13, v14, v15, v16, v17, v18, v29, v32, v34, &type metadata for AdaptiveRecvByteBufferAllocator, &protocol witness table for AdaptiveRecvByteBufferAllocator, v19, v37, v38);
    return sub_1001811CC(v20, v21, v22, v23, v24, v25, v26, v27, v30);
  }
}

uint64_t sub_10017C6DC()
{
  sub_100181204();
  sub_1001813E4();
  sub_100181360();
  v1 = sub_1001810C0();
  v3 = sub_1000767D8(v1, v2);
  if (v0)
  {

    return sub_100181404();
  }

  else
  {
    sub_1001810A0(v3, v4, v5, v6, v7, v8, v9, v10, v29, v32, v34, v36, v37, v38);
    v12 = sub_100181424();
    sub_100180F78(v12, v13, v14, v15, v16, v17, v18, v19, v30, v33, v35, &type metadata for AdaptiveRecvByteBufferAllocator, &protocol witness table for AdaptiveRecvByteBufferAllocator, v20, v38, v39);
    return sub_1001811CC(v21, v22, v23, v24, v25, v26, v27, v28, v31);
  }
}

uint64_t sub_10017C79C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, ASOctaneSupportXPCService::AdaptiveRecvByteBufferAllocator *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = 0;
  *(v8 + 320) = 1;
  sub_1001810A0(a1, a2, a3, a4, a5, a6, a7, a8, v23, v24, v25, v26, v27, v28);
  v13 = sub_100181424();
  sub_100180F78(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24, v25, &type metadata for AdaptiveRecvByteBufferAllocator, &protocol witness table for AdaptiveRecvByteBufferAllocator, v21, v28, v29);
  return sub_10017B2D8(a1, a2, a3, a4, &v23);
}

void sub_10017C834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100181194();
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  __chkstk_darwin(v6, v7);
  sub_10002DFFC();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_100023510();
  if (sub_100181474())
  {
    (*(v9 + 16))(v4, a1, a3);
    if (sub_10018104C())
    {
      v12 = sub_1001813B0();
      v13(v12);
      v14 = swift_dynamicCast();
      v15 = v22;
      if (!v14)
      {
        v15 = 0;
      }

      *(v3 + 312) = v15;
      *(v3 + 320) = v14 ^ 1;
    }

    else
    {
      sub_1001B5294(a1, a2, a3);
    }

    v18 = sub_10007B9BC();
    v19(v18);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v16 = swift_allocError();
    sub_100180F60(v16, v17);
    swift_willThrow();
  }

  sub_1001813C4();
}

void sub_10017CA24()
{
  sub_10002DFFC();
  __chkstk_darwin(v0, v1);
  sub_100023510();
  if (sub_100181474())
  {
    v2 = sub_100181288();
    v3(v2);
    if (sub_10018104C())
    {
      sub_1000183C4(&qword_1002BA568);
      sub_100181194();
      swift_getAssociatedTypeWitness();
      swift_dynamicCast();
    }

    else
    {
      v6 = sub_1001812A0();
      sub_1001B5574(v6, v7);
    }

    v8 = sub_10007B9BC();
    v9(v8);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_100180F60(v4, v5);
    swift_willThrow();
  }

  sub_1001813C4();
}

uint64_t sub_10017CB98(unint64_t a1)
{
  v3 = v1;
  v4 = (v2 != 0) | sub_100076870(a1);
  if ((v4 & 1) == 0 && (*(v1 + 320) & 1) == 0)
  {
    v5 = *(v1 + 312);
    sub_10004794C();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v5;

    v7 = static NIODeadline.now()();
    v8 = static NIODeadline.+ infix(_:_:)(v7, v5);
    v9 = sub_100179E24(v8, sub_100180C58, v6);

    *(v3 + 288) = v9;
  }

  return v4 & 1;
}

uint64_t sub_10017CC5C(uint64_t result, uint64_t a2)
{
  if (*(result + 96))
  {
    sub_10002D678();
    swift_allocError();
    *v3 = a2;
    *(v3 + 8) = 0;
    sub_10017B5F8();
  }

  return result;
}

uint64_t sub_10017CCD4()
{
  if (*(v0 + 288))
  {
    *(v0 + 288) = 0;
    sub_10002D864();
    sub_10002E0D8();
    swift_allocError();
    *v1 = 1;
    swift_errorRetain();
    sub_1000A13B0();
  }

  return sub_100076B3C();
}

uint64_t sub_10017CE6C()
{
  sub_10017B5C0();

  return swift_deallocClassInstance();
}

uint64_t sub_10017CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ASOctaneSupportXPCService::AdaptiveRecvByteBufferAllocator *a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = 128;
  *(v8 + 296) = a3;
  *(v8 + 304) = a4;
  sub_1001810A0(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v29, v31, v32, v33);
  v10 = sub_100181424();
  sub_100180F78(v10, v11, v12, v13, v14, v15, v16, v17, v26, v28, v30, &type metadata for AdaptiveRecvByteBufferAllocator, &protocol witness table for AdaptiveRecvByteBufferAllocator, v18, v33, v34);
  sub_10012F1C4();
  return sub_100177EF0(v19, v20, v21, a2, v22, v23);
}

void sub_10017CF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  __chkstk_darwin(v5, v6);
  sub_10002DFFC();
  v8 = v7;
  __chkstk_darwin(v9, v10);
  sub_100023510();
  v13 = v12 - v11;
  if (sub_100177B8C())
  {
    (*(v8 + 16))(v13, a1, a3);
    if (swift_dynamicCast())
    {
      v14 = sub_1001813B0();
      v15(v14);
      swift_dynamicCast();
      *(v3 + 288) = v20;
    }

    else
    {
      sub_100029D04(a1, a2, a3);
    }

    (*(v8 + 8))(v13, a3);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v16 = swift_allocError();
    sub_100180F60(v16, v17);
    swift_willThrow();
  }

  sub_1001813C4();
}

void sub_10017D194()
{
  sub_10002DFFC();
  __chkstk_darwin(v0, v1);
  sub_100023510();
  if (sub_100181474())
  {
    v2 = sub_100181288();
    v3(v2);
    if (sub_10018104C())
    {
      sub_100181194();
      swift_getAssociatedTypeWitness();
      swift_dynamicCast();
    }

    else
    {
      v6 = sub_1001812A0();
      sub_10002A5F0(v6, v7);
    }

    v8 = sub_10007B9BC();
    v9(v8);
  }

  else
  {
    sub_10002D678();
    sub_10002E0D8();
    v4 = swift_allocError();
    sub_100180F60(v4, v5);
    swift_willThrow();
  }

  sub_1001813C4();
}

uint64_t sub_10017D2E8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = sub_100177B8C();
  if ((result & 1) == 0)
  {
    if (!a2)
    {
      return result;
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    v12 = 2;
    goto LABEL_8;
  }

  result = sub_100177C00();
  if (result)
  {
    v7 = *(v2 + 48);
    sub_1000183C4(&qword_1002ADC18);
    v8 = swift_allocObject();
    *(v8 + 32) = v7;
    *(v8 + 40) = &protocol witness table for SelectableEventLoop;
    sub_1000479AC(v8);
    sub_10004794C();
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = a2;
    sub_10004794C();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100180B54;
    *(v10 + 24) = v9;

    sub_10019F6C8();

    sub_10012F3D4();
    *(swift_allocObject() + 16) = a2;

    sub_10011DD5C();

    sub_1000E2600(a1);
    sub_10017856C(1, 0, sub_1000B6F64);
    sub_100056824(*(v3 + 288));
    sub_10002E2C0();
    sub_1000A13B0();
  }

  if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    v12 = 12;
LABEL_8:
    sub_10002E020(v11, v12);
    swift_errorRetain();
    sub_10002E17C();
  }

  return result;
}

uint64_t sub_10017D5B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000A13B0();
  }

  return result;
}

void sub_10017D608()
{
  v2 = *(v0 + 144);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v1;
  v4 = v0;
  v5 = 1;
  while (1)
  {
    if (!sub_100177B8C())
    {
      sub_10002D678();
      sub_10002E0D8();
      swift_allocError();
      sub_10002E020(v26, 6);
LABEL_18:
      swift_willThrow();
      return;
    }

    if (!sub_1000E220C())
    {
      sub_100077354();
      sub_10002E0D8();
      v27 = swift_allocError();
      sub_100180F48(v27, v28);
      goto LABEL_18;
    }

    sub_10012F1C4();
    sub_10019E394();
    if (v3)
    {
      return;
    }

    v7 = v6;
    if ((v6 & 0x100000000) != 0)
    {
      return;
    }

    type metadata accessor for Socket();
    sub_100181360();
    v8 = sub_1000E2024(v7);
    if (!sub_1000E220C())
    {
      break;
    }

    sub_10019EEBC();
    *(v4 + 88) = 0;
    v9 = *(v4 + 304);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);

    v12 = v11(ObjectType, v9);
    if (object_getClass(v12) != _TtC25ASOctaneSupportXPCService19SelectableEventLoop)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    v13 = type metadata accessor for SocketChannel(0);
    swift_allocObject();

    v18 = sub_10017C79C(v8, v4, &off_10027FE88, v12, v14, v15, v16, v17);
    v19 = sub_100177C7C();
    v31[3] = v13;
    v31[0] = v18;
    v32 = 2;
    v20 = *(v19 + 56);
    swift_getObjectType();
    sub_10002E170();
    debugOnly(_:)(v21, v22, v23, 1157, v24, v20);
    if (sub_10009D370())
    {

      sub_10009E13C();
    }

    sub_100034310(v31);
    if (v2 == v5)
    {
      return;
    }

    if (__CFADD__(v5++, 1))
    {
      __break(1u);
      return;
    }
  }

  sub_100077354();
  sub_10002E0D8();
  v29 = swift_allocError();
  sub_100180F48(v29, v30);
  swift_willThrow();
  sub_1000E21B0();
  swift_willThrow();
}

uint64_t sub_10017D900()
{
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  if (swift_dynamicCast())
  {
    v0 = 0;
  }

  else
  {
    swift_errorRetain();
    if (swift_dynamicCast())
    {

      if (v2 >= 0x38)
      {
        v0 = 1;
      }

      else
      {
        v0 = 0x5FFFFFFE7FEFFFuLL >> v2;
      }
    }

    else
    {
      v0 = 1;
    }
  }

  return v0 & 1;
}

uint64_t sub_10017D9CC()
{
  type metadata accessor for SocketChannel(0);
  sub_100031058();
  v1 = v0;

  SelectableEventLoop.execute(_:)(sub_100180B00, v1);
}

uint64_t sub_10017DA40(uint64_t a1)
{
  v2 = sub_1001D5D60("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/SocketChannel.swift", 115, 2, 301);
  swift_retain_n();
  sub_1001223F4("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/SocketChannel.swift", 115, 2, 301, v2, sub_100180B08, a1);

  swift_retain_n();

  sub_10011DD5C();
}

uint64_t sub_10017DB28()
{
  if (sub_100177B8C())
  {
    return sub_1001799C8(0);
  }

  sub_10002D678();
  swift_allocError();
  *v1 = 2;
  *(v1 + 8) = 3;
  return swift_willThrow();
}

uint64_t sub_10017DB9C()
{
  sub_100177C7C();
  ChannelPipeline.close(mode:promise:)();
}

uint64_t sub_10017DC38()
{
  v1 = *(v0 + 32);

  sub_10017A6E8(v1);
}

uint64_t sub_10017DD78()
{
  sub_100178244();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10017DE78()
{
  if ((*(v0 + 376) & 1) == 0)
  {
    v1 = *(v0 + 320);
    v2 = *(v0 + 336);
    v3 = *(v0 + 360);
    if (*(v0 + 304))
    {
      sub_100021754();
    }

    if (v1)
    {
      sub_100021754();
    }

    if (v2)
    {
      sub_100021754();
    }

    if (v3)
    {
      sub_100021754();
    }
  }

  v4 = sub_100178244();

  return v4;
}

uint64_t sub_10017DF04()
{
  sub_10017DE78();

  return swift_deallocClassInstance();
}

uint64_t sub_10017DFB0(uint64_t a1, int a2)
{
  v4 = v2;
  *(v4 + 288) = 0;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0u;
  *(v4 + 368) = 0;
  *(v4 + 376) = 1;
  type metadata accessor for Socket();
  sub_100181360();
  sub_100076738(a2, 2, 0);
  if (!v3)
  {
    if (sub_1000E220C())
    {
      sub_10019EEBC();
      v7 = *(a1 + 168);
      v8 = *(a1 + 112);
      v9 = *(a1 + 120);
      v10 = *(a1 + 176);
      v36 = *(a1 + 184);
      v37 = *(a1 + 160);
      v34 = *(a1 + 136);
      v35 = *(a1 + 128);
      sub_100047940();
      swift_beginAccess();
      v33 = *(a1 + 192);
      type metadata accessor for PendingDatagramWritesManager();
      v11 = swift_allocObject();
      sub_100181378(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29, v30, v32, v33);
      *(v4 + 296) = sub_10019329C(v37, v7, v8, v9, v10, v36, v35, v34, v28, v31);
      sub_100181068();
      sub_10012F1C4();
      return sub_100177EF0(v19, v20, v21, a1, v22, v23);
    }

    sub_100077354();
    sub_10002E0D8();
    v25 = swift_allocError();
    sub_100180F48(v25, v26);
    swift_willThrow();
    sub_1000E21B0();
    swift_willThrow();
  }

  return swift_deallocPartialClassInstance();
}

uint64_t sub_10017E1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 288) = 0;
  v38 = 1;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0u;
  *(v4 + 368) = 0;
  *(v4 + 376) = 1;
  if (sub_1000E220C())
  {
    sub_10019EEBC();
    if (!v5)
    {
      v10 = *(a4 + 168);
      v11 = *(a4 + 112);
      v35 = *(a4 + 120);
      v36 = *(a4 + 160);
      v33 = *(a4 + 184);
      v34 = *(a4 + 176);
      v31 = *(a4 + 136);
      v32 = *(a4 + 128);
      sub_100047940();
      swift_beginAccess();
      v30 = *(a4 + 192);
      type metadata accessor for PendingDatagramWritesManager();
      v12 = swift_allocObject();
      sub_100181378(v12, v13, v14, v15, v16, v17, v18, v19, v24, v26, v27, v29, v30);
      *(v4 + 296) = sub_10019329C(v36, v10, v11, v35, v34, v33, v32, v31, v25, v28);
      v37[3] = &type metadata for FixedSizeRecvByteBufferAllocator;
      v37[4] = &protocol witness table for FixedSizeRecvByteBufferAllocator;
      v37[0] = 2048;
      sub_100181068();
      return sub_100177EF0(a1, a2, a3, a4, v37, v20);
    }
  }

  else
  {
    sub_100077354();
    sub_10002E0D8();
    v22 = swift_allocError();
    sub_100180F48(v22, v23);
    swift_willThrow();
  }

  swift_unknownObjectRelease();

  return swift_deallocPartialClassInstance();
}

uint64_t sub_10017E3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_10002DFFC();
  __chkstk_darwin(v7, v8);
  sub_10002DFFC();
  v10 = v9;
  __chkstk_darwin(v11, v12);
  sub_100023510();
  if (!sub_100181474())
  {
    sub_10002D678();
    sub_10002E0D8();
    v16 = swift_allocError();
    sub_100180F60(v16, v17);
    return swift_willThrow();
  }

  (*(v10 + 16))(v4, a1, a3);
  if (!sub_10018104C())
  {
    if (sub_10018104C())
    {
      v19 = *(v3 + 296);
      v20 = sub_100181028();
      v21(v20);
      sub_100181080();
      *(v19 + 160) = v40;
      goto LABEL_8;
    }

    if (sub_10018104C())
    {
      goto LABEL_8;
    }

    if (sub_10018104C())
    {
      v24 = sub_100181028();
      v25(v24);
      v26 = sub_100181080();
      v27 = sub_1000B6F64(v26);
      sub_10018143C(v27, v28);
      if ((v29 & ~v27) != 0)
      {
        sub_10002D83C(v27);
        if (!(v27 >> 62))
        {
          *(v3 + 288) = 1;
          v30 = 0;
          v31 = 27;
          goto LABEL_27;
        }

        if (v27 >> 62 == 1)
        {
          *(v3 + 288) = 1;
          v30 = 41;
          v31 = 35;
LABEL_27:
          sub_10017A21C(v30, v31);
          goto LABEL_8;
        }
      }
    }

    else
    {
      if (!sub_10018104C())
      {
        sub_100029D04(a1, a2, a3);
        goto LABEL_8;
      }

      v32 = sub_100181028();
      v33(v32);
      v34 = sub_100181080();
      v35 = sub_1000B6F64(v34);
      sub_10018143C(v35, v36);
      if ((v37 & ~v35) != 0)
      {
        sub_10002D83C(v35);
        if (!(v35 >> 62))
        {
          *(v3 + 289) = 1;
          if (qword_1002AC518 != -1)
          {
            sub_1001810F4();
          }

          v31 = dword_1002E6198;
          v30 = 0;
          goto LABEL_27;
        }

        if (v35 >> 62 == 1)
        {
          *(v3 + 289) = 1;
          if (qword_1002AC520 != -1)
          {
            sub_100181114();
          }

          v31 = dword_1002E619C;
          v30 = 41;
          goto LABEL_27;
        }
      }
    }

    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v38, 1);
    swift_willThrow();
    goto LABEL_8;
  }

  v13 = *(v3 + 296);
  v14 = sub_100181028();
  v15(v14);
  sub_100181080();
  *(v13 + 192) = v40;
LABEL_8:
  v22 = sub_10007B9BC();
  return v23(v22);
}

uint64_t sub_10017E790(uint64_t a1, uint64_t a2)
{
  sub_10002DFFC();
  v7 = v6;
  __chkstk_darwin(v8, v9);
  sub_100023510();
  v12 = v11 - v10;
  if (!sub_100177B8C())
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v13, 2);
    return swift_willThrow();
  }

  (*(v7 + 16))(v12, a1, a2);
  if (!sub_100181140() && !sub_100181140() && !sub_100181140())
  {
    v15 = sub_100181140();
    if (v15)
    {
      v16 = sub_1000B6F64(v15);
      sub_10018143C(v16, v17);
      if ((v18 & ~v16) == 0)
      {
        goto LABEL_23;
      }

      sub_10002D83C(v16);
      if (v16 >> 62)
      {
        if (v16 >> 62 == 1)
        {
          v19 = *(v2 + 32);
          if (sub_1000E220C())
          {
            v20 = *(v19 + 16);
            v21 = 41;
            v22 = 35;
            goto LABEL_33;
          }

          goto LABEL_35;
        }

LABEL_23:
        sub_10002D678();
        sub_10002E0D8();
        swift_allocError();
        sub_10002E020(v29, 1);
LABEL_24:
        swift_willThrow();
        return (*(v7 + 8))(v12, a2);
      }

      v30 = *(v2 + 32);
      if (sub_1000E220C())
      {
        v20 = *(v30 + 16);
        v21 = 0;
        v22 = 27;
        goto LABEL_33;
      }

LABEL_35:
      sub_100077354();
      sub_10002E0D8();
      v32 = swift_allocError();
      sub_100180F48(v32, v33);
      goto LABEL_24;
    }

    v23 = sub_100181140();
    if (!v23)
    {
      sub_10002A5F0(a1, a2);
      return (*(v7 + 8))(v12, a2);
    }

    v24 = sub_1000B6F64(v23);
    sub_10018143C(v24, v25);
    if ((v26 & ~v24) == 0)
    {
      goto LABEL_23;
    }

    sub_10002D83C(v24);
    if (v24 >> 62)
    {
      if (v24 >> 62 != 1)
      {
        goto LABEL_23;
      }

      v27 = *(v2 + 32);
      if (qword_1002AC520 != -1)
      {
        sub_100181114();
      }

      v28 = dword_1002E619C;
      if (!sub_1000E220C())
      {
        goto LABEL_35;
      }

      v20 = *(v27 + 16);
      v21 = 41;
    }

    else
    {
      v31 = *(v2 + 32);
      if (qword_1002AC518 != -1)
      {
        sub_1001810F4();
      }

      v28 = dword_1002E6198;
      if (!sub_1000E220C())
      {
        goto LABEL_35;
      }

      v20 = *(v31 + 16);
      v21 = 0;
    }

    v22 = v28;
LABEL_33:
    sub_10017BCC4(v20, v21, v22);
    if (v3)
    {
      return (*(v7 + 8))(v12, a2);
    }
  }

  sub_100181194();
  swift_getAssociatedTypeWitness();
  swift_dynamicCast();
  return (*(v7 + 8))(v12, a2);
}

uint64_t sub_10017EBB8()
{
  sub_10002D678();
  sub_10002E0D8();
  swift_allocError();
  sub_10002E020(v0, 1);
  swift_willThrow();
  return 0;
}

uint64_t sub_10017EC20()
{
  sub_10002D678();
  sub_10002E0D8();
  swift_allocError();
  sub_10002E020(v0, 1);
  return swift_willThrow();
}

uint64_t sub_10017EC6C()
{
  if (*(v0 + 376))
  {
    return sub_10017ECE4() & 1;
  }

  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

uint64_t sub_10017ECE4()
{
  v1 = v0;
  memset(v45, 0, sizeof(v45));
  v44 = 128;
  swift_beginAccess();
  sub_100026064(v0 + 104, v56);
  v2 = v58;
  sub_10001AE68(v56, *(&v57 + 1));
  v3 = sub_100177B08();
  v4 = (*(v2 + 8))(v3);
  v43 = v4;
  sub_100019CCC(v56);
  if ((*(v0 + 288) & 1) != 0 || *(v0 + 289) == 1)
  {
    v5 = *(v0 + 48);
    swift_beginAccess();
    v6 = sub_10006B600(0, *(v5 + 192), *(v5 + 200));
    v36 = v7;
    v37 = v6;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v35 = *(v0 + 144);
  if (!v35)
  {
LABEL_37:
    __break(1u);
  }

  if (!sub_100177B8C())
  {
LABEL_31:
    sub_10002D678();
    swift_allocError();
    *v32 = 6;
    *(v32 + 8) = 3;
    swift_willThrow();
  }

  v8 = 0;
  v9 = v35 == 1;
  v34 = v0;
  v10 = 1;
  while (1)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v4 = v43;
    }

    else
    {
      v11 = sub_10005EFF0(*(v4 + 16));

      v43 = v11;
      v4 = v11;
    }

    v12 = *(v4 + 16);
    v56[0] = v37;
    v56[1] = v36;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      ByteBuffer._copyStorageAndRebase(capacity:resetIndices:)(v12, 0);
      v4 = v43;
    }

    swift_beginAccess();
    v40 = v9;
    sub_100076DD0(*(v4 + 24), *(v4 + 24) + v12, v45, &v44, v56);
    if (v42)
    {
    }

    v15 = v13;
    v41 = v10;
    v16 = v13;
    if ((v14 & 1) == 0)
    {

      return v8 & 1;
    }

    if ((swift_beginAccess(), v17 = *(v1 + 128), v18 = *(v1 + 136), sub_10004BD98(v1 + 104, v17), v38 = (*(v18 + 16))(v15, v17, v18), swift_endAccess(), *(v1 + 88) = 0, (*(v1 + 288)) || *(v1 + 289) == 1) && (v60 & 1) == 0)
    {
      v61 = v57;
      v62 = DWORD2(v57);
      v63 = v58;
      v64 = DWORD2(v58);
      v65 = v59;
      v19 = sub_10006C900(&v61);
      v21 = v20;
      v23 = v22;
      v24 = v19;
      sub_10002D824(v20);
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 4;
    }

    *&v52 = sub_1000E2678();
    *(&v52 + 1) = v4;
    LODWORD(v53) = 0;
    *(&v53 + 4) = __PAIR64__(v12, v16);
    WORD6(v53) = 0;
    BYTE14(v53) = 0;
    *&v54 = v24;
    *(&v54 + 1) = v21;
    v55 = v23;
    v1 = v34;
    v25 = sub_100177C7C();
    v50 = v55;
    v47 = v52;
    v48 = v53;
    v49 = v54;
    v51 = 1;
    v26 = *(v25 + 56);
    ObjectType = swift_getObjectType();
    debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/ChannelPipeline.swift", 117, 2, 1157, ObjectType, v26);
    if (sub_10009D370())
    {

      sub_100180A2C(&v52, v46);
      sub_10009E13C();
    }

    else
    {

      sub_100180A2C(&v52, v46);
    }

    v28 = v41;

    sub_100034310(&v47);
    if ((v38 & 1) != 0 && v41 < *(v34 + 144))
    {
      sub_100026064(v34 + 104, &v47);
      v39 = v24;
      v29 = v49;
      sub_10001AE68(&v47, *(&v48 + 1));
      v30 = sub_100177B08();
      v31 = (*(v29 + 8))(v30);
      sub_1001809C4(&v52);
      sub_10003709C(v39, v21);

      v43 = v31;
      v28 = v41;
      sub_100019CCC(&v47);
      v4 = v31;
    }

    else
    {
      sub_10003709C(v24, v21);
      sub_1001809C4(&v52);
    }

    if (v40)
    {
      break;
    }

    if (v28 == -1)
    {
      __break(1u);
      goto LABEL_37;
    }

    if (!sub_100177B8C())
    {
      goto LABEL_31;
    }

    v9 = v28 + 1 == v35;
    v10 = v28 + 1;
    v8 = 1;
  }

  v8 = 1;
  return v8 & 1;
}

BOOL sub_10017F300()
{
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88);
  if (!swift_dynamicCast())
  {
    return 1;
  }

  return v2 != 61 && v2 != 12;
}

uint64_t sub_10017F380(uint64_t a1, uint64_t a2)
{
  NIOAny.forceAsByteEnvelope()(v9);
  if (sub_100191B1C(v9, a2))
  {
    return sub_1001809C4(v9);
  }

  v4 = *(sub_100177C7C() + 56);
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v5, v6, v7, 1173, v8, v4);
  if (sub_10009D370())
  {
    sub_10009E30C();
    sub_1001809C4(v9);
  }

  else
  {
    sub_1001809C4(v9);
  }
}

BOOL sub_10017F44C()
{
  v1 = *(v0 + 296);
  sub_100047940();
  swift_beginAccess();
  return (*(v1 + 136) & 1) == 0;
}

void sub_10017F538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 - a1 >= 1)
  {
    v14 = *(a8 + 48);
    swift_beginAccess();
    v24 = sub_10006B600(0, *(v14 + 192), *(v14 + 200));
    v25 = v15;
    v16 = sub_1000B6F64(v24);
    sub_10002D83C(v17);
    if ((~v16 & 0xF000000000000007) == 0)
    {
      goto LABEL_10;
    }

    sub_10002D83C(v16);
    if (a5 == 4)
    {
      goto LABEL_10;
    }

    v18 = *(dword_1002139C4 + ((v16 >> 60) & 0xC));
    if (v18 == 30)
    {
      sub_10002D824(a6);
      v19 = sub_10006CCB0(a5);
      v20 = 41;
      v21 = 36;
    }

    else
    {
      if (v18 != 2)
      {
LABEL_10:
        sub_10006CDC4(v24, v25, 0);
        sub_100076C98(a1, a2, a3, a4, v22, v23);
        return;
      }

      sub_10002D824(a6);
      v19 = sub_10006CCB0(a5);
      v20 = 0;
      v21 = 3;
    }

    sub_1001919E4(v20, v21, v19);
    sub_10003709C(a5, a6);
    goto LABEL_10;
  }
}

void sub_10017F6E4(msghdr *a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  if (sub_1000E220C())
  {
    if (a1)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(a2))
      {
        sub_10019EC20(*(v5 + 16), a1, a2, 0);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1000274C4();
    swift_allocError();
    *v6 = 0xD00000000000001FLL;
    *(v6 + 8) = 0x8000000100224AB0;
    *(v6 + 16) = 9;
    swift_willThrow();
  }
}

uint64_t sub_10017F7B4(unint64_t a1, uint64_t a2)
{
  result = sub_100177C00();
  if (result)
  {
    sub_1000E2600(a1);
    sub_10017856C(1, 0, sub_1000B6F64);
    return sub_1001799C8(a2);
  }

  else if (a2)
  {
    sub_10002D678();
    sub_10002E0D8();
    swift_allocError();
    sub_10002E020(v5, 12);
    swift_errorRetain();
    sub_10002E17C();
  }

  return result;
}

uint64_t sub_10017F94C()
{
  sub_10013B5AC();
  sub_1001F77B8(72);
  sub_1001810E8();
  v14._countAndFlagsBits = 0xD000000000000010;
  sub_1001F6CA8(v14);
  sub_1001F6CA8(*(v0 + 72));
  sub_100180FD8();
  v1 = sub_1000069BC((*(v0 + 64) + 16));
  v2 = v1 == 0;
  if (v1)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v3._object = v4;
  sub_1001F6CA8(v3);

  sub_1001810E8();
  sub_1001F6CA8(v15);
  v6 = sub_1000B6F64(v5);
  sub_10018148C(v6, v7);
  sub_1000183C4(&qword_1002B2D30);
  sub_1001F74A8();
  sub_1001813A4();
  sub_10002D83C(v4);
  v16._countAndFlagsBits = sub_1000377A8();
  sub_1001F6CA8(v16);

  sub_1001810E8();
  sub_1001F6CA8(v17);
  v9 = sub_1000B6F64(v8);
  v11 = v10;
  sub_10002D83C(v9);
  sub_1001812B8();
  sub_10002D83C(v11);
  sub_1001812F0();

  sub_1001812D4();
  return v13;
}

uint64_t sub_10017FAF0()
{
  sub_10013B5AC();
  sub_1001F77B8(78);
  sub_1001810E8();
  sub_1001F6CA8(v14);
  sub_1001F6CA8(*(v0 + 72));
  sub_100180FD8();
  v1 = sub_1000069BC((*(v0 + 64) + 16));
  v2 = v1 == 0;
  if (v1)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v3._object = v4;
  sub_1001F6CA8(v3);

  sub_1001810E8();
  v15._countAndFlagsBits = 0xD000000000000011;
  sub_1001F6CA8(v15);
  v6 = sub_1000B6F64(v5);
  sub_10018148C(v6, v7);
  sub_1000183C4(&qword_1002B2D30);
  sub_1001F74A8();
  sub_1001813A4();
  sub_10002D83C(v4);
  v16._countAndFlagsBits = sub_1000377A8();
  sub_1001F6CA8(v16);

  sub_1001810E8();
  sub_1001F6CA8(v17);
  v9 = sub_1000B6F64(v8);
  v11 = v10;
  sub_10002D83C(v9);
  sub_1001812B8();
  sub_10002D83C(v11);
  sub_1001812F0();

  sub_1001812D4();
  return v13;
}

uint64_t sub_10017FC94()
{
  sub_10013B5AC();
  sub_1001F77B8(74);
  sub_1001810E8();
  v14._countAndFlagsBits = 0xD000000000000012;
  sub_1001F6CA8(v14);
  sub_1001F6CA8(*(v0 + 72));
  sub_100180FD8();
  v1 = sub_1000069BC((*(v0 + 64) + 16));
  v2 = v1 == 0;
  if (v1)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v3._object = v4;
  sub_1001F6CA8(v3);

  sub_1001810E8();
  sub_1001F6CA8(v15);
  v6 = sub_1000B6F64(v5);
  sub_10018148C(v6, v7);
  sub_1000183C4(&qword_1002B2D30);
  sub_1001F74A8();
  sub_1001813A4();
  sub_10002D83C(v4);
  v16._countAndFlagsBits = sub_1000377A8();
  sub_1001F6CA8(v16);

  sub_1001810E8();
  v17._countAndFlagsBits = 0xD000000000000012;
  sub_1001F6CA8(v17);
  v9 = sub_1000B6F64(v8);
  v11 = v10;
  sub_10002D83C(v9);
  sub_1001812B8();
  sub_10002D83C(v11);
  sub_1001812F0();

  sub_1001812D4();
  return v13;
}

uint64_t sub_10017FE58(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_1000069BC((*(v4 + 64) + 16));
  if (!result)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    swift_allocError();
    v13 = 12;
    goto LABEL_9;
  }

  if (a2 && (*(a2 + 64) & 1) == 0)
  {
    if (!a3)
    {
      return result;
    }

    sub_1001806A0();
    swift_allocError();
    *v18 = a2;

    goto LABEL_10;
  }

  v10 = sub_1000B6F64();
  result = sub_10002D83C(v11);
  if ((~v10 & 0xF000000000000007) == 0)
  {
    if (!a3)
    {
      return result;
    }

    sub_10002D678();
    swift_allocError();
    v13 = 9;
LABEL_9:
    *v12 = v13;
    *(v12 + 8) = 3;
LABEL_10:
    swift_errorRetain();
    sub_1000A13B0();
LABEL_11:

LABEL_12:
  }

  v14 = a1 >> 62;
  if (*(dword_1002139C4 + ((v10 >> 60) & 0xC)) == dword_1002139C4[a1 >> 62])
  {
    result = SocketAddress.isMulticast.getter(a1);
    if (result)
    {
      if (a2)
      {
        v15 = *(a2 + 32);
        result = sub_10002D824(v15);
        if (v14)
        {
LABEL_19:
          if (v14 != 1)
          {
            goto LABEL_61;
          }

          if ((~v15 & 0xF000000000000007) == 0)
          {
            if (a4)
            {
              v16 = 13;
            }

            else
            {
              v16 = 12;
            }

            v17 = v16;
            goto LABEL_50;
          }

          if (v15 >> 62 == 1)
          {

            result = sub_10002D83C(v15);
            if (!a2)
            {
LABEL_62:
              __break(1u);
              return result;
            }

            v23 = *(a2 + 72);
            if ((v23 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (!HIDWORD(v23))
            {
              if (a4)
              {
                v17 = 13;
              }

              else
              {
                v17 = 12;
              }

LABEL_50:
              sub_10017A4B4(41, v17);
              goto LABEL_51;
            }

            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          goto LABEL_56;
        }
      }

      else
      {
        v15 = 0xF000000000000007;
        if (v14)
        {
          goto LABEL_19;
        }
      }

      if ((~v15 & 0xF000000000000007) != 0)
      {
        if (v15 >> 62)
        {
LABEL_56:
          sub_10002D83C(v15);
          sub_10002D678();
          swift_allocError();
          *v24 = 11;
          *(v24 + 8) = 3;
          swift_willThrow();
          if (!a3)
          {
            sub_10002D83C(v10);
            goto LABEL_12;
          }

          goto LABEL_57;
        }

        if (a4)
        {
          v22 = 13;
        }

        else
        {
          v22 = 12;
        }

        sub_10017A364(0, v22);
        sub_10002D83C(v15);
      }

      else
      {
        if (a4)
        {
          v21 = 13;
        }

        else
        {
          v21 = 12;
        }

        sub_10017A364(0, v21);
      }

LABEL_51:

      if (a3)
      {
        sub_1000A13B0();
      }

      goto LABEL_53;
    }

    if (a3)
    {
      sub_10002D678();
      swift_allocError();
      *v20 = a1;
      *(v20 + 8) = 1;

      goto LABEL_57;
    }
  }

  else if (a3)
  {
    sub_10002D678();
    swift_allocError();
    *v19 = 10;
    *(v19 + 8) = 3;
LABEL_57:
    swift_errorRetain();
    sub_1000A13B0();
    sub_10002D83C(v10);
    goto LABEL_11;
  }

LABEL_53:

  return sub_10002D83C(v10);
}

uint64_t sub_1001802B0(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (sub_1000B3348())
  {
    if (a2)
    {

      v10 = NIONetworkDevice.init(_:)(v9);
    }

    else
    {
      v10 = 0;
    }

    sub_10017FE58(a1, v10, a3, a4);
  }

  else
  {
    v11 = swift_allocObject();
    v11[2] = v4;
    v11[3] = a1;
    v11[4] = a2;
    v11[5] = a3;

    v12 = sub_1000377A8();
    SelectableEventLoop.execute(_:)(v12, v13);
  }
}

uint64_t sub_1001803AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a3;
  if (a3)
  {

    v7 = NIONetworkDevice.init(_:)(v9);
  }

  sub_10017FE58(a2, v7, a4, a5);
}

uint64_t sub_1001804A0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (sub_1000B3348())
  {

    return sub_10017FE58(a1, a2, a3, a4);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = v6;
    v13[3] = a1;
    v13[4] = a2;
    v13[5] = a3;

    SelectableEventLoop.execute(_:)(a6, v13);
  }
}

unint64_t sub_1001806A0()
{
  result = qword_1002BA550;
  if (!qword_1002BA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002BA550);
  }

  return result;
}

uint64_t sub_100180764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = a4 - a3;
  if (!a3)
  {
    v6 = 0;
  }

  if (result < 0 || v6 < result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10018089C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100180914(uint64_t result, char a2)
{
  if ((~result & 0xF000000000000007) != 0 || (a2 & 0xFE) != 0xFELL)
  {
    return j__swift_release();
  }

  return result;
}

uint64_t sub_100180934(uint64_t result, char a2)
{
  if ((~result & 0xF000000000000007) != 0 || (a2 & 0xFE) != 0xFELL)
  {
    return Scheduled.futureResult.getter(result);
  }

  return result;
}

uint64_t sub_1001809C4(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002ADD58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100180A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002ADD58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100180B7C()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100180BB0()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100180C24()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100180C74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100180CC0()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100180DA0(void (*a1)(void))
{

  a1(*(v1 + 24));
  sub_10004794C();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_100180F48(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000001FLL;
  *(a2 + 8) = v2;
  *(a2 + 16) = 9;
}

__n128 sub_100180F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 a14, __int128 a15, char a16)
{
  result = a14;
  *(a1 + 16) = a14;
  *(a1 + 32) = a15;
  *(a1 + 48) = a16;
  return result;
}

uint64_t sub_100180F94(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 9;

  return swift_willThrow();
}

void sub_100180FD8()
{
  v1._countAndFlagsBits = 0x657669746361202CLL;
  v1._object = 0xEB00000000203D20;

  sub_1001F6CA8(v1);
}

uint64_t sub_10018104C()
{

  return swift_dynamicCast();
}

uint64_t sub_100181080()
{

  return swift_dynamicCast();
}

void sub_1001810A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ASOctaneSupportXPCService::AdaptiveRecvByteBufferAllocator *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  AdaptiveRecvByteBufferAllocator.init(minimum:initial:maximum:)(&a14, 64, 2048, 0x10000);
}

uint64_t sub_1001810F4()
{

  return swift_once();
}

uint64_t sub_100181114()
{

  return swift_once();
}

uint64_t sub_100181140()
{

  return swift_dynamicCast();
}

uint64_t sub_1001811CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_10017B2D8(v9, 0, 0, v10, &a9);
}

void sub_100181248()
{
  v1 = *(v0 - 40);
  *(v0 - 48) = *(v0 - 48);
  *(v0 - 40) = v1;
}

uint64_t sub_100181260(uint64_t result, uint64_t a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 12) = HIDWORD(a2);
  return result;
}