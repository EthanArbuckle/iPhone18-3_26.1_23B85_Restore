id specialized static NSURLComponents._componentsWith(url:resolvingAgainstBaseURL:)(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = (*(v3 + 112))(ObjectType, v3);
  }

  else
  {
    v5 = (*(v3 + 104))(ObjectType, v3);
  }

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v5, v6, 1, v25);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v25) == 1)
  {
    return 0;
  }

  v22 = v25[6];
  v23 = v25[7];
  v24[0] = v26[0];
  *(v24 + 10) = *(v26 + 10);
  v18 = v25[2];
  v19 = v25[3];
  v20 = v25[4];
  v21 = v25[5];
  v16 = v25[0];
  v17 = v25[1];
  v8 = type metadata accessor for _NSSwiftURLComponents();
  v9 = objc_allocWithZone(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd);
  v10 = swift_allocObject();
  *(v10 + 172) = 0;
  v11 = v23;
  *(v10 + 112) = v22;
  *(v10 + 128) = v11;
  *(v10 + 144) = v24[0];
  *(v10 + 154) = *(v24 + 10);
  v12 = v19;
  *(v10 + 48) = v18;
  *(v10 + 64) = v12;
  v13 = v21;
  *(v10 + 80) = v20;
  *(v10 + 96) = v13;
  v14 = v17;
  *(v10 + 16) = v16;
  *(v10 + 32) = v14;
  *&v9[OBJC_IVAR____NSSwiftURLComponents_lock] = v10;
  v15.receiver = v9;
  v15.super_class = v8;
  return objc_msgSendSuper2(&v15, sel_init);
}

id @objc _NSSwiftURLComponents.queryItems.getter(char *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = *&a1[OBJC_IVAR____NSSwiftURLComponents_lock];
  v5 = a1;
  os_unfair_lock_lock((v4 + 172));
  v6 = *(v4 + 128);
  v21 = *(v4 + 112);
  v22 = v6;
  v23[0] = *(v4 + 144);
  *(v23 + 10) = *(v4 + 154);
  v7 = *(v4 + 64);
  v17 = *(v4 + 48);
  v18 = v7;
  v8 = *(v4 + 96);
  v19 = *(v4 + 80);
  v20 = v8;
  v9 = *(v4 + 32);
  v15 = *(v4 + 16);
  v16 = v9;
  outlined init with copy of URLComponents(&v15, v13);
  os_unfair_lock_unlock((v4 + 172));
  v13[6] = v21;
  v13[7] = v22;
  v14[0] = v23[0];
  *(v14 + 10) = *(v23 + 10);
  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v13[5] = v20;
  v13[0] = v15;
  v13[1] = v16;
  v10 = URLComponents._URLComponents.queryItems(percentEncoded:)(a3);
  outlined destroy of URLComponents(&v15);

  if (v10)
  {
    v11 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void URLComponents.url.getter(uint64_t *a1@<X8>)
{
  v3 = v1[7];
  v32 = v1[6];
  v33 = v3;
  v34[0] = v1[8];
  *(v34 + 10) = *(v1 + 138);
  v4 = v1[3];
  v28 = v1[2];
  v29 = v4;
  v5 = v1[5];
  v30 = v1[4];
  v31 = v5;
  v6 = v1[1];
  v26 = *v1;
  v27 = v6;
  if (BYTE8(v26))
  {
    if (v26)
    {

      if (!_foundation_swift_url_feature_enabled())
      {
        goto LABEL_4;
      }

LABEL_10:
      URL.init(stringOrEmpty:relativeTo:)(a1);
      return;
    }

LABEL_11:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  URLComponents._URLComponents.computedString.getter();
  if (!v15)
  {
    goto LABEL_11;
  }

  if (_foundation_swift_url_feature_enabled())
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = *MEMORY[0x1E695E480];
  v8 = String._bridgeToObjectiveCImpl()();

  v9 = CFURLCreateWithString(v7, v8, 0);
  swift_unknownObjectRelease();
  if (!v9)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v16 = type metadata accessor for _BridgedURL();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v9;
    v25.receiver = v17;
    v25.super_class = v16;
    v18 = v9;
    v19 = objc_msgSendSuper2(&v25, sel_init);
LABEL_15:
    v22 = v19;
    v9 = _BridgedURL.convertingFileReference()();
    v14 = v23;

    goto LABEL_16;
  }

  type metadata accessor for _NSSwiftURL();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    v20 = type metadata accessor for _BridgedURL();
    v21 = objc_allocWithZone(v20);
    *&v21[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v9;
    v24.receiver = v21;
    v24.super_class = v20;
    v18 = v9;
    v19 = objc_msgSendSuper2(&v24, sel_init);
    goto LABEL_15;
  }

  v11 = v10;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v11;
  v12 = v9;
  v9 = _BridgedNSSwiftURL.convertingFileReference()();
  v14 = v13;

LABEL_16:
  *a1 = v9;
  a1[1] = v14;
}

uint64_t URLComponents._URLComponents.computedString.getter()
{
  result = 0;
  if (*(v0 + 153))
  {
    return result;
  }

  v2 = v0;
  v93 = 0;
  v94 = 0xE000000000000000;
  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = *(v0 + 24);
    v5 = v3;
  }

  else
  {
    if (*(v0 + 9) & 1) == 0 || !*v0 || (*(*v0 + 48))
    {
      goto LABEL_8;
    }

    v12 = String.subscript.getter();
    v4 = MEMORY[0x1865CAE80](v12);
    v5 = v13;
  }

  *&v88 = v4;
  *(&v88 + 1) = v5;

  MEMORY[0x1865CB0E0](58, 0xE100000000000000);
  MEMORY[0x1865CB0E0](v4, v5);

LABEL_8:
  result = URLComponents._URLComponents.hasAuthority.getter();
  if (result)
  {
    v96 = *(v2 + 104);
    v6 = *(&v96 + 1);
    if (*(&v96 + 1))
    {
      v7 = v96;
    }

    else if ((*(v2 + 14) & 1) != 0 && *v2)
    {
      if (*(*v2 + 168))
      {
        v10 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v10 = String.subscript.getter();
      }

      v14 = MEMORY[0x1865CAE80](v10);
      v6 = v15;

      v7 = v14;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }

    v16 = specialized Collection.first.getter(v7, v6);
    outlined init with copy of FloatingPointRoundingRule?(&v96, &v88, &_sSSSgMd);

    if ((v16 & 0x100) != 0 || v16 == 47)
    {
      MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
      goto LABEL_45;
    }

LABEL_28:

    return 0;
  }

  v96 = *(v2 + 104);
  v8 = *(&v96 + 1);
  if (*(&v96 + 1))
  {
    v9 = v96;
  }

  else if ((*(v2 + 14) & 1) != 0 && *v2)
  {
    if (*(*v2 + 168))
    {
      v11 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v11 = String.subscript.getter();
    }

    v9 = MEMORY[0x1865CAE80](v11);
    v8 = v17;
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v18 = (v9 >> 59) & 1;
  }

  else
  {
    v18 = 1;
  }

  v19 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x1000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v87 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v87 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v87)
    {
      __break(1u);
      return result;
    }

    v20 = String.UTF8View._foreignIndex(after:)() >> 14;
  }

  else
  {
    v20 = 4;
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    v19 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 != 4 * v19)
  {
    v21 = specialized Collection.first.getter(v9, v8);
    if ((v21 & 0x100) == 0 && v21 == 47)
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        if (!v19)
        {
          goto LABEL_148;
        }

        v22 = String.UTF8View._foreignIndex(after:)();
      }

      else
      {
        v22 = 65540;
      }

      if ((v22 & 0xC) == 4 << v18)
      {
        v22 = _StringGuts._slowEnsureMatchingEncoding(_:)(v22, v9, v8);
      }

      v18 = v22 >> 16;
      if (v22 >> 16 < v19)
      {
        if ((v8 & 0x1000000000000000) != 0)
        {
          v47 = String.UTF8View._foreignSubscript(position:)();
          goto LABEL_99;
        }

        if ((v8 & 0x2000000000000000) != 0)
        {
          outlined init with copy of FloatingPointRoundingRule?(&v96, &v88, &_sSSSgMd);

          *&v88 = v9;
          *(&v88 + 1) = v8 & 0xFFFFFFFFFFFFFFLL;
          v47 = *(&v88 + v18);
          goto LABEL_134;
        }

        if ((v9 & 0x1000000000000000) == 0)
        {
          goto LABEL_150;
        }

        v46 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
        goto LABEL_97;
      }

      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }
  }

  outlined init with copy of FloatingPointRoundingRule?(&v96, &v88, &_sSSSgMd);

  while (1)
  {
LABEL_45:
    v23 = URLComponents._URLComponents.percentEncodedUser.getter();
    if (v24)
    {
      MEMORY[0x1865CB0E0](v23);
    }

    v25 = *(v2 + 64);
    if (v25)
    {
      v26 = *(v2 + 56);
      v27 = *(v2 + 64);
LABEL_49:
      *&v88 = 58;
      *(&v88 + 1) = 0xE100000000000000;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1865CB0E0](v26, v27);

      MEMORY[0x1865CB0E0](v88, *(&v88 + 1));

      goto LABEL_53;
    }

    if ((*(v2 + 11) & 1) != 0 && *v2 && (*(*v2 + 96) & 1) == 0)
    {
      v44 = String.subscript.getter();
      v26 = MEMORY[0x1865CAE80](v44);
      v27 = v45;

      goto LABEL_49;
    }

LABEL_53:
    URLComponents._URLComponents.percentEncodedUser.getter();
    if (v28)
    {

LABEL_56:

      MEMORY[0x1865CB0E0](64, 0xE100000000000000);
      goto LABEL_57;
    }

    if (v25)
    {
      goto LABEL_56;
    }

    if ((*(v2 + 11) & 1) != 0 && *v2 && (*(*v2 + 96) & 1) == 0)
    {
      v42 = String.subscript.getter();
      MEMORY[0x1865CAE80](v42);

      goto LABEL_56;
    }

LABEL_57:
    v29 = URLComponents._URLComponents.encodedHost.getter();
    if (v30)
    {
      MEMORY[0x1865CB0E0](v29);
    }

    v31 = URLComponents._URLComponents.port.getter();
    if ((v32 & 1) == 0)
    {
      *&v88 = 58;
      *(&v88 + 1) = 0xE100000000000000;
      *&v95 = v31;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v37);
      goto LABEL_65;
    }

    if ((*(v2 + 13) & 1) != 0 && *v2 && (*(*v2 + 144) & 1) == 0)
    {
      v33 = String.subscript.getter();
      *&v88 = 58;
      *(&v88 + 1) = 0xE100000000000000;
      v34 = MEMORY[0x1865CAE80](v33);
      v36 = v35;

      MEMORY[0x1865CB0E0](v34, v36);
LABEL_65:

      MEMORY[0x1865CB0E0](v88, *(&v88 + 1));
    }

    v38 = v93 & 0xFFFFFFFFFFFFLL;
    if ((v94 & 0x2000000000000000) != 0)
    {
      v38 = HIBYTE(v94) & 0xF;
    }

    if (v38)
    {
      break;
    }

    v95 = *(v2 + 104);
    v18 = *(&v95 + 1);
    if (*(&v95 + 1))
    {
      v40 = v95;
    }

    else if ((*(v2 + 14) & 1) != 0 && *v2)
    {
      if (*(*v2 + 168))
      {
        v43 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v43 = String.subscript.getter();
      }

      v40 = MEMORY[0x1865CAE80](v43);
      v18 = v50;
    }

    else
    {
      v40 = 0;
      v18 = 0xE000000000000000;
    }

    v51 = specialized Sequence.first(where:)(v40, v18);
    if ((v51 & 0x100) != 0 || v51 != 58 || (specialized Collection.first.getter(v40, v18) & 0x1FF) == 0x3A)
    {
      outlined init with copy of FloatingPointRoundingRule?(&v95, &v88, &_sSSSgMd);
LABEL_109:
      v49 = v40;
      goto LABEL_110;
    }

    v61 = specialized Collection<>.firstIndex(of:)(47, v40, v18);
    if (v62)
    {
      v63 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v63 = v40;
      }

      v64 = v63 << 16;
      if ((v18 & 0x1000000000000000) == 0 || (v40 & 0x800000000000000) != 0)
      {
        v65 = v64 | 7;
      }

      else
      {
        v65 = v64 | 0xB;
      }
    }

    else
    {
      v65 = v61;
    }

    outlined init with copy of FloatingPointRoundingRule?(&v95, &v88, &_sSSSgMd);
    v66 = String.subscript.getter();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = Substring.UTF8View.distance(from:to:)();
    if (!v73)
    {

      v75 = MEMORY[0x1E69E7CC0];
      goto LABEL_141;
    }

    v74 = v73;
    v75 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v73, 0);
    v76 = specialized Sequence._copySequenceContents(initializing:)(&v88, (v75 + 4), v74, v66, v68, v70, v72);

    if (v76 == v74)
    {

LABEL_141:
      v91 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd);
      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

      v77 = static String._fromUTF8Repairing(_:)();
      v79 = v78;

      v80 = specialized Collection.suffix(from:)(v65, v40, v18);
      v82 = v81;
      v84 = v83;
      v86 = v85;

      v91 = v77;
      v92 = v79;
      *&v88 = v80;
      *(&v88 + 1) = v82;
      v89 = v84;
      v90 = v86;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.append<A>(contentsOf:)();

      v40 = v91;
      v18 = v92;
      goto LABEL_109;
    }

LABEL_149:
    __break(1u);
LABEL_150:
    v46 = _StringObject.sharedUTF8.getter();
LABEL_97:
    v47 = *(v46 + v18);
LABEL_99:
    outlined init with copy of FloatingPointRoundingRule?(&v96, &v88, &_sSSSgMd);

LABEL_134:
    if (v47 == 47)
    {
      goto LABEL_28;
    }
  }

  v88 = *(v2 + 104);
  v18 = *(&v88 + 1);
  if (*(&v88 + 1))
  {
    v39 = v88;
  }

  else if ((*(v2 + 14) & 1) != 0 && *v2)
  {
    if (*(*v2 + 168))
    {
      v41 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v41 = String.subscript.getter();
    }

    v39 = MEMORY[0x1865CAE80](v41);
    v18 = v48;
  }

  else
  {
    v39 = 0;
    v18 = 0xE000000000000000;
  }

  outlined init with copy of FloatingPointRoundingRule?(&v88, &v95, &_sSSSgMd);
  v49 = v39;
LABEL_110:
  MEMORY[0x1865CB0E0](v49, v18);

  if (*(v2 + 128))
  {
    v52 = *(v2 + 120);
    v53 = *(v2 + 128);
    goto LABEL_112;
  }

  if ((*(v2 + 15) & 1) != 0 && *v2 && (*(*v2 + 192) & 1) == 0)
  {
    v57 = String.subscript.getter();
    v52 = MEMORY[0x1865CAE80](v57);
    v53 = v58;

LABEL_112:
    v91 = 63;
    v92 = 0xE100000000000000;

    MEMORY[0x1865CB0E0](v52, v53);

    MEMORY[0x1865CB0E0](v91, v92);
  }

  v54 = *(v2 + 144);
  if (v54)
  {
    v55 = *(v2 + 136);
    v56 = v54;
    goto LABEL_118;
  }

  if ((*(v2 + 16) & 1) != 0 && *v2 && (*(*v2 + 216) & 1) == 0)
  {
    v59 = String.subscript.getter();
    v55 = MEMORY[0x1865CAE80](v59);
    v56 = v60;

LABEL_118:
    v91 = 35;
    v92 = 0xE100000000000000;

    MEMORY[0x1865CB0E0](v55, v56);

    MEMORY[0x1865CB0E0](v91, v92);
  }

  return v93;
}

void _NSSwiftURLComponents.url.getter(uint64_t *a1@<X8>)
{
  if (_foundation_swift_url_feature_enabled())
  {
    v3 = *&v1[OBJC_IVAR____NSSwiftURLComponents_lock];
    os_unfair_lock_lock((v3 + 172));
    v4 = *(v3 + 128);
    v32 = *(v3 + 112);
    v33 = v4;
    v34[0] = *(v3 + 144);
    *(v34 + 10) = *(v3 + 154);
    v5 = *(v3 + 64);
    v28 = *(v3 + 48);
    v29 = v5;
    v6 = *(v3 + 96);
    v30 = *(v3 + 80);
    v31 = v6;
    v7 = *(v3 + 32);
    v26 = *(v3 + 16);
    v27 = v7;
    outlined init with copy of URLComponents(&v26, v24);
    os_unfair_lock_unlock((v3 + 172));
    v24[6] = v32;
    v24[7] = v33;
    v25[0] = v34[0];
    *(v25 + 10) = *(v34 + 10);
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v24[5] = v31;
    v24[0] = v26;
    v24[1] = v27;
    URLComponents.url.getter(a1);
    outlined destroy of URLComponents(&v26);
    return;
  }

  v8 = [v1 string];
  if (!v8)
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v9 = v8;
  v10 = CFURLCreateWithString(*MEMORY[0x1E695E480], v8, 0);

  if (!v10)
  {
    v15 = 0;
    goto LABEL_13;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v16 = type metadata accessor for _BridgedURL();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v10;
    v36.receiver = v17;
    v36.super_class = v16;
    v18 = v10;
    v19 = objc_msgSendSuper2(&v36, sel_init);
LABEL_12:
    v22 = v19;
    v10 = _BridgedURL.convertingFileReference()();
    v15 = v23;

    goto LABEL_13;
  }

  type metadata accessor for _NSSwiftURL();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    v20 = type metadata accessor for _BridgedURL();
    v21 = objc_allocWithZone(v20);
    *&v21[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v10;
    v35.receiver = v21;
    v35.super_class = v20;
    v18 = v10;
    v19 = objc_msgSendSuper2(&v35, sel_init);
    goto LABEL_12;
  }

  v12 = v11;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v12;
  v13 = v10;
  v10 = _BridgedNSSwiftURL.convertingFileReference()();
  v15 = v14;

LABEL_13:
  *a1 = v10;
  a1[1] = v15;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _FileManagerImpl.setAttributes(_:ofItemAtPath:)(Swift::OpaquePointer _, Swift::String ofItemAtPath)
{
  object = ofItemAtPath._object;
  countAndFlagsBits = ofItemAtPath._countAndFlagsBits;
  if (*(_._rawValue + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFilePosixPermissions"), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(_._rawValue + 7) + 32 * v5, &v24);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5 = _s10Foundation27_readFileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5(&v24);
  v9 = v8;
  outlined destroy of TermOfAddress?(&v24, &_sypSgMd);
  if (*(_._rawValue + 2) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileImmutable"), (v11 & 1) != 0))
  {
    outlined init with copy of Any(*(_._rawValue + 7) + 32 * v10, &v24);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v12 = specialized _readFileAttributePrimitive(_:as:)(&v24);
  outlined destroy of TermOfAddress?(&v24, &_sypSgMd);
  if (*(_._rawValue + 2) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileAppendOnly"), (v14 & 1) != 0))
  {
    outlined init with copy of Any(*(_._rawValue + 7) + 32 * v13, &v24);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v15 = specialized _readFileAttributePrimitive(_:as:)(&v24);
  outlined destroy of TermOfAddress?(&v24, &_sypSgMd);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v18[2] = countAndFlagsBits;
    v18[3] = object;
    v19 = v12;
    v20 = v15;
    v21 = FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5;
    LOBYTE(v22) = v9 & 1;
    rawValue = _._rawValue;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(countAndFlagsBits, object, partial apply for closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:), v18);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t _s10Foundation27_readFileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5(uint64_t a1)
{
  outlined init with copy of FloatingPointRoundingRule?(a1, &v35, &_sypSgMd);
  if (!v36)
  {
    v5 = &_sypSgMd;
    v6 = &v35;
LABEL_14:
    outlined destroy of TermOfAddress?(v6, v5);
    return 0;
  }

  outlined init with take of Any(&v35, v37);
  outlined init with copy of Any(v37, &v35);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  if (swift_dynamicCast())
  {
    v1 = [*&v32[0] unsignedIntegerValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v2 = v1;
    v3 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger_];
    LOBYTE(v1) = static NSObject.== infix(_:_:)();

    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v2;
    }
  }

  outlined init with copy of Any(v37, &v35);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    return *&v32[0];
  }

  outlined init with copy of Any(v37, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v5 = &_sSz_pSgMd;
    v6 = v32;
    goto LABEL_14;
  }

  outlined init with take of Equatable(v32, &v35);
  v7 = v36;
  v8 = __swift_project_boxed_opaque_existential_1(&v35, v36);
  v31 = v29;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v29 - v12;
  (*(v9 + 16))(v29 - v12, v11);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (v14 = swift_getAssociatedTypeWitness(), v30 = v29, MEMORY[0x1EEE9AC00](v14), swift_getAssociatedConformanceWitness(), v15 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v29[1] = v29, MEMORY[0x1EEE9AC00](v15), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v16 = dispatch thunk of static Comparable.< infix(_:_:)(), v17 = *(v9 + 8), v17(v29 - v12, v7), (v16 & 1) == 0))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_12;
    }

    *&v32[0] = -1;
    v19 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v19)
    {
      v21 = v9;
      if (v20 <= 64)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v30 = v29;
        MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v27 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        MEMORY[0x1EEE9AC00](v27);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v28 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(v9 + 8))(v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if (v28)
        {
          dispatch thunk of BinaryInteger._lowWord.getter();
        }

        goto LABEL_12;
      }

      MEMORY[0x1EEE9AC00](v20);
      v22 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      if (v20 <= 64)
      {
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_12;
      }

      MEMORY[0x1EEE9AC00](v20);
      v22 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = v9;
    }

    v23 = v29 - v22;
    lazy protocol witness table accessor for type UInt and conformance UInt();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v24 = dispatch thunk of static Comparable.< infix(_:_:)();
    v17 = *(v21 + 8);
    v25 = v23;
    v9 = v21;
    v17(v25, v7);
    if ((v24 & 1) == 0)
    {
LABEL_12:
      v18 = dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v9 + 8))(v13, v7);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(&v35);
      return v18;
    }
  }

  v17(v13, v7);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(&v35);
  return 0;
}

uint64_t specialized _readFileAttributePrimitive(_:as:)(uint64_t a1)
{
  outlined init with copy of FloatingPointRoundingRule?(a1, &v31, &_sypSgMd);
  if (!v32)
  {
    v5 = &_sypSgMd;
    v6 = &v31;
LABEL_15:
    outlined destroy of TermOfAddress?(v6, v5);
    return 2;
  }

  outlined init with take of Any(&v31, v33);
  outlined init with copy of Any(v33, &v31);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
  if (swift_dynamicCast())
  {
    _ss45_conditionallyBridgeFromObjectiveC_bridgeableyxSg01_D5CTypeQz_xmts01_D11CBridgeableRzlFSb_Tt1g5(*&v28[0]);
    v2 = v1;
    v3 = v1;

    if (v3 != 2)
    {
      __swift_destroy_boxed_opaque_existential_1(v33);
      return v2;
    }
  }

  outlined init with copy of Any(v33, &v31);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    return LOBYTE(v28[0]);
  }

  outlined init with copy of Any(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    __swift_destroy_boxed_opaque_existential_1(v33);
    v5 = &_sSz_pSgMd;
    v6 = v28;
    goto LABEL_15;
  }

  outlined init with take of Equatable(v28, &v31);
  v7 = v32;
  v8 = __swift_project_boxed_opaque_existential_1(&v31, v32);
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    *&v28[0] = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v13 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v13 < 64)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v13 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if ((v14 & 1) == 0)
      {
        if (v13 >= 64)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v13 <= 64)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v27 = &v26;
        MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v18 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v26 = &v26;
        MEMORY[0x1EEE9AC00](v18);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v19 = dispatch thunk of static Comparable.< infix(_:_:)();
        v16 = *(v9 + 8);
        v16(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if ((v19 & 1) == 0)
        {
LABEL_24:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_25;
        }

LABEL_20:
        v16(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
LABEL_30:
        __swift_destroy_boxed_opaque_existential_1(v33);
        __swift_destroy_boxed_opaque_existential_1(&v31);
        return 2;
      }
    }

    v27 = &v26;
    MEMORY[0x1EEE9AC00](v13);
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v15 = dispatch thunk of static Comparable.< infix(_:_:)();
    v16 = *(v9 + 8);
    v16(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v15)
    {
      goto LABEL_20;
    }
  }

LABEL_25:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    *&v28[0] = 0x7FFFFFFFFFFFFFFFLL;
    v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v20)
    {
      if (v21 > 64)
      {
LABEL_28:
        MEMORY[0x1EEE9AC00](v21);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *(v9 + 8);
        v23(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        if ((v22 & 1) == 0)
        {
          goto LABEL_36;
        }

        v23(v12, v7);
        goto LABEL_30;
      }
    }

    else if (v21 > 63)
    {
      goto LABEL_28;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_36:
  v24 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v9 + 8))(v12, v7);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (v24 == 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  if (v24)
  {
    return v25;
  }

  else
  {
    return 0;
  }
}

double _ss6ResultOySo4statV10Foundation10CocoaErrorVGSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = -1;
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(id *a1, void **a2)
{
  v2 = *a2;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(*a1);
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t specialized static _FileManagerImpl._setCatInfoAttributes(_:path:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v74 = a2;
  v75 = a3;
  v82 = *MEMORY[0x1E69E9840];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = &v79;
  v76 = v9;
  do
  {
    if (!v7)
    {
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v8)
        {
        }

        v7 = *(v4 + 8 * v12);
        ++v10;
        if (v7)
        {
          v10 = v12;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_38:
      if (!getenv("CFFIXED_USER_HOME"))
      {
        goto LABEL_34;
      }

      v31 = String.init(cString:)();
      goto LABEL_40;
    }

LABEL_9:
    v13 = one-time initialization token for _catInfoKeys;
    v14 = *(*(v9 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v15 = v14;
    if (v13 != -1)
    {
      v14 = swift_once();
    }

    v3 = &v73;
    v7 &= v7 - 1;
    *&v79 = v15;
    MEMORY[0x1EEE9AC00](v14);
    v72[2] = &v79;
    v17 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v72, v16);

    v9 = v76;
  }

  while ((v17 & 1) == 0);

  v11 = v74;
  v3 = v75;
  v19 = specialized Collection.first.getter(v74, v75);
  if ((v19 & 0x1FF) != 0x7E)
  {
    goto LABEL_36;
  }

  v20 = specialized Collection<>.firstIndex(of:)(47, v11, v3);
  if (v21)
  {
    v22 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v22 = v11;
    }

    v23 = v22 << 16;
    if ((v3 & 0x1000000000000000) != 0 && (v11 & 0x800000000000000) == 0)
    {
      v7 = v23 | 0xB;
      goto LABEL_21;
    }

    v26 = v3 & 0x1000000000000000;
    v7 = v23 | 7;
  }

  else
  {
    v7 = v20;
    v26 = v3 & 0x1000000000000000;
  }

  if (v26)
  {
LABEL_21:
    v24 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v24 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
      __break(1u);
    }

    v25 = String.UTF8View._foreignIndex(after:)();
  }

  else
  {
    v25 = 65540;
  }

  if (v7 >> 14 == v25 >> 14)
  {
    v27 = static String.homeDirectoryPath()();
    v29 = v28;
    goto LABEL_41;
  }

  if (v7 >> 14 < v25 >> 14)
  {
    __break(1u);
LABEL_78:
    swift_once();
    goto LABEL_73;
  }

  v30 = String.subscript.getter();
  MEMORY[0x1865CAE80](v30);

  if (!issetugid())
  {
    goto LABEL_38;
  }

LABEL_34:
  v31 = specialized static Platform.homeDirectory(forUserName:)();
  if (!v32)
  {

LABEL_36:

    goto LABEL_42;
  }

LABEL_40:
  v27 = String.standardizingPath.getter(v31, v32);
  v29 = v33;

LABEL_41:
  v34 = specialized Collection.suffix(from:)(v7, v11, v3);
  *&v78[0] = v27;
  *(&v78[0] + 1) = v29;
  *&v79 = v34;
  *(&v79 + 1) = v35;
  v80 = v36;
  v81 = v37;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  v3 = *(&v78[0] + 1);
  v11 = *&v78[0];
LABEL_42:
  v38 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v38 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {

    specialized String.withFileSystemRepresentation<A>(_:)(v11, v3, v11, v3);
    v40 = v39;

    if (v40)
    {
    }
  }

  v41 = String._standardizingPath.getter();
  v43 = v42;

  if (one-time initialization token for compatibility2 != -1)
  {
LABEL_77:
    swift_once();
  }

  if ((static URL.compatibility2 & 1) != 0 || !_foundation_swift_url_feature_enabled())
  {
    v44 = type metadata accessor for _BridgedURL();
    v45 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v44 = type metadata accessor for _SwiftURL();
    v45 = &protocol witness table for _SwiftURL;
  }

  (v45[7])(v41, v43, 0, v44, v45);
  v46 = (v45[56])(v44, v45);
  v74 = v47;
  swift_unknownObjectRelease();
  v77 = MEMORY[0x1E69E7CC8];
  v48 = v76;
  if (*(v76 + 16))
  {
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileExtensionHidden");
    if (v50)
    {
      outlined init with copy of Any(*(v48 + 56) + 32 * v49, v78);
      outlined init with take of Any(v78, &v79);
      v51 = *MEMORY[0x1E695DB60];
      outlined init with copy of Any(&v79, v78);
      specialized Dictionary.subscript.setter(v78, v51);
      __swift_destroy_boxed_opaque_existential_1(&v79);
    }
  }

  v52 = *(v48 + 16);
  v75 = v46;
  if (v52)
  {
    v53 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileCreationDate");
    if (v54)
    {
      outlined init with copy of Any(*(v48 + 56) + 32 * v53, v78);
      outlined init with take of Any(v78, &v79);
      v55 = *MEMORY[0x1E695DAA8];
      outlined init with copy of Any(&v79, v78);
      specialized Dictionary.subscript.setter(v78, v55);
      __swift_destroy_boxed_opaque_existential_1(&v79);
    }
  }

  v56 = v77;
  v57 = *(v77 + 16);
  type metadata accessor for NSURLResourceKey(0);
  v59 = v58;
  v60 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();

  v61 = 0;
  *&v79 = MEMORY[0x1865CB700](v57, v59, v60);
  v62 = 1 << *(v56 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v43 = v63 & *(v56 + 64);
  v41 = (v62 + 63) >> 6;
  if (v43)
  {
    while (1)
    {
      v64 = v61;
LABEL_66:
      v65 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      specialized Set._Variant.insert(_:)(v78, *(*(v56 + 48) + ((v64 << 9) | (8 * v65))));

      if (!v43)
      {
        goto LABEL_62;
      }
    }
  }

  while (1)
  {
LABEL_62:
    v64 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    if (v64 >= v41)
    {
      break;
    }

    v43 = *(v56 + 64 + 8 * v64);
    ++v61;
    if (v43)
    {
      v61 = v64;
      goto LABEL_66;
    }
  }

  ObjectType = swift_getObjectType();
  v67 = (*(v74 + 432))(ObjectType);

  v68 = _NativeDictionary.bridged()();
  *&v79 = 0;
  v69 = [v67 setResourceValues:v68 error:&v79];

  swift_unknownObjectRelease();
  if (v69)
  {
    v70 = v79;
    goto LABEL_75;
  }

  if (v79)
  {
    v79;
    goto LABEL_74;
  }

  if (one-time initialization token for _nilObjCError != -1)
  {
    goto LABEL_78;
  }

LABEL_73:
  v71 = _nilObjCError;
LABEL_74:
  swift_willThrow();
LABEL_75:

  return swift_unknownObjectRelease();
}

void closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(char *a1, unint64_t a2, unint64_t a3, int a4, char a5, unint64_t a6, int a7, uint64_t a8)
{
  v223 = a8;
  v284 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = v8;
    LODWORD(v13) = a4;
    LODWORD(v220) = a7;
    v224 = a3;
    v225 = a1;
    v14 = swift_allocObject();
    _ss6ResultOySo4statV10Foundation10CocoaErrorVGSgWOi0_(v280);
    v15 = v280[7];
    *(v14 + 112) = v280[6];
    *(v14 + 128) = v15;
    *(v14 + 144) = v280[8];
    *(v14 + 160) = v281;
    v16 = v280[3];
    *(v14 + 48) = v280[2];
    *(v14 + 64) = v16;
    v17 = v280[5];
    *(v14 + 80) = v280[4];
    *(v14 + 96) = v17;
    v18 = v280[1];
    *(v14 + 16) = v280[0];
    *(v14 + 32) = v18;
    v222 = a2;
    if (v13 == 2)
    {
      if (a5 == 2)
      {
        v19 = 0;
        v20 = 0;
        v215 = 1;
        v21 = v224;
        goto LABEL_9;
      }

      v221 = v8;
      v20 = swift_allocObject();
      v32 = v225;
      *(v20 + 16) = v14;
      *(v20 + 24) = v32;
      v28 = v14;
      v29 = v224;
      *(v20 + 32) = a2;
      *(v20 + 40) = v29;
      *(v20 + 48) = a5;
      *(v20 + 49) = 2;
    }

    else
    {
      v221 = v8;
      v20 = swift_allocObject();
      v27 = v225;
      *(v20 + 16) = v14;
      *(v20 + 24) = v27;
      v28 = v14;
      v29 = v224;
      *(v20 + 32) = a2;
      *(v20 + 40) = v29;
      *(v20 + 48) = a5;
      *(v20 + 49) = v13;
      if (v13)
      {

        v215 = 0;
        v19 = closure #2 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)partial apply;
        v21 = v29;
        v14 = v28;
        v10 = v221;
LABEL_9:
        v30 = v225;
        if (v220)
        {
LABEL_10:
          v218 = 0;
          v31 = 0;
          v216 = 1;
          goto LABEL_45;
        }

LABEL_34:
        v42 = swift_allocObject();
        v42[2] = v30;
        v42[3] = a6;
        v42[4] = v222;
        v42[5] = v21;
        if (a6 >> 16)
        {
          __break(1u);
LABEL_151:
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if (isStackAllocationSafe)
          {
            goto LABEL_79;
          }

          v100 = swift_slowAlloc();
          *&v274 = 0;
          v272 = 0u;
          v273 = 0u;
          v270 = 0u;
          v271 = 0u;
          v101 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(v100, &v270, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafeMutablePointer<passwd>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<passwd>?>?) -> (@unowned Int32), 0, v19 + 32, &v260, closure #1 in static Platform.uid(forName:));
          if (!v10)
          {
            v69 = v101;
            MEMORY[0x1865D2690](v100, -1, -1);

            if ((v69 & 0x100000000) != 0)
            {
              goto LABEL_162;
            }

            v19 = v217;
            v70 = v225;
            v71 = v221;
LABEL_82:
            LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = v69;
            if ((v13 & 1) == 0)
            {
              goto LABEL_95;
            }

            goto LABEL_106;
          }

          v209 = v100;
          goto LABEL_331;
        }

        v31 = v42;
        swift_bridgeObjectRetain_n();
        v43 = S_IWUSR.getter();
        v216 = (v43 & a6) != 0;
        if ((v43 & a6) != 0)
        {
          closure #3 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v30, a6, v222, v21);
          if (v10)
          {
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v19);

            return;
          }

          v218 = 0;
          v31 = 0;
        }

        else
        {
          v218 = partial apply for closure #3 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:);
        }

LABEL_45:
        v44 = *(v223 + 16);
        v219 = v20;
        if (v44)
        {
          v45 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileOwnerAccountName");
          if (v46)
          {
            outlined init with copy of Any(*(v223 + 56) + 32 * v45, &v270);
            v47 = swift_dynamicCast();
            tv_sec = v260.tv_sec;
            if (!v47)
            {
              tv_sec = 0;
            }

            *&v214 = tv_sec;
            if (v47)
            {
              v49 = *&v260.tv_usec;
            }

            else
            {
              v49 = 0;
            }

            if (!*(v223 + 16))
            {
              goto LABEL_58;
            }
          }

          else
          {
            *&v214 = 0;
            v49 = 0;
            if (!*(v223 + 16))
            {
              goto LABEL_58;
            }
          }

          v50 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileOwnerAccountID");
          if (v51)
          {
            outlined init with copy of Any(*(v223 + 56) + 32 * v50, &v270);
            goto LABEL_59;
          }
        }

        else
        {
          v49 = 0;
          *&v214 = 0;
        }

LABEL_58:
        v270 = 0u;
        v271 = 0u;
LABEL_59:
        FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5 = _s10Foundation27_readFileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5(&v270);
        v54 = v53;
        outlined destroy of TermOfAddress?(&v270, &_sypSgMd);
        v55 = *(v223 + 16);
        v220 = v31;
        if (v55)
        {
          v56 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileGroupOwnerAccountName");
          if (v57)
          {
            outlined init with copy of Any(*(v223 + 56) + 32 * v56, &v270);
            v58 = swift_dynamicCast();
            v60 = *&v260.tv_usec;
            v59 = v260.tv_sec;
            if (!v58)
            {
              v59 = 0;
            }

            v213 = v59;
            if (!v58)
            {
              v60 = 0;
            }
          }

          else
          {
            v213 = 0;
            v60 = 0;
          }

          v61 = *(v223 + 16);
          v221 = v60;
          if (v61)
          {
            v62 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileGroupOwnerAccountID");
            if (v63)
            {
              outlined init with copy of Any(*(v223 + 56) + 32 * v62, &v270);
              goto LABEL_71;
            }
          }
        }

        else
        {
          v221 = 0;
          v213 = 0;
        }

        v270 = 0u;
        v271 = 0u;
LABEL_71:
        a6 = _s10Foundation27_readFileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5(&v270);
        LODWORD(v13) = v64;
        outlined destroy of TermOfAddress?(&v270, &_sypSgMd);
        if (v49)
        {
          if ((v54 & 1) != 0 || HIDWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5))
          {
            v217 = v19;
            v19 = String.utf8CString.getter();
            isStackAllocationSafe = sysconf(71);
            if (isStackAllocationSafe == -1)
            {
              v66 = 4096;
            }

            else
            {
              v66 = isStackAllocationSafe;
            }

            v260.tv_sec = v66;
            if ((v66 & 0x8000000000000000) == 0)
            {
              if (v66 < 1025)
              {
LABEL_79:
                MEMORY[0x1EEE9AC00](isStackAllocationSafe);
                v283 = 0;
                memset(v282, 0, sizeof(v282));
                v68 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(&v210 - v67, v282, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafeMutablePointer<passwd>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<passwd>?>?) -> (@unowned Int32), 0, v19 + 32, &v260, closure #1 in static Platform.uid(forName:));
                if (v10)
                {
                  goto LABEL_327;
                }

                v69 = v68;

                if ((v69 & 0x100000000) == 0)
                {
                  v70 = v225;
                  v71 = v221;
                  v19 = v217;
                  goto LABEL_82;
                }

                LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = -1;
                v70 = v225;
                v71 = v221;
                v19 = v217;
LABEL_94:
                if ((v13 & 1) == 0)
                {
                  goto LABEL_95;
                }

                goto LABEL_106;
              }

              goto LABEL_151;
            }

            __break(1u);
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

LABEL_90:

          goto LABEL_91;
        }

        if ((v54 & 1) == 0)
        {
          if (HIDWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5))
          {
            LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = -1;
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = -1;
        v71 = v221;
        if (!v221)
        {
          v70 = v225;
          if ((v13 & 1) == 0)
          {
            goto LABEL_94;
          }

LABEL_173:
          v217 = v19;
          v108 = v223;
          v109 = v224;
          specialized static _FileManagerImpl._setCatInfoAttributes(_:path:)(v223, v222, v224);
          v221 = v10;
          if (v10)
          {
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217);
            v110 = v218;
LABEL_238:
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v110);

            return;
          }

          v112 = String._bridgeToObjectiveCImpl()();
          if (*(v108 + 16) && (v113 = specialized __RawDictionaryStorage.find<A>(_:)(v112), v108 = v223, (v114 & 1) != 0))
          {
            outlined init with copy of Any(*(v223 + 56) + 32 * v113, &v270);
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd);
            v115 = swift_dynamicCast();
            if (v115)
            {
              v116 = v260.tv_sec + 64;
              v117 = 1 << *(v260.tv_sec + 32);
              v118 = -1;
              if (v117 < 64)
              {
                v118 = ~(-1 << v117);
              }

              v119 = v118 & *(v260.tv_sec + 64);
              v120 = (v117 + 63) >> 6;
              v213 = v260.tv_sec;

              v122 = 0;
              for (i = v116; v119; v116 = i)
              {
                v123 = v122;
LABEL_189:
                v124 = __clz(__rbit64(v119));
                v119 &= v119 - 1;
                v125 = (*(v213 + 48) + ((v123 << 10) | (16 * v124)));
                v126 = *v125;
                v127 = v125[1];
                *&v128 = MEMORY[0x1EEE9AC00](v121);
                v214 = v128;
                if ((v127 & 0x1000000000000000) != 0)
                {
                  goto LABEL_198;
                }

                if ((v127 & 0x2000000000000000) != 0)
                {
                  *&v270 = v126;
                  *(&v270 + 1) = v127 & 0xFFFFFFFFFFFFFFLL;

                  v131 = v214;
                  outlined copy of Data._Representation(v214, *(&v214 + 1));
                  v132 = v221;
                  specialized Data._Representation.withUnsafeBytes<A>(_:)(v131, *(&v131 + 1), v225, &v270, 0);
                  v221 = v132;
                  if (v132)
                  {
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218);
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217);

                    outlined consume of Data._Representation(v131, *(&v131 + 1));

                    return;
                  }

                  v121 = outlined consume of Data._Representation(v131, *(&v131 + 1));
                  goto LABEL_196;
                }

                if ((v126 & 0x1000000000000000) == 0)
                {
LABEL_198:
                  v210 = v14;
                  v211 = &v210;

                  v133 = *(&v214 + 1);
                  v134 = v214;
                  outlined copy of Data._Representation(v214, *(&v214 + 1));
                  v135 = v221;
                  _StringGuts._slowWithCString<A>(_:)();
                  v221 = v135;
                  if (v135)
                  {
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218);
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217);

                    outlined consume of Data._Representation(v134, v133);

                    return;
                  }

                  v121 = outlined consume of Data._Representation(v134, v133);
                  v14 = v210;
                }

                else
                {
                  v211 = (v127 & 0xFFFFFFFFFFFFFFFLL);

                  v129 = v214;
                  outlined copy of Data._Representation(v214, *(&v214 + 1));
                  v130 = v221;
                  specialized Data._Representation.withUnsafeBytes<A>(_:)(v129, *(&v129 + 1), v225, v211 + 32, 0);
                  v221 = v130;
                  if (v130)
                  {
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218);
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217);

                    outlined consume of Data._Representation(v129, *(&v129 + 1));

                    return;
                  }

                  outlined consume of Data._Representation(v129, *(&v129 + 1));
                }

LABEL_196:
                v122 = v123;
                v109 = v224;
              }

              while (1)
              {
                v123 = v122 + 1;
                if (__OFADD__(v122, 1))
                {
                  break;
                }

                if (v123 >= v120)
                {

                  v108 = v223;
                  if (!*(v223 + 16))
                  {
                    goto LABEL_259;
                  }

LABEL_210:
                  v115 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileModificationDate");
                  v108 = v223;
                  if (v136)
                  {
                    outlined init with copy of Any(*(v223 + 56) + 32 * v115, &v270);
                    v115 = swift_dynamicCast();
                    if (v115)
                    {
                      v137 = *&v260.tv_sec + 978307200.0;
                      v138 = trunc(*&v260.tv_sec + 978307200.0);
                      if (COERCE__INT64(fabs(*&v260.tv_sec + 978307200.0)) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        v139 = 0.0;
                        if (v137 <= -9.22337204e18 || v137 >= 9.22337204e18 || v137 != v138)
                        {
                          goto LABEL_259;
                        }

LABEL_247:
                        v163 = round(v139 * 1000000.0);
                        if (v163 <= -2147483650.0 || v163 >= 2147483650.0)
                        {
                          goto LABEL_259;
                        }

                        *&v270 = v137;
                        DWORD2(v270) = v163;
                        *&v271 = v137;
                        DWORD2(v271) = v163;
                        v115 = utimes(v225, &v270);
                        if (!v115)
                        {
                          goto LABEL_259;
                        }

                        v165 = MEMORY[0x1865CA7A0]();
                        LODWORD(v13) = v165;
                        if (v165 <= 27)
                        {
                          if (v165 > 12)
                          {
                            if (v165 != 13)
                            {
                              if (v165 != 17)
                              {
                                goto LABEL_302;
                              }

                              v10 = 516;
                              goto LABEL_303;
                            }
                          }

                          else if (v165 != 1)
                          {
                            if (v165 != 2)
                            {
                              goto LABEL_302;
                            }

                            v10 = 4;
                            goto LABEL_303;
                          }

                          v10 = 513;
                          goto LABEL_303;
                        }

                        if (v165 > 62)
                        {
                          if (v165 == 63)
                          {
                            v10 = 514;
                            goto LABEL_303;
                          }

                          if (v165 != 69)
                          {
                            if (v165 == 102)
                            {
                              v166 = 0;
                              v10 = 512;
                              goto LABEL_308;
                            }

LABEL_302:
                            v10 = 512;
                            goto LABEL_303;
                          }

LABEL_299:
                          v10 = 640;
                          goto LABEL_303;
                        }

                        if (v165 == 28)
                        {
                          goto LABEL_299;
                        }

                        if (v165 != 30)
                        {
                          goto LABEL_302;
                        }

                        v10 = 642;
LABEL_303:
                        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                        {
                          goto LABEL_328;
                        }

                        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
                        v186 = POSIXErrorCode.rawValue.getter();
                        v187 = objc_allocWithZone(NSError);
                        v188 = String._bridgeToObjectiveCImpl()();

                        v166 = [v187 initWithDomain:v188 code:v186 userInfo:_NativeDictionary.bridged()()];
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        v189 = [v166 domain];
                        v190 = static String._unconditionallyBridgeFromObjectiveC(_:)(v189);
                        v13 = v191;

                        if (v190 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v13 == v192)
                        {

                          goto LABEL_308;
                        }

                        v193 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v193)
                        {
LABEL_308:
                          v194 = v224;

                          URL.init(_fileManagerFailableFileURLWithPath:)(v222, v194, &v260.tv_sec);

                          v195 = v260;
                          v196 = String._bridgeToObjectiveCImpl()();
                          if (v195.tv_sec)
                          {
                            ObjectType = swift_getObjectType();
                            v198 = (*(*&v195.tv_usec + 432))(ObjectType, *&v195.tv_usec);
                            swift_unknownObjectRelease();
                          }

                          else
                          {
                            v198 = 0;
                          }

                          v199 = v217;
                          v200 = v218;
                          if (v166)
                          {
                            v201 = v218;
                            v202 = v10;
                            v250.tv_sec = v166;
                            lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                            v166 = v166;
                            v203 = _getErrorEmbeddedNSError<A>(_:)();

                            if (v203)
                            {
                            }

                            else
                            {
                              swift_allocError();
                              *v205 = v166;
                            }

                            v204 = _swift_stdlib_bridgeErrorToNSError();
                            v10 = v202;
                            v200 = v201;
                            v199 = v217;
                          }

                          else
                          {
                            v204 = 0;
                          }

                          [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                          swift_unknownObjectRelease();

                          swift_willThrow();
                          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v199);
                          v110 = v200;
                          goto LABEL_238;
                        }

                        __break(1u);
LABEL_322:
                        __break(1u);
LABEL_323:
                        *&v270 = 0;
                        *(&v270 + 1) = 0xE000000000000000;
                        _StringGuts.grow(_:)(22);

                        *&v270 = 0xD000000000000014;
                        *(&v270 + 1) = 0x80000001814813E0;
                        LODWORD(v260.tv_sec) = v13;
                        v206 = dispatch thunk of CustomStringConvertible.description.getter();
                        MEMORY[0x1865CB0E0](v206);

                        while (1)
                        {
LABEL_326:
                          _assertionFailure(_:_:file:line:flags:)();
                          __break(1u);
LABEL_327:
                          swift_willThrow();

                          __break(1u);
LABEL_328:
                          v260.tv_sec = 0;
                          *&v260.tv_usec = 0xE000000000000000;
                          _StringGuts.grow(_:)(22);

                          v260.tv_sec = 0xD000000000000014;
                          *&v260.tv_usec = 0x80000001814813E0;
                          LODWORD(v250.tv_sec) = v13;
                          v208 = dispatch thunk of CustomStringConvertible.description.getter();
                          MEMORY[0x1865CB0E0](v208);
                        }
                      }

                      if (v138 > -9.22337204e18 && v138 < 9.22337204e18)
                      {
                        v139 = v137 - v138;
                        v137 = v138;
                        goto LABEL_247;
                      }
                    }
                  }

LABEL_259:
                  if (!v216)
                  {
                    v167 = v221;
                    v168 = v218;
                    v115 = (v218)(v115);
                    v221 = v167;
                    if (v167)
                    {
                      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217);
                      v110 = v168;
                      goto LABEL_238;
                    }

                    v108 = v223;
                  }

                  if ((v215 & 1) == 0)
                  {
                    v169 = v221;
                    v170 = v217;
                    v217(v115);
                    v221 = v169;
                    if (v169)
                    {
                      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v170);
                      v110 = v218;
                      goto LABEL_238;
                    }

                    v108 = v223;
                  }

                  specialized Dictionary.subscript.getter(@"NSFileProtectionKey", v108, &v270);
                  if (*(&v271 + 1))
                  {
                    type metadata accessor for NSFileProtectionType(0);
                    if (swift_dynamicCast())
                    {
                      v171 = v260.tv_sec;
                      v172 = NSFileProtectionType.intValue.getter(v171);
                      if ((v172 & 0x100000000) == 0)
                      {
                        v173 = v172;
                        getter of statAtPath #1 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v14, v225, v222, v109, &v260);
                        v276 = v266;
                        v277 = v267;
                        v278 = v268;
                        v279 = v269;
                        v272 = v262;
                        v273 = v263;
                        v274 = v264;
                        v275 = v265;
                        v270 = v260;
                        v271 = v261;
                        if (_ss6ResultOySo4statV10Foundation10CocoaErrorVGWOg(&v270) == 1)
                        {
                          _NSBundleDeallocatingImmortalBundle(&v270, v174);

                          v256 = v266;
                          v257 = v267;
                          v258 = v268;
                          v259 = v269;
                          v252 = v262;
                          v253 = v263;
                          v254 = v264;
                          v255 = v265;
                          v250 = v260;
                          v251 = v261;
                          v227 = *_NSBundleDeallocatingImmortalBundle(&v250, v175);
                          lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
                          goto LABEL_272;
                        }

                        _NSBundleDeallocatingImmortalBundle(&v270, v174);
                        v256 = v266;
                        v257 = v267;
                        v258 = v268;
                        v259 = v269;
                        v252 = v262;
                        v253 = v263;
                        v254 = v264;
                        v255 = v265;
                        v250 = v260;
                        v251 = v261;
                        v177 = *(_NSBundleDeallocatingImmortalBundle(&v250, v176) + 4);
                        v178 = S_IFMT.getter() & v177;
                        if (v178 == S_IFREG.getter())
                        {
                          goto LABEL_279;
                        }

                        getter of statAtPath #1 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v14, v225, v222, v109, &v238);
                        v248[6] = v244;
                        v248[7] = v245;
                        v248[8] = v246;
                        v249 = v247;
                        v248[2] = v240;
                        v248[3] = v241;
                        v248[4] = v242;
                        v248[5] = v243;
                        v248[0] = v238;
                        v248[1] = v239;
                        v180 = _ss6ResultOySo4statV10Foundation10CocoaErrorVGWOg(v248);
                        if (v180 == 1)
                        {
                          _NSBundleDeallocatingImmortalBundle(v248, v181);

                          v234 = v244;
                          v235 = v245;
                          v236 = v246;
                          v237 = v247;
                          v230 = v240;
                          v231 = v241;
                          v232 = v242;
                          v233 = v243;
                          v228 = v238;
                          v229 = v239;
                          v226 = *_NSBundleDeallocatingImmortalBundle(&v228, v182);
                          lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
LABEL_272:
                          swift_willThrowTypedImpl();
LABEL_273:
                          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218);
                          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217);

                          return;
                        }

                        _NSBundleDeallocatingImmortalBundle(v248, v181);
                        v234 = v244;
                        v235 = v245;
                        v236 = v246;
                        v237 = v247;
                        v230 = v240;
                        v231 = v241;
                        v232 = v242;
                        v233 = v243;
                        v228 = v238;
                        v229 = v239;
                        v184 = *(_NSBundleDeallocatingImmortalBundle(&v228, v183) + 4);
                        v185 = S_IFMT.getter() & v184;
                        if (v185 == S_IFDIR.getter())
                        {
LABEL_279:
                          v179 = v221;
                          specialized static _FileManagerImpl._setFileProtectionValueForPath(_:_:newValue:)(v222, v109, v225, v173);
                          if (v179)
                          {
                            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217);

                            v110 = v218;
                            goto LABEL_238;
                          }

                          goto LABEL_273;
                        }
                      }

                      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218);
                      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217);

                      return;
                    }
                  }

                  else
                  {
                    outlined destroy of TermOfAddress?(&v270, &_sypSgMd);
                  }

                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218);
                  v110 = v217;
                  goto LABEL_238;
                }

                v119 = *(v116 + 8 * v123);
                ++v122;
                if (v119)
                {
                  goto LABEL_189;
                }
              }

              __break(1u);
LABEL_319:
              __break(1u);
            }
          }

          else
          {
            v115 = swift_unknownObjectRelease();
          }

          if (!*(v108 + 16))
          {
            goto LABEL_259;
          }

          goto LABEL_210;
        }

        v70 = v225;
        if ((v13 & 1) == 0)
        {
          goto LABEL_95;
        }

        while (1)
        {
LABEL_106:
          if (!v71)
          {
            goto LABEL_165;
          }

          LOBYTE(v13) = v10;
          a6 = String.utf8CString.getter();
          v72 = sysconf(70);
          v73 = v72 == -1 ? 4096 : v72;
          *&v270 = v73;
          if ((v73 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_161:
          __break(1u);
LABEL_162:
          LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = -1;
          v19 = v217;
LABEL_91:
          v70 = v225;
          v71 = v221;
          if ((v13 & 1) == 0)
          {
LABEL_95:
            if (!HIDWORD(a6))
            {

              goto LABEL_166;
            }
          }
        }

        if (v73 < 1025 || (v72 = swift_stdlib_isStackAllocationSafe(), (v72 & 1) != 0))
        {
          v13 = &v210;
          MEMORY[0x1EEE9AC00](v72);
          v75 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(&v210 - v74, 0, 0, 0, 0, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafeMutablePointer<group>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<group>?>?) -> (@unowned Int32), 0, a6 + 32, &v270, closure #1 in static Platform.uid(forName:));
          if (v10)
          {
            goto LABEL_327;
          }

          v76 = v75;

          if ((v76 & 0x100000000) == 0)
          {
            LODWORD(a6) = v76;
            v70 = v225;
            goto LABEL_166;
          }
        }

        else
        {
          v217 = v19;
          v102 = swift_slowAlloc();
          v103 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(v102, 0, 0, 0, 0, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafeMutablePointer<group>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<group>?>?) -> (@unowned Int32), 0, a6 + 32, &v270, closure #1 in static Platform.uid(forName:));
          if (v10)
          {

            v209 = v102;
LABEL_331:
            MEMORY[0x1865D2690](v209, -1, -1);
            __break(1u);
            return;
          }

          v104 = v103;
          MEMORY[0x1865D2690](v102, -1, -1);

          if ((v104 & 0x100000000) == 0)
          {
            LODWORD(a6) = v104;
            v19 = v217;
            v70 = v225;
            goto LABEL_166;
          }

          v19 = v217;
        }

        v70 = v225;
LABEL_165:
        LODWORD(a6) = -1;
LABEL_166:
        if (!chown(v70, FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5, a6))
        {
          goto LABEL_173;
        }

        v105 = MEMORY[0x1865CA7A0]();
        LODWORD(v13) = v105;
        if (v105 > 27)
        {
          if (v105 <= 62)
          {
            if (v105 != 28)
            {
              if (v105 == 30)
              {
                v111 = 642;
                goto LABEL_223;
              }

              goto LABEL_222;
            }
          }

          else
          {
            if (v105 == 63)
            {
              v111 = 514;
              goto LABEL_223;
            }

            if (v105 != 69)
            {
              if (v105 == 102)
              {
                v106 = v19;
                v107 = 0;
                v225 = 512;
                goto LABEL_228;
              }

LABEL_222:
              v111 = 512;
LABEL_223:
              if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
              {
                goto LABEL_323;
              }

              v225 = v111;
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v142 = POSIXErrorCode.rawValue.getter();
              v143 = objc_allocWithZone(NSError);
              v144 = String._bridgeToObjectiveCImpl()();

              v107 = [v143 initWithDomain:v144 code:v142 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v145 = [v107 domain];
              v146 = static String._unconditionallyBridgeFromObjectiveC(_:)(v145);
              v148 = v147;

              if (v146 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v148 == v149)
              {
                v106 = v19;
              }

              else
              {
                v106 = v19;
                v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v150 & 1) == 0)
                {
                  goto LABEL_319;
                }
              }

LABEL_228:
              v151 = v224;

              URL.init(_fileManagerFailableFileURLWithPath:)(v222, v151, &v270);

              v152 = v270;
              v153 = *(&v270 + 1);
              v154 = String._bridgeToObjectiveCImpl()();
              if (v152)
              {
                v155 = swift_getObjectType();
                v156 = (*(v153 + 432))(v155, v153);
                swift_unknownObjectRelease();
              }

              else
              {
                v156 = 0;
              }

              v157 = v106;
              if (v107)
              {
                v260.tv_sec = v107;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v107 = v107;
                v158 = _getErrorEmbeddedNSError<A>(_:)();

                v159 = v225;
                if (v158)
                {
                }

                else
                {
                  swift_allocError();
                  *v161 = v107;
                }

                v160 = _swift_stdlib_bridgeErrorToNSError();
              }

              else
              {
                v160 = 0;
                v159 = v225;
              }

              [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
              swift_unknownObjectRelease();

              swift_willThrow();
              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218);
              v110 = v157;
              goto LABEL_238;
            }
          }

          v111 = 640;
          goto LABEL_223;
        }

        if (v105 > 12)
        {
          if (v105 != 13)
          {
            if (v105 == 17)
            {
              v111 = 516;
              goto LABEL_223;
            }

            goto LABEL_222;
          }
        }

        else if (v105 != 1)
        {
          if (v105 == 2)
          {
            v111 = 4;
            goto LABEL_223;
          }

          goto LABEL_222;
        }

        v111 = 513;
        goto LABEL_223;
      }

      a2 = v222;
      v32 = v225;
    }

    swift_bridgeObjectRetain_n();

    getter of statAtPath #1 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v33, v32, a2, v29, &v260);
    v276 = v266;
    v277 = v267;
    v278 = v268;
    v279 = v269;
    v272 = v262;
    v273 = v263;
    v274 = v264;
    v275 = v265;
    v270 = v260;
    v271 = v261;
    if (_ss6ResultOySo4statV10Foundation10CocoaErrorVGWOg(&v270) == 1)
    {
      _NSBundleDeallocatingImmortalBundle(&v270, v34);
      v256 = v266;
      v257 = v267;
      v258 = v268;
      v259 = v269;
      v252 = v262;
      v253 = v263;
      v254 = v264;
      v255 = v265;
      v250 = v260;
      v251 = v261;
      *&v228 = *_NSBundleDeallocatingImmortalBundle(&v250, v35);
      lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
      swift_willThrowTypedImpl();

      return;
    }

    _NSBundleDeallocatingImmortalBundle(&v270, v34);
    v256 = v266;
    v257 = v267;
    v258 = v268;
    v259 = v269;
    v252 = v262;
    v253 = v263;
    v254 = v264;
    v255 = v265;
    v250 = v260;
    v251 = v261;
    v37 = *(_NSBundleDeallocatingImmortalBundle(&v250, v36) + 116);
    v14 = v28;
    v10 = v221;
    v30 = v225;
    if (a5 != 2)
    {
      if (a5)
      {
        v37 |= 4u;
      }

      else
      {
        v37 &= ~4u;
      }
    }

    if (v13 == 2)
    {
      v21 = v224;
    }

    else
    {
      v21 = v224;
      if (v13)
      {
        v37 |= 2u;
      }

      else
      {
        v37 &= ~2u;
      }
    }

    if (!chflags(v225, v37))
    {

      v19 = 0;
      v20 = 0;
      v215 = 1;
      if (v220)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    v38 = MEMORY[0x1865CA7A0]();
    LODWORD(v13) = v38;
    v39 = 0x1E69EE000;
    v219 = v20;
    if (v38 > 27)
    {
      if (v38 <= 62)
      {
        if (v38 != 28)
        {
          if (v38 == 30)
          {
            v41 = 642;
            goto LABEL_117;
          }

          goto LABEL_116;
        }
      }

      else
      {
        if (v38 == 63)
        {
          v41 = 514;
          goto LABEL_117;
        }

        if (v38 != 69)
        {
          if (v38 == 102)
          {
            v40 = 0;
            v41 = 512;
            goto LABEL_141;
          }

LABEL_116:
          v41 = 512;
LABEL_117:
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            _StringGuts.grow(_:)(22);

            *&v248[0] = 0xD000000000000014;
            *(&v248[0] + 1) = 0x80000001814813E0;
            LODWORD(v238) = v13;
            v207 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v207);

            goto LABEL_326;
          }

          LODWORD(v13) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v77 = @"NSPOSIXErrorDomain";
          v78 = v77;
          if (v13)
          {
            TaggedPointerTag = _objc_getTaggedPointerTag(v77);
            if (TaggedPointerTag)
            {
              if (TaggedPointerTag != 22)
              {
                if (TaggedPointerTag == 2)
                {
                  MEMORY[0x1EEE9AC00](TaggedPointerTag);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_135:
                  v39 = 0x1E69EE000uLL;
LABEL_136:
                  v85 = POSIXErrorCode.rawValue.getter();
                  v86 = objc_allocWithZone(*(v39 + 960));
                  v87 = String._bridgeToObjectiveCImpl()();

                  v40 = [v86 initWithDomain:v87 code:v85 userInfo:_NativeDictionary.bridged()()];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v88 = [v40 domain];
                  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(v88);
                  v13 = v89;

                  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
                  a6 = v91;
                  if (v10 == v90 && v13 == v91)
                  {
                  }

                  else
                  {
                    v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v92 & 1) == 0)
                    {
                      goto LABEL_160;
                    }
                  }

                  v21 = v224;
LABEL_141:

                  URL.init(_fileManagerFailableFileURLWithPath:)(v222, v21, v248);

                  v93 = v248[0];
                  v94 = String._bridgeToObjectiveCImpl()();
                  if (v93)
                  {
                    v95 = swift_getObjectType();
                    v96 = (*(*(&v93 + 1) + 432))(v95, *(&v93 + 1));
                    swift_unknownObjectRelease();
                    if (v40)
                    {
LABEL_143:
                      *&v238 = v40;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v40 = v40;
                      v97 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v97)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v99 = v40;
                      }

                      v98 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_149;
                    }
                  }

                  else
                  {
                    v96 = 0;
                    if (v40)
                    {
                      goto LABEL_143;
                    }
                  }

                  v98 = 0;
LABEL_149:
                  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  swift_willThrow();

                  return;
                }

                goto LABEL_123;
              }

              v82 = [(__CFString *)v78 UTF8String];
              if (!v82)
              {
                goto LABEL_322;
              }

              String.init(utf8String:)(v82);
              if (v83)
              {
                goto LABEL_130;
              }

              __break(1u);
            }

            LOWORD(v227) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v84)
            {
              [(__CFString *)v78 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_136;
            }

            goto LABEL_130;
          }

LABEL_123:
          LOBYTE(v238) = 0;
          *&v248[0] = 0;
          LOBYTE(v227) = 0;
          LOBYTE(v226) = 0;
          if (!__CFStringIsCF())
          {
            v80 = v78;
            String.init(_nativeStorage:)();
            if (!v81 && (*&v248[0] = [(__CFString *)v80 length]) != 0)
            {
              String.init(_cocoaString:)();
            }

            else
            {
            }

            goto LABEL_135;
          }

LABEL_130:

          goto LABEL_136;
        }
      }

      v41 = 640;
      goto LABEL_117;
    }

    if (v38 > 12)
    {
      if (v38 != 13)
      {
        if (v38 == 17)
        {
          v41 = 516;
          goto LABEL_117;
        }

        goto LABEL_116;
      }
    }

    else if (v38 != 1)
    {
      if (v38 == 2)
      {
        v41 = 4;
        goto LABEL_117;
      }

      goto LABEL_116;
    }

    v41 = 513;
    goto LABEL_117;
  }

  URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, v280);

  v23 = v280[0];
  v24 = String._bridgeToObjectiveCImpl()();
  if (v23)
  {
    v25 = swift_getObjectType();
    v26 = (*(*(&v23 + 1) + 432))(v25, *(&v23 + 1));
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0;
  }

  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  swift_willThrow();
}

uint64_t sub_18081DFFC()
{
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    outlined consume of Result<stat, CocoaError>(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 161, 7);
}

uint64_t sub_18081E074()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

double specialized Dictionary.subscript.getter@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    outlined init with copy of Any(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id NSFileProtectionType.intValue.getter(void *a1)
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSFileProtectionComplete");
  v3 = @"NSFileProtectionComplete";
  v4 = v3;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v3);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v8 = v7;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      result = [(__CFString *)v4 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_210;
      }

      v13 = String.init(utf8String:)(result);
      if (v14)
      {
LABEL_15:
        v6 = v13;
        v8 = v14;

        goto LABEL_20;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v13 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v14)
    {
      [(__CFString *)v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v6 = v137;
      v8 = v138;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_6:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v6 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_20;
  }

  v9 = v4;
  v10 = String.init(_nativeStorage:)();
  if (v11)
  {
    v6 = v10;
    v8 = v11;

    goto LABEL_20;
  }

  if (![(__CFString *)v9 length])
  {

    goto LABEL_10;
  }

  v6 = String.init(_cocoaString:)();
  v8 = v15;
LABEL_20:
  v16 = _objc_isTaggedPointer(a1);
  v17 = a1;
  v18 = v17;
  if (!v16)
  {
    goto LABEL_25;
  }

  v19 = _objc_getTaggedPointerTag(v17);
  if (!v19)
  {
    goto LABEL_33;
  }

  if (v19 == 22)
  {
    result = [v18 UTF8String];
    if (result)
    {
      v26 = String.init(utf8String:)(result);
      if (v27)
      {
LABEL_34:
        v20 = v26;
        v22 = v27;

        goto LABEL_39;
      }

      __break(1u);
LABEL_33:
      _CFIndirectTaggedPointerStringGetContents();
      v26 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v27)
      {
        [v18 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v20 = v137;
        v22 = v138;
        goto LABEL_39;
      }

      goto LABEL_34;
    }

LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (v19 != 2)
  {
LABEL_25:
    LOBYTE(v137) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v23 = v18;
      v24 = String.init(_nativeStorage:)();
      if (v25)
      {
        v20 = v24;
        v22 = v25;

        goto LABEL_39;
      }

      if ([v23 length])
      {
        v20 = String.init(_cocoaString:)();
        v22 = v28;
        goto LABEL_39;
      }
    }

    v20 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](v19);
  v20 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v22 = v21;

LABEL_39:
  if (v6 == v20 && v8 == v22)
  {

LABEL_43:
    v30 = 0;
    v31 = 1;
    return (v31 | ((v30 & 1) << 32));
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_43;
  }

  v32 = String._bridgeToObjectiveCImpl()();
  v33 = _objc_isTaggedPointer(v32);
  v34 = v32;
  v35 = v34;
  if (!v33)
  {
    goto LABEL_49;
  }

  v36 = _objc_getTaggedPointerTag(v34);
  switch(v36)
  {
    case 0:
      goto LABEL_56;
    case 0x16:
      result = [v35 UTF8String];
      if (result)
      {
        v43 = String.init(utf8String:)(result);
        if (v44)
        {
          goto LABEL_57;
        }

        __break(1u);
LABEL_56:
        _CFIndirectTaggedPointerStringGetContents();
        v43 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v44)
        {
          [v35 mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_dynamicCast();
          v37 = v137;
          v39 = v138;
          goto LABEL_63;
        }

LABEL_57:
        v37 = v43;
        v39 = v44;
        goto LABEL_58;
      }

LABEL_211:
      __break(1u);
      goto LABEL_212;
    case 2:
      MEMORY[0x1EEE9AC00](v36);
      v37 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v39 = v38;
      swift_unknownObjectRelease();
      goto LABEL_63;
  }

LABEL_49:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {
    goto LABEL_52;
  }

  v40 = v35;
  v41 = String.init(_nativeStorage:)();
  if (v42)
  {
    v37 = v41;
    v39 = v42;
LABEL_58:
    swift_unknownObjectRelease();
    goto LABEL_63;
  }

  if (![v40 length])
  {
LABEL_52:
    swift_unknownObjectRelease();
    v37 = 0;
    v39 = 0xE000000000000000;
    goto LABEL_63;
  }

  v37 = String.init(_cocoaString:)();
  v39 = v45;
LABEL_63:
  v46 = v18;
  v47 = v46;
  if (!v16)
  {
    goto LABEL_68;
  }

  v48 = _objc_getTaggedPointerTag(v46);
  switch(v48)
  {
    case 0:
      goto LABEL_76;
    case 0x16:
      result = [v47 UTF8String];
      if (result)
      {
        v55 = String.init(utf8String:)(result);
        if (v56)
        {
LABEL_77:
          v57 = v55;
          v51 = v56;

          if (v37 != v57)
          {
            goto LABEL_89;
          }

          goto LABEL_87;
        }

        __break(1u);
LABEL_76:
        _CFIndirectTaggedPointerStringGetContents();
        v55 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v56)
        {
          [v47 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v51 = v138;
          if (v37 != v137)
          {
            goto LABEL_89;
          }

          goto LABEL_87;
        }

        goto LABEL_77;
      }

LABEL_212:
      __break(1u);
      goto LABEL_213;
    case 2:
      MEMORY[0x1EEE9AC00](v48);
      v49 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v51 = v50;

      goto LABEL_84;
  }

LABEL_68:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {

    v51 = 0xE000000000000000;
    if (v37)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v52 = v47;
    v53 = String.init(_nativeStorage:)();
    if (v54)
    {
      v49 = v53;
      v51 = v54;

      goto LABEL_84;
    }

    if (![v52 length])
    {

      v49 = 0;
      v51 = 0xE000000000000000;
LABEL_84:
      if (v37 != v49)
      {
        goto LABEL_89;
      }

      goto LABEL_87;
    }

    v58 = String.init(_cocoaString:)();
    v51 = v59;
    if (v37 != v58)
    {
      goto LABEL_89;
    }
  }

LABEL_87:
  if (v39 == v51)
  {
    swift_unknownObjectRelease();

LABEL_132:
    v30 = 0;
    v31 = 2;
    return (v31 | ((v30 & 1) << 32));
  }

LABEL_89:
  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if (v60)
  {
    goto LABEL_132;
  }

  v61 = _objc_isTaggedPointer(@"NSFileProtectionCompleteUnlessOpen");
  v62 = @"NSFileProtectionCompleteUnlessOpen";
  v63 = v62;
  if (v61)
  {
    v64 = _objc_getTaggedPointerTag(v62);
    if (!v64)
    {
      goto LABEL_103;
    }

    if (v64 != 22)
    {
      if (v64 == 2)
      {
        MEMORY[0x1EEE9AC00](v64);
        v65 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v67 = v66;

        goto LABEL_109;
      }

      goto LABEL_95;
    }

    result = [(__CFString *)v63 UTF8String];
    if (result)
    {
      v71 = String.init(utf8String:)(result);
      if (v72)
      {
        goto LABEL_104;
      }

      __break(1u);
LABEL_103:
      _CFIndirectTaggedPointerStringGetContents();
      v71 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v72)
      {
        [(__CFString *)v63 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v65 = v137;
        v67 = v138;
        goto LABEL_109;
      }

LABEL_104:
      v65 = v71;
      v67 = v72;

      goto LABEL_109;
    }

LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

LABEL_95:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {

LABEL_99:
    v65 = 0;
    v67 = 0xE000000000000000;
    goto LABEL_109;
  }

  v68 = v63;
  v69 = String.init(_nativeStorage:)();
  if (v70)
  {
    v65 = v69;
    v67 = v70;

    goto LABEL_109;
  }

  if (![(__CFString *)v68 length])
  {

    goto LABEL_99;
  }

  v65 = String.init(_cocoaString:)();
  v67 = v73;
LABEL_109:
  v74 = v47;
  v75 = v74;
  if (!v16)
  {
    goto LABEL_114;
  }

  v76 = _objc_getTaggedPointerTag(v74);
  if (!v76)
  {
    goto LABEL_122;
  }

  if (v76 == 22)
  {
    result = [v75 UTF8String];
    if (result)
    {
      v83 = String.init(utf8String:)(result);
      if (v84)
      {
LABEL_123:
        v77 = v83;
        v79 = v84;

        goto LABEL_128;
      }

      __break(1u);
LABEL_122:
      _CFIndirectTaggedPointerStringGetContents();
      v83 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v84)
      {
        [v75 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v77 = v137;
        v79 = v138;
        goto LABEL_128;
      }

      goto LABEL_123;
    }

LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  if (v76 != 2)
  {
LABEL_114:
    LOBYTE(v137) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v80 = v75;
      v81 = String.init(_nativeStorage:)();
      if (v82)
      {
        v77 = v81;
        v79 = v82;

        goto LABEL_128;
      }

      if ([v80 length])
      {
        v77 = String.init(_cocoaString:)();
        v79 = v85;
        goto LABEL_128;
      }
    }

    v77 = 0;
    v79 = 0xE000000000000000;
    goto LABEL_128;
  }

  MEMORY[0x1EEE9AC00](v76);
  v77 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v79 = v78;

LABEL_128:
  if (v65 == v77 && v67 == v79)
  {

    goto LABEL_132;
  }

  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v86)
  {
    goto LABEL_132;
  }

  v87 = String._bridgeToObjectiveCImpl()();
  v88 = _objc_isTaggedPointer(v87);
  v89 = v87;
  v90 = v89;
  if (v88)
  {
    v91 = _objc_getTaggedPointerTag(v89);
    if (!v91)
    {
LABEL_146:
      _CFIndirectTaggedPointerStringGetContents();
      v96 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v97)
      {
        goto LABEL_141;
      }

      [v90 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v92 = v137;
      v94 = v138;
      goto LABEL_152;
    }

    if (v91 != 22)
    {
      if (v91 == 2)
      {
        MEMORY[0x1EEE9AC00](v91);
        v92 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v94 = v93;
        swift_unknownObjectRelease();
        goto LABEL_152;
      }

      goto LABEL_139;
    }

    result = [v90 UTF8String];
    if (result)
    {
      v96 = String.init(utf8String:)(result);
      if (v97)
      {
        goto LABEL_141;
      }

      __break(1u);
      goto LABEL_146;
    }

LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

LABEL_139:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {
    goto LABEL_142;
  }

  v95 = v90;
  v96 = String.init(_nativeStorage:)();
  if (v97)
  {
LABEL_141:
    v92 = v96;
    v94 = v97;
    swift_unknownObjectRelease();
    goto LABEL_152;
  }

  if ([v95 length])
  {
    v92 = String.init(_cocoaString:)();
    v94 = v98;
  }

  else
  {
LABEL_142:
    swift_unknownObjectRelease();
    v92 = 0;
    v94 = 0xE000000000000000;
  }

LABEL_152:
  v99 = v75;
  v100 = v99;
  if (v16)
  {
    v101 = _objc_getTaggedPointerTag(v99);
    if (!v101)
    {
      goto LABEL_165;
    }

    if (v101 != 22)
    {
      if (v101 == 2)
      {
        MEMORY[0x1EEE9AC00](v101);
        v102 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v104 = v103;

        goto LABEL_171;
      }

      goto LABEL_157;
    }

    result = [v100 UTF8String];
    if (result)
    {
      v108 = String.init(utf8String:)(result);
      if (v109)
      {
        goto LABEL_166;
      }

      __break(1u);
LABEL_165:
      _CFIndirectTaggedPointerStringGetContents();
      v108 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v109)
      {
        [v100 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v102 = v137;
        v104 = v138;
        goto LABEL_171;
      }

LABEL_166:
      v102 = v108;
      v104 = v109;

      goto LABEL_171;
    }

LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

LABEL_157:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {

LABEL_161:
    v102 = 0;
    v104 = 0xE000000000000000;
    goto LABEL_171;
  }

  v105 = v100;
  v106 = String.init(_nativeStorage:)();
  if (v107)
  {
    v102 = v106;
    v104 = v107;

    goto LABEL_171;
  }

  if (![v105 length])
  {

    goto LABEL_161;
  }

  v102 = String.init(_cocoaString:)();
  v104 = v110;
LABEL_171:
  if (v92 == v102 && v94 == v104)
  {
    swift_unknownObjectRelease();
    goto LABEL_174;
  }

  v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if (v111)
  {
    goto LABEL_176;
  }

  v112 = _objc_isTaggedPointer(@"NSFileProtectionCompleteUntilFirstUserAuthentication");
  v113 = @"NSFileProtectionCompleteUntilFirstUserAuthentication";
  v114 = v113;
  if (!v112)
  {
    goto LABEL_182;
  }

  v115 = _objc_getTaggedPointerTag(v113);
  if (!v115)
  {
    goto LABEL_189;
  }

  if (v115 != 22)
  {
    if (v115 == 2)
    {
      MEMORY[0x1EEE9AC00](v115);
      v116 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v118 = v117;

      goto LABEL_195;
    }

LABEL_182:
    if (__CFStringIsCF())
    {
      v116 = 0;

      v118 = 0xE000000000000000;
    }

    else
    {
      v119 = v114;
      v120 = String.init(_nativeStorage:)();
      if (v121)
      {
        v116 = v120;
        v118 = v121;
      }

      else if ([(__CFString *)v119 length])
      {
        v116 = String.init(_cocoaString:)();
        v118 = v124;
      }

      else
      {

        v116 = 0;
        v118 = 0xE000000000000000;
      }
    }

LABEL_195:
    if (v116 != static String._unconditionallyBridgeFromObjectiveC(_:)(a1) || v118 != v125)
    {
      v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v126 & 1) == 0)
      {
        v127 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSFileProtectionNone");
        v129 = v128;
        if (v127 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v129 == v130)
        {
        }

        else
        {
          v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v131 & 1) == 0)
          {
            v132 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSFileProtectionCompleteWhenUserInactive");
            v134 = v133;
            if (v132 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v134 == v135)
            {

              v30 = 0;
              v31 = 7;
            }

            else
            {
              v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v30 = v136 ^ 1;
              v31 = 7;
              if ((v136 & 1) == 0)
              {
                v31 = 0;
              }
            }

            return (v31 | ((v30 & 1) << 32));
          }
        }

        v30 = 0;
        v31 = 4;
        return (v31 | ((v30 & 1) << 32));
      }

LABEL_176:
      v30 = 0;
      v31 = 3;
      return (v31 | ((v30 & 1) << 32));
    }

LABEL_174:

    goto LABEL_176;
  }

  result = [(__CFString *)v114 UTF8String];
  if (result)
  {
    v122 = String.init(utf8String:)(result);
    if (v123)
    {
LABEL_190:
      v116 = v122;
      v118 = v123;

      goto LABEL_195;
    }

    __break(1u);
LABEL_189:
    _CFIndirectTaggedPointerStringGetContents();
    v122 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v123)
    {
      [(__CFString *)v114 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v116 = v137;
      v118 = v138;
      goto LABEL_195;
    }

    goto LABEL_190;
  }

LABEL_217:
  __break(1u);
  return result;
}

uint64_t _ss6ResultOySo4statV10Foundation10CocoaErrorVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void outlined consume of Result<stat, CocoaError>(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
  }
}

uint64_t getter of statAtPath #1 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v160 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 128);
  v11 = *(a1 + 96);
  v146 = *(a1 + 112);
  v147 = v10;
  v12 = *(a1 + 128);
  v148 = *(a1 + 144);
  v13 = *(a1 + 64);
  v14 = *(a1 + 32);
  v142 = *(a1 + 48);
  v143 = v13;
  v15 = *(a1 + 64);
  v16 = *(a1 + 96);
  v144 = *(a1 + 80);
  v145 = v16;
  v17 = *(a1 + 32);
  v141[0] = *(a1 + 16);
  v141[1] = v17;
  v156 = v146;
  v157 = v12;
  v158 = *(a1 + 144);
  v152 = v142;
  v153 = v15;
  v154 = v144;
  v155 = v11;
  v149 = *(a1 + 160);
  v159 = *(a1 + 160);
  v150 = v141[0];
  v151 = v14;
  if (_ss6ResultOySo4statV10Foundation10CocoaErrorVGSgWOg(&v150) != 1)
  {
    v21 = v157;
    *(a5 + 96) = v156;
    *(a5 + 112) = v21;
    *(a5 + 128) = v158;
    *(a5 + 144) = v159;
    v22 = v153;
    *(a5 + 32) = v152;
    *(a5 + 48) = v22;
    v23 = v155;
    *(a5 + 64) = v154;
    *(a5 + 80) = v23;
    v24 = v150;
    v25 = v151;
LABEL_139:
    *a5 = v24;
    *(a5 + 16) = v25;
    return outlined init with copy of FloatingPointRoundingRule?(v141, &v131, &_ss6ResultOySo4statV10Foundation10CocoaErrorVGSgMd);
  }

  memset(&v126, 0, sizeof(v126));
  if (!lstat(a2, &v126))
  {
    v127 = v126;
    _sSo4statVSgWOi_(&v127);
    v129 = v127;
    v130 = v128;
    _NSBundleDeallocatingImmortalBundle(&v129, v26);
    v27 = *(a1 + 128);
    v137 = *(a1 + 112);
    v138 = v27;
    v139 = *(a1 + 144);
    v140 = *(a1 + 160);
    v28 = *(a1 + 64);
    v133 = *(a1 + 48);
    v134 = v28;
    v29 = *(a1 + 96);
    v135 = *(a1 + 80);
    v136 = v29;
    v30 = *(a1 + 32);
    v131 = *(a1 + 16);
    v132 = v30;
    v31 = *&v129.st_blksize;
    *(a1 + 112) = *&v129.st_size;
    *(a1 + 128) = v31;
    *(a1 + 144) = *v129.st_qspare;
    *(a1 + 160) = v130;
    st_mtimespec = v129.st_mtimespec;
    *(a1 + 48) = v129.st_atimespec;
    *(a1 + 64) = st_mtimespec;
    st_birthtimespec = v129.st_birthtimespec;
    *(a1 + 80) = v129.st_ctimespec;
    *(a1 + 96) = st_birthtimespec;
    v34 = *&v129.st_uid;
    *(a1 + 16) = *&v129.st_dev;
    *(a1 + 32) = v34;
LABEL_138:
    outlined destroy of TermOfAddress?(&v131, &_ss6ResultOySo4statV10Foundation10CocoaErrorVGSgMd);
    v116 = *&v127.st_blksize;
    *(a5 + 96) = *&v127.st_size;
    *(a5 + 112) = v116;
    *(a5 + 128) = *v127.st_qspare;
    *(a5 + 144) = v128;
    v117 = v127.st_mtimespec;
    *(a5 + 32) = v127.st_atimespec;
    *(a5 + 48) = v117;
    v118 = v127.st_birthtimespec;
    *(a5 + 64) = v127.st_ctimespec;
    *(a5 + 80) = v118;
    v24 = *&v127.st_dev;
    v25 = *&v127.st_uid;
    goto LABEL_139;
  }

  v18 = MEMORY[0x1865CA7A0]();
  LODWORD(v19) = v18;
  if (v18 <= 27)
  {
    if (v18 > 12)
    {
      if (v18 != 13)
      {
        if (v18 == 17)
        {
          v35 = 516;
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if (v18 != 1)
    {
      if (v18 == 2)
      {
        v35 = 4;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v35 = 513;
    goto LABEL_25;
  }

  if (v18 <= 62)
  {
    if (v18 != 28)
    {
      if (v18 == 30)
      {
        v35 = 642;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_22:
    v35 = 640;
    goto LABEL_25;
  }

  switch(v18)
  {
    case '?':
      v35 = 514;
      goto LABEL_25;
    case 'E':
      goto LABEL_22;
    case 'f':
      v125 = 0;
      v20 = 512;
      goto LABEL_125;
  }

LABEL_24:
  v35 = 512;
LABEL_25:
  v121 = v35;
  v122 = a3;
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    v19 = @"NSPOSIXErrorDomain";
    isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v37 = @"NSPOSIXErrorDomain";
    v38 = v37;
    v124 = isTaggedPointer;
    if (!isTaggedPointer)
    {
      goto LABEL_31;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v37);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_55;
        }

LABEL_31:
        LOBYTE(v129.st_dev) = 0;
        *&v131 = 0;
        LOBYTE(v127.st_dev) = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          if (!v131)
          {
LABEL_52:

            goto LABEL_55;
          }

          if (v127.st_dev)
          {
            if (LOBYTE(v129.st_dev) != 1)
            {
              IsCF = [(__CFString *)v38 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v48 = HIBYTE(v47) & 0xF;
            if ((v47 & 0x2000000000000000) == 0)
            {
              v48 = v46 & 0xFFFFFFFFFFFFLL;
            }

            if (v48)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          v41 = v38;
          String.init(_nativeStorage:)();
          if (v42 || (*&v131 = [(__CFString *)v41 length], !v131))
          {

            goto LABEL_55;
          }
        }

        String.init(_cocoaString:)();
LABEL_55:
        v49 = POSIXErrorCode.rawValue.getter();
        v50 = objc_allocWithZone(NSError);
        v51 = String._bridgeToObjectiveCImpl()();

        v125 = [v50 initWithDomain:v51 code:v49 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v52 = [v125 domain];
        v123 = a4;
        if (!v52)
        {
          goto LABEL_67;
        }

        v53 = v52;
        v54 = _objc_isTaggedPointer(v52);
        v55 = v53;
        v19 = v55;
        if ((v54 & 1) == 0)
        {
LABEL_61:
          LOBYTE(v129.st_dev) = 0;
          *&v131 = 0;
          LOBYTE(v127.st_dev) = 0;
          v60 = __CFStringIsCF();
          if (v60)
          {
            if (v131)
            {
              if (v127.st_dev)
              {
                if (LOBYTE(v129.st_dev) != 1)
                {
                  v60 = [(__CFString *)v19 lengthOfBytesUsingEncoding:4];
                }

                MEMORY[0x1EEE9AC00](v60);
                v67 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v59 = v68;
                v69 = HIBYTE(v68) & 0xF;
                if ((v68 & 0x2000000000000000) == 0)
                {
                  v69 = v67 & 0xFFFFFFFFFFFFLL;
                }

                if (v69)
                {
                  v57 = v67;
                  goto LABEL_73;
                }
              }

LABEL_86:
              v57 = String.init(_cocoaString:)();
              v59 = v70;
              goto LABEL_87;
            }
          }

          else
          {
            v61 = v19;
            v62 = String.init(_nativeStorage:)();
            if (v63)
            {
              v57 = v62;
              v59 = v63;

              goto LABEL_88;
            }

            *&v131 = [(__CFString *)v61 length];
            if (v131)
            {
              goto LABEL_86;
            }
          }

LABEL_67:
          v57 = 0;
          v59 = 0xE000000000000000;
          goto LABEL_88;
        }

        v56 = _objc_getTaggedPointerTag(v55);
        if (v56)
        {
          if (v56 != 22)
          {
            if (v56 == 2)
            {
              MEMORY[0x1EEE9AC00](v56);
              v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v59 = v58;

LABEL_88:
              v71 = v38;
              v19 = v71;
              if (!v124)
              {
                goto LABEL_93;
              }

              v72 = _objc_getTaggedPointerTag(v71);
              if (!v72)
              {
                goto LABEL_104;
              }

              if (v72 != 22)
              {
                if (v72 == 2)
                {
                  v73 = v59;
                  v74 = v57;
                  MEMORY[0x1EEE9AC00](v72);
                  v75 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  st_ino = v76;

LABEL_98:
                  v57 = v74;
                  v59 = v73;
LABEL_100:
                  a4 = v123;
                  goto LABEL_120;
                }

LABEL_93:
                LOBYTE(v129.st_dev) = 0;
                *&v131 = 0;
                LOBYTE(v127.st_dev) = 0;
                v78 = __CFStringIsCF();
                if (v78)
                {
                  v75 = v131;
                  if (!v131)
                  {

                    st_ino = 0xE000000000000000;
                    goto LABEL_100;
                  }

                  if (v127.st_dev)
                  {
                    if (LOBYTE(v129.st_dev) != 1)
                    {
                      v78 = [(__CFString *)v19 lengthOfBytesUsingEncoding:4];
                    }

                    MEMORY[0x1EEE9AC00](v78);
                    v85 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    st_ino = v86;
                    v87 = HIBYTE(v86) & 0xF;
                    if ((v86 & 0x2000000000000000) == 0)
                    {
                      v87 = v85 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v87)
                    {
                      v75 = v85;

                      goto LABEL_120;
                    }
                  }
                }

                else
                {
                  v73 = v59;
                  v74 = v57;
                  v79 = v19;
                  v80 = String.init(_nativeStorage:)();
                  if (v81)
                  {
                    v75 = v80;
                    st_ino = v81;

                    goto LABEL_98;
                  }

                  *&v131 = [(__CFString *)v79 length];
                  if (!v131)
                  {

                    v75 = 0;
                    st_ino = 0xE000000000000000;
                    goto LABEL_98;
                  }

                  v57 = v74;
                  v59 = v73;
                  a4 = v123;
                }

                v75 = String.init(_cocoaString:)();
                st_ino = v88;
LABEL_120:
                if (v57 == v75 && v59 == st_ino)
                {
                }

                else
                {
                  v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v89 & 1) == 0)
                  {
                    __break(1u);
                  }
                }

                v20 = v121;
                a3 = v122;
LABEL_125:

                if (_foundation_swift_url_feature_enabled())
                {

                  v90 = specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a3, a4);
                  v92 = v91;

                  LOBYTE(v129.st_dev) = 3;
                  type metadata accessor for _SwiftURL();
                  v131 = 0uLL;
                  swift_allocObject();
                  _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v90, v92, 0, &v129, &v131);
                  v93 = _SwiftURL.convertingFileReference()();
                  v95 = v94;
                }

                else
                {
                  v96 = (specialized BidirectionalCollection.last.getter(a3, a4) & 0x1FF) == 47;
                  objc_allocWithZone(type metadata accessor for _BridgedURL());

                  v97 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a3, a4, v96);
                  if (!v97)
                  {

                    v99 = String._bridgeToObjectiveCImpl()();
                    v101 = v125;
                    if (v125)
                    {
                      goto LABEL_131;
                    }

                    goto LABEL_134;
                  }

                  v93 = _BridgedURL.convertingFileReference()();
                  v95 = v98;
                }

                v99 = String._bridgeToObjectiveCImpl()();
                if (v93)
                {
                  ObjectType = swift_getObjectType();
                  v97 = (*(v95 + 432))(ObjectType, v95);
                  swift_unknownObjectRelease();
                  v101 = v125;
                  if (v125)
                  {
LABEL_131:
                    *&v131 = v101;
                    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                    v101 = v101;
                    v102 = _getErrorEmbeddedNSError<A>(_:)();

                    if (v102)
                    {
                    }

                    else
                    {
                      swift_allocError();
                      *v104 = v101;
                    }

                    v103 = _swift_stdlib_bridgeErrorToNSError();
                    goto LABEL_137;
                  }
                }

                else
                {
                  v97 = 0;
                  v101 = v125;
                  if (v125)
                  {
                    goto LABEL_131;
                  }
                }

LABEL_134:
                v103 = 0;
LABEL_137:
                v105 = [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                swift_unknownObjectRelease();

                *&v127.st_dev = v105;
                _ss6ResultOySo4statV10Foundation10CocoaErrorVGWOi0_(&v127);
                v129 = v127;
                v130 = v128;
                _NSBundleDeallocatingImmortalBundle(&v129, v106);
                v107 = *(a1 + 128);
                v137 = *(a1 + 112);
                v138 = v107;
                v139 = *(a1 + 144);
                v140 = *(a1 + 160);
                v108 = *(a1 + 64);
                v133 = *(a1 + 48);
                v134 = v108;
                v109 = *(a1 + 96);
                v135 = *(a1 + 80);
                v136 = v109;
                v110 = *(a1 + 32);
                v131 = *(a1 + 16);
                v132 = v110;
                v111 = *&v129.st_blksize;
                *(a1 + 112) = *&v129.st_size;
                *(a1 + 128) = v111;
                *(a1 + 144) = *v129.st_qspare;
                *(a1 + 160) = v130;
                v112 = v129.st_mtimespec;
                *(a1 + 48) = v129.st_atimespec;
                *(a1 + 64) = v112;
                v113 = v129.st_birthtimespec;
                *(a1 + 80) = v129.st_ctimespec;
                *(a1 + 96) = v113;
                v114 = *&v129.st_uid;
                *(a1 + 16) = *&v129.st_dev;
                *(a1 + 32) = v114;
                v115 = v105;
                goto LABEL_138;
              }

              v82 = [(__CFString *)v19 UTF8String];
              if (v82)
              {
                v83 = String.init(utf8String:)(v82);
                if (v84)
                {
                  goto LABEL_105;
                }

                __break(1u);
LABEL_104:
                LOWORD(v127.st_dev) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v83 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v84)
                {
                  [(__CFString *)v19 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  st_ino = v129.st_ino;
                  v75 = *&v129.st_dev;
                  goto LABEL_120;
                }

LABEL_105:
                v75 = v83;
                st_ino = v84;

                goto LABEL_120;
              }

              goto LABEL_144;
            }

            goto LABEL_61;
          }

          v64 = [(__CFString *)v19 UTF8String];
          if (!v64)
          {
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          v65 = String.init(utf8String:)(v64);
          if (v66)
          {
LABEL_72:
            v57 = v65;
            v59 = v66;
LABEL_73:

LABEL_87:
            goto LABEL_88;
          }

          __break(1u);
        }

        LOWORD(v127.st_dev) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v65 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v66)
        {
          [(__CFString *)v19 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v59 = v129.st_ino;
          v57 = *&v129.st_dev;
          goto LABEL_87;
        }

        goto LABEL_72;
      }

      v43 = [(__CFString *)v38 UTF8String];
      if (!v43)
      {
        __break(1u);
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      String.init(utf8String:)(v43);
      if (v44)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    LOWORD(v127.st_dev) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v45)
    {
      [(__CFString *)v38 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_55;
    }

    goto LABEL_52;
  }

LABEL_146:
  *&v131 = 0;
  *(&v131 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  *&v131 = 0xD000000000000014;
  *(&v131 + 1) = 0x80000001814813E0;
  v129.st_dev = v19;
  v120 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v120);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized static _FileManagerImpl._setFileProtectionValueForPath(_:_:newValue:)(unint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v155 = *MEMORY[0x1E69E9840];
  result = specialized static _FileManagerImpl._fileProtectionValueForPath(_:)(a3);
  if ((result & 0x100000000) != 0 || result != a4)
  {
    v9 = open(_:_:)();
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      v11 = 0;
      goto LABEL_5;
    }

    if (MEMORY[0x1865CA7A0]() == 21 && (v12 = opendir(a3)) != 0)
    {
      v11 = v12;
      v13 = dirfd(v12);
      if ((v13 & 0x80000000) == 0)
      {
        v10 = v13;
LABEL_5:
        if (!MEMORY[0x1865CA7C0](v10, 64, a4))
        {
          goto LABEL_9;
        }

        if (MEMORY[0x1865CA7A0]() == 45)
        {
          bzero(&v154, 0x878uLL);
          if (fstatfs(v10, &v154) || (v154.f_flags & 0x80) == 0)
          {
LABEL_9:
            if (!v11)
            {
              return close(v10);
            }

            goto LABEL_154;
          }

          v148 = v11;
          v22 = 45;
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_235;
          }

          LODWORD(v15) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v23 = @"NSPOSIXErrorDomain";
          v24 = v23;
          v147 = a1;
          if (!v15)
          {
LABEL_57:
            LOBYTE(v149) = 0;
            v152 = 0;
            LOBYTE(v150) = 0;
            v151 = 0;
            if (!__CFStringIsCF())
            {
              v43 = v24;
              String.init(_nativeStorage:)();
              if (!v44 && (v152 = [(__CFString *)v43 length]) != 0)
              {
                String.init(_cocoaString:)();
              }

              else
              {
              }

              goto LABEL_211;
            }

            goto LABEL_58;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v23);
          if (!TaggedPointerTag)
          {
            goto LABEL_94;
          }

          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_211;
            }

            goto LABEL_57;
          }

          v45 = [(__CFString *)v24 UTF8String];
          if (v45)
          {
            String.init(utf8String:)(v45);
            if (v46)
            {
              goto LABEL_58;
            }

            __break(1u);
LABEL_94:
            v150 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v47)
            {
              [(__CFString *)v24 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
LABEL_211:
              v121 = POSIXErrorCode.rawValue.getter();
              v122 = objc_allocWithZone(NSError);
              v123 = String._bridgeToObjectiveCImpl()();

              v124 = [v122 initWithDomain:v123 code:v121 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v125 = [v124 domain];
              v126 = static String._unconditionallyBridgeFromObjectiveC(_:)(v125);
              v128 = v127;

              if (v126 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v128 == v129)
              {

                v130 = v147;
                goto LABEL_215;
              }

              v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v130 = v147;
              if (v131)
              {
LABEL_215:

                URL.init(_fileManagerFailableFileURLWithPath:)(v130, a2, &v152);

                v132 = v152;
                v133 = v153;
                v134 = String._bridgeToObjectiveCImpl()();
                if (v132)
                {
                  ObjectType = swift_getObjectType();
                  v136 = (*(v133 + 432))(ObjectType, v133);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v136 = 0;
                }

                v149 = v124;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v137 = v124;
                v138 = _getErrorEmbeddedNSError<A>(_:)();

                if (v138)
                {
                }

                else
                {
                  swift_allocError();
                  *v139 = v137;
                }

                v140 = objc_opt_self();
                [v140 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                swift_willThrow();
                result = v148;
                if (!v148)
                {
                  return close(v10);
                }

                return closedir(result);
              }

LABEL_226:
              __break(1u);
            }

LABEL_58:

            goto LABEL_211;
          }

          goto LABEL_232;
        }

        v17 = MEMORY[0x1865CA7A0]();
        LODWORD(v15) = v17;
        if (v17 > 26)
        {
          if (v17 == 27)
          {
            v18 = 263;
            goto LABEL_47;
          }

          if (v17 != 63)
          {
            if (v17 == 102)
            {
              v19 = 0;
              v146 = 256;
              goto LABEL_145;
            }

LABEL_44:
            v18 = 256;
            goto LABEL_47;
          }

          v18 = 258;
        }

        else
        {
          if (v17 == 1)
          {
LABEL_26:
            v18 = 257;
            goto LABEL_47;
          }

          if (v17 != 2)
          {
            if (v17 == 13)
            {
              goto LABEL_26;
            }

            goto LABEL_44;
          }

          v18 = 260;
        }

LABEL_47:
        v148 = v11;
        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
        {
          LODWORD(v15) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v145 = @"NSPOSIXErrorDomain";
          v26 = @"NSPOSIXErrorDomain";
          v27 = v26;
          v146 = v18;
          v147 = a1;
          if (!v15)
          {
LABEL_53:
            LOBYTE(v152) = 0;
            *&v154.f_bsize = 0;
            LOBYTE(v149) = 0;
            LOBYTE(v150) = 0;
            if (!__CFStringIsCF())
            {
              v29 = v27;
              String.init(_nativeStorage:)();
              if (!v30 && (*&v154.f_bsize = [(__CFString *)v29 length]) != 0)
              {
                String.init(_cocoaString:)();
              }

              else
              {
              }

              goto LABEL_97;
            }

            goto LABEL_54;
          }

          v28 = _objc_getTaggedPointerTag(v26);
          if (!v28)
          {
LABEL_62:
            LOWORD(v149) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v33)
            {
              [(__CFString *)v27 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_97;
            }

            goto LABEL_54;
          }

          if (v28 != 22)
          {
            if (v28 == 2)
            {
              MEMORY[0x1EEE9AC00](v28);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_97:
              v48 = POSIXErrorCode.rawValue.getter();
              v49 = objc_allocWithZone(NSError);
              v50 = String._bridgeToObjectiveCImpl()();

              v19 = [v49 initWithDomain:v50 code:v48 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v51 = [v19 domain];
              if (!v51)
              {
                v56 = 0;
                v58 = 0xE000000000000000;
                a1 = v147;
                goto LABEL_140;
              }

              v15 = v51;
              isTaggedPointer = _objc_isTaggedPointer(v51);
              v53 = v15;
              v54 = v53;
              a1 = v147;
              if ((isTaggedPointer & 1) == 0)
              {
                goto LABEL_103;
              }

              v55 = _objc_getTaggedPointerTag(v53);
              if (!v55)
              {
                goto LABEL_111;
              }

              if (v55 != 22)
              {
                if (v55 == 2)
                {
                  MEMORY[0x1EEE9AC00](v55);
                  v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v58 = v57;

                  goto LABEL_140;
                }

LABEL_103:
                LOBYTE(v152) = 0;
                *&v154.f_bsize = 0;
                LOBYTE(v149) = 0;
                LOBYTE(v150) = 0;
                if (__CFStringIsCF())
                {
                  v56 = *&v154.f_bsize;

                  v58 = 0xE000000000000000;
                }

                else
                {
                  v59 = v54;
                  v60 = String.init(_nativeStorage:)();
                  if (v61)
                  {
                    v56 = v60;
                    v58 = v61;
                  }

                  else
                  {
                    *&v154.f_bsize = [(__CFString *)v59 length];
                    if (*&v154.f_bsize)
                    {
                      v56 = String.init(_cocoaString:)();
                      v58 = v81;
                    }

                    else
                    {

                      v56 = 0;
                      v58 = 0xE000000000000000;
                    }
                  }

                  a1 = v147;
                }

                goto LABEL_140;
              }

              v62 = [(__CFString *)v54 UTF8String];
              if (v62)
              {
                v63 = String.init(utf8String:)(v62);
                if (v64)
                {
                  goto LABEL_112;
                }

                __break(1u);
LABEL_111:
                LOWORD(v149) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v64)
                {
                  [(__CFString *)v54 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v56 = v152;
                  v58 = v153;

LABEL_140:
                  if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)(v145) && v58 == v82)
                  {

LABEL_144:
                    v11 = v148;
LABEL_145:

                    URL.init(_fileManagerFailableFileURLWithPath:)(a1, a2, &v154);

                    v84 = *&v154.f_bsize;
                    f_blocks = v154.f_blocks;
                    v86 = String._bridgeToObjectiveCImpl()();
                    if (v84)
                    {
                      v87 = swift_getObjectType();
                      v88 = (*(f_blocks + 432))(v87, f_blocks);
                      swift_unknownObjectRelease();
                      if (v19)
                      {
LABEL_147:
                        v152 = v19;
                        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                        v19 = v19;
                        v89 = _getErrorEmbeddedNSError<A>(_:)();

                        if (v89)
                        {
                        }

                        else
                        {
                          swift_allocError();
                          *v91 = v19;
                        }

                        v90 = _swift_stdlib_bridgeErrorToNSError();
LABEL_153:
                        [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                        swift_unknownObjectRelease();

                        swift_willThrow();
                        if (!v11)
                        {
                          return close(v10);
                        }

                        goto LABEL_154;
                      }
                    }

                    else
                    {
                      v88 = 0;
                      if (v19)
                      {
                        goto LABEL_147;
                      }
                    }

                    v90 = 0;
                    goto LABEL_153;
                  }

                  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v83)
                  {
                    goto LABEL_144;
                  }

                  __break(1u);
LABEL_225:
                  __break(1u);
                  goto LABEL_226;
                }

LABEL_112:
                v56 = v63;
                v58 = v64;

                goto LABEL_140;
              }

              goto LABEL_230;
            }

            goto LABEL_53;
          }

          v31 = [(__CFString *)v27 UTF8String];
          if (v31)
          {
            String.init(utf8String:)(v31);
            if (v32)
            {
LABEL_54:

              goto LABEL_97;
            }

            __break(1u);
            goto LABEL_62;
          }

          __break(1u);
          goto LABEL_228;
        }

LABEL_233:
        *&v154.f_bsize = 0;
        v154.f_blocks = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        *&v154.f_bsize = 0xD000000000000014;
        v154.f_blocks = 0x80000001814813E0;
        LODWORD(v152) = v15;
        v141 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v142;
        MEMORY[0x1865CB0E0](v141);

        while (1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_235:
          v152 = 0;
          v153 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v152 = 0xD000000000000014;
          v153 = 0x80000001814813E0;
          LODWORD(v149) = v22;
          v143 = dispatch thunk of CustomStringConvertible.description.getter();
          v22 = v144;
          MEMORY[0x1865CB0E0](v143);
        }
      }

      if (MEMORY[0x1865CA7A0]() == 13)
      {
LABEL_154:
        result = v11;
        return closedir(result);
      }
    }

    else
    {
      result = MEMORY[0x1865CA7A0]();
      if (result == 13)
      {
        return result;
      }

      v11 = 0;
    }

    v14 = MEMORY[0x1865CA7A0]();
    LODWORD(v15) = v14;
    v148 = v11;
    if (v14 > 26)
    {
      if (v14 == 27)
      {
        v16 = 263;
        goto LABEL_68;
      }

      if (v14 != 63)
      {
        if (v14 == 102)
        {
          v20 = 0;
          v21 = 256;
          goto LABEL_200;
        }

LABEL_65:
        v16 = 256;
        goto LABEL_68;
      }

      v16 = 258;
    }

    else
    {
      if (v14 == 1)
      {
LABEL_21:
        v16 = 257;
        goto LABEL_68;
      }

      if (v14 != 2)
      {
        if (v14 == 13)
        {
          goto LABEL_21;
        }

        goto LABEL_65;
      }

      v16 = 260;
    }

LABEL_68:
    v145 = v16;
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
      goto LABEL_233;
    }

    v15 = @"NSPOSIXErrorDomain";
    v34 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v35 = @"NSPOSIXErrorDomain";
    v36 = v35;
    LODWORD(v146) = v34;
    v147 = a1;
    if (v34)
    {
      v37 = _objc_getTaggedPointerTag(v35);
      if (v37)
      {
        if (v37 != 22)
        {
          if (v37 == 2)
          {
            MEMORY[0x1EEE9AC00](v37);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_119;
          }

          goto LABEL_74;
        }

        v40 = [(__CFString *)v36 UTF8String];
        if (!v40)
        {
LABEL_228:
          __break(1u);
          goto LABEL_229;
        }

        String.init(utf8String:)(v40);
        if (v41)
        {
          goto LABEL_75;
        }

        __break(1u);
      }

      LOWORD(v149) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v42)
      {
        goto LABEL_75;
      }

      [(__CFString *)v36 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_119;
    }

LABEL_74:
    LOBYTE(v152) = 0;
    *&v154.f_bsize = 0;
    LOBYTE(v149) = 0;
    LOBYTE(v150) = 0;
    if (__CFStringIsCF())
    {
LABEL_75:

      goto LABEL_119;
    }

    v38 = v36;
    String.init(_nativeStorage:)();
    if (!v39 && (*&v154.f_bsize = [(__CFString *)v38 length]) != 0)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

LABEL_119:
    v65 = POSIXErrorCode.rawValue.getter();
    v66 = objc_allocWithZone(NSError);
    v67 = String._bridgeToObjectiveCImpl()();

    v15 = _NativeDictionary.bridged()();
    v20 = [v66 initWithDomain:v67 code:v65 userInfo:v15];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v68 = [v20 domain];
    if (!v68)
    {
LABEL_129:
      v73 = 0;
      v75 = 0xE000000000000000;
      goto LABEL_159;
    }

    v15 = v68;
    v69 = _objc_isTaggedPointer(v68);
    v70 = v15;
    v71 = v70;
    if ((v69 & 1) == 0)
    {
      goto LABEL_125;
    }

    v72 = _objc_getTaggedPointerTag(v70);
    if (v72)
    {
      if (v72 != 22)
      {
        if (v72 == 2)
        {
          v15 = &v145;
          MEMORY[0x1EEE9AC00](v72);
          v73 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v75 = v74;

          goto LABEL_159;
        }

LABEL_125:
        LOBYTE(v152) = 0;
        *&v154.f_bsize = 0;
        LOBYTE(v149) = 0;
        LOBYTE(v150) = 0;
        if (__CFStringIsCF())
        {
          LODWORD(v15) = v154.f_bsize;

          goto LABEL_129;
        }

        v15 = v71;
        v76 = String.init(_nativeStorage:)();
        if (v77)
        {
          v73 = v76;
          v75 = v77;

          goto LABEL_159;
        }

        *&v154.f_bsize = [(__CFString *)v15 length];
        if (!*&v154.f_bsize)
        {

          goto LABEL_129;
        }

        v73 = String.init(_cocoaString:)();
        v75 = v92;
LABEL_158:

LABEL_159:
        v93 = v36;
        v94 = v93;
        if (!v146)
        {
          goto LABEL_164;
        }

        v95 = _objc_getTaggedPointerTag(v93);
        if (v95)
        {
          if (v95 != 22)
          {
            if (v95 == 2)
            {
              v96 = v73;
              MEMORY[0x1EEE9AC00](v95);
              v97 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v99 = v98;

LABEL_191:
              v73 = v96;
              goto LABEL_195;
            }

LABEL_164:
            LOBYTE(v152) = 0;
            *&v154.f_bsize = 0;
            LOBYTE(v149) = 0;
            LOBYTE(v150) = 0;
            IsCF = __CFStringIsCF();
            if (IsCF)
            {
              if (*&v154.f_bsize)
              {
                if (v150 == 1)
                {
                  if (v152)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v107 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_194;
                }

                if (v149)
                {
                  v96 = v73;
                  if (v152 != 1)
                  {
                    IsCF = [(__CFString *)v94 lengthOfBytesUsingEncoding:4];
                  }

                  MEMORY[0x1EEE9AC00](IsCF);
                  v109 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v99 = v110;
                  v111 = HIBYTE(v110) & 0xF;
                  if ((v110 & 0x2000000000000000) == 0)
                  {
                    v111 = v109 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v111)
                  {
                    v97 = v109;

                    goto LABEL_191;
                  }
                }

LABEL_193:
                v107 = String.init(_cocoaString:)();
LABEL_194:
                v97 = v107;
                v99 = v108;
LABEL_195:
                a1 = v147;
                if (v73 == v97 && v75 == v99)
                {
                }

                else
                {
                  v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v112 & 1) == 0)
                  {
                    goto LABEL_225;
                  }
                }

                v21 = v145;
LABEL_200:

                URL.init(_fileManagerFailableFileURLWithPath:)(a1, a2, &v154);

                v113 = *&v154.f_bsize;
                v114 = v154.f_blocks;
                v115 = String._bridgeToObjectiveCImpl()();
                if (v113)
                {
                  v116 = swift_getObjectType();
                  v117 = (*(v114 + 432))(v116, v114);
                  swift_unknownObjectRelease();
                  if (v20)
                  {
LABEL_202:
                    v152 = v20;
                    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                    v20 = v20;
                    v118 = _getErrorEmbeddedNSError<A>(_:)();

                    if (v118)
                    {
                    }

                    else
                    {
                      swift_allocError();
                      *v120 = v20;
                    }

                    v119 = _swift_stdlib_bridgeErrorToNSError();
LABEL_208:
                    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                    swift_unknownObjectRelease();

                    swift_willThrow();
                    result = v148;
                    if (!v148)
                    {
                      return result;
                    }

                    return closedir(result);
                  }
                }

                else
                {
                  v117 = 0;
                  if (v20)
                  {
                    goto LABEL_202;
                  }
                }

                v119 = 0;
                goto LABEL_208;
              }
            }

            else
            {
              v101 = v94;
              v102 = String.init(_nativeStorage:)();
              if (v103)
              {
                v97 = v102;
                v99 = v103;

                goto LABEL_195;
              }

              *&v154.f_bsize = [(__CFString *)v101 length];
              if (*&v154.f_bsize)
              {
                goto LABEL_193;
              }
            }

            v97 = 0;
            v99 = 0xE000000000000000;
            goto LABEL_195;
          }

          v104 = [(__CFString *)v94 UTF8String];
          if (!v104)
          {
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
            goto LABEL_231;
          }

          v105 = String.init(utf8String:)(v104);
          if (v106)
          {
LABEL_177:
            v97 = v105;
            v99 = v106;

            goto LABEL_195;
          }

          __break(1u);
        }

        LOWORD(v149) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v105 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v106)
        {
          [(__CFString *)v94 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v97 = v152;
          v99 = v153;
          goto LABEL_195;
        }

        goto LABEL_177;
      }

      v78 = [(__CFString *)v71 UTF8String];
      if (!v78)
      {
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

      v79 = String.init(utf8String:)(v78);
      if (v80)
      {
LABEL_134:
        v73 = v79;
        v75 = v80;

        goto LABEL_158;
      }

      __break(1u);
    }

    LOWORD(v149) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v80)
    {
      LODWORD(v15) = [(__CFString *)v71 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v73 = v152;
      v75 = v153;
      goto LABEL_158;
    }

    goto LABEL_134;
  }

  return result;
}

__CFString *one-time initialization function for _catInfoKeys()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeyaGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1812354D0;
  *(v0 + 32) = @"NSFileHFSCreatorCode";
  *(v0 + 40) = @"NSFileHFSTypeCode";
  *(v0 + 48) = @"NSFileBusy";
  *(v0 + 56) = @"NSFileExtensionHidden";
  *(v0 + 64) = @"NSFileCreationDate";
  static _FileManagerImpl._catInfoKeys = v0;
  v1 = @"NSFileHFSCreatorCode";
  v2 = @"NSFileHFSTypeCode";
  v3 = @"NSFileBusy";
  v4 = @"NSFileExtensionHidden";

  return @"NSFileCreationDate";
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

id StringProtocol.removingPercentEncoding.getter()
{
  StringProtocol._ephemeralString.getter();
  v0 = String._bridgeToObjectiveCImpl()();

  v1 = [v0 stringByRemovingPercentEncoding];
  swift_unknownObjectRelease();
  if (!v1)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v1);
  v3 = v1;
  v4 = v3;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v3);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v14 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      [v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v16 = v17;
    }

LABEL_22:

    return v16;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v6;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v8 = v4;
    v9 = String.init(_nativeStorage:)();
    if (v10)
    {
      v11 = v9;

      return v11;
    }

    if (![v8 length])
    {

      return 0;
    }

    v16 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v4 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v12)
    {
      v13 = result;

      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

NSPointerArray *_myersDescent(void *a1, void *a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = [a2 count];
  v7 = [a1 count];
  if (v6 >> 60)
  {
LABEL_59:
    v44 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v45 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v44 userInfo:0];
    CFRelease(v44);
    objc_exception_throw(v45);
  }

  v8 = v7;
  if (v6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v60 = 0;
  if (v6 >= 0x101)
  {
    v12 = _CFCreateArrayStorage();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [a2 getObjects:v12 range:{0, v6, v10}];
  if (v8 >> 60)
  {
    v46 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
    v47 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v46 userInfo:0];
    CFRelease(v46);
    objc_exception_throw(v47);
  }

  if (v8 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v8;
  }

  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = 0;
  v59 = 0;
  if (v8 >= 0x101)
  {
    v17 = _CFCreateArrayStorage();
    v16 = v17;
  }

  [a1 getObjects:v16 range:{0, v8}];
  v18 = [[NSPointerArray alloc] initWithOptions:2];
  v48 = v17;
  v49 = v13;
  v57 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v58 = 0;
  v50 = v8 + v6;
  v51 = v18;
  *v57 = 0;
  v19 = 1;
  do
  {
    if (!v57)
    {
      __assert_rtn("_myersDescent", "NSArray+NSArrayDiffing.m", 48, "prev_v");
    }

    [(NSPointerArray *)v18 addPointer:?];
    v20 = malloc_type_malloc(8 * v58 + 8, 0x100004000313F17uLL);
    if (!v20)
    {
      qword_1EA7BB378 = "Out of memory";
      __break(1u);
      goto LABEL_59;
    }

    v21 = -v58;
    v55 = v20;
    v56 = v21 ^ (v21 >> 63);
    v52 = v19;
    v53 = v16;
    v22 = v16;
    v23 = v19;
    v24 = -v58;
    v54 = -v58;
    do
    {
      if (v24 == v21)
      {
        v25 = v57[v56];
      }

      else
      {
        v26 = 1 - v24;
        if (v24 >= 2)
        {
          v26 = v24 - 2;
        }

        v27 = v57[v26];
        if (v24 == v58 || (v25 = v57[v24 ^ (v24 >> 63)], v27 >= v25))
        {
          v25 = v27 + 1;
        }
      }

      v28 = v25 - v24;
      v29 = v25 - v24 < v8;
      v30 = v25 < v6;
      v31 = v25 >= v6 || v28 >= v8;
      if (v31)
      {
LABEL_35:
        v34 = v24 - 1;
        if (v24 < 1)
        {
          v34 = -v24;
        }

        v20[v34] = v25;
        if (!v30 && !v29)
        {
          free(v20);
          v57 = 0;
          goto LABEL_45;
        }
      }

      else
      {
        v32 = v25 + v23;
        while (((*(a3 + 16))(a3, *&v12[8 * v25], *&v22[8 * v25]) & 1) != 0)
        {
          ++v25;
          v29 = v32 < v8;
          v33 = v32 + 1;
          v30 = v25 < v6;
          if (v25 < v6)
          {
            v31 = v32++ >= v8;
            if (!v31)
            {
              continue;
            }
          }

          v28 = v33 - 1;
          v21 = v54;
          v20 = v55;
          goto LABEL_35;
        }

        v35 = v24 - 1;
        if (v24 < 1)
        {
          v35 = -v24;
        }

        v21 = v54;
        v20 = v55;
        v55[v35] = v25;
        v28 = v32 - 1;
      }

      v24 += 2;
      v23 -= 2;
      v22 -= 16;
    }

    while (v24 <= v58);
    v57 = v20;
LABEL_45:
    v36 = v28 >= v8 && v25 >= v6;
    v18 = v51;
    if (v36)
    {
      break;
    }

    v37 = v58;
    v19 = v52 + 1;
    v16 = v53 + 8;
    ++v58;
  }

  while (v37 != v50);
  v38 = "x >= n && y >= m";
  v39 = 91;
  if (v25 < v6 || (v41 = v48, v40 = v49, v28 < v8))
  {
LABEL_57:
    __assert_rtn("_myersDescent", "NSArray+NSArrayDiffing.m", v39, v38);
  }

  v42 = v57;
  if (v57 && v42 != [(NSPointerArray *)v51 pointerAtIndex:[(NSPointerArray *)v51 count:91]- 1])
  {
    v38 = "v == NULL || v == [result pointerAtIndex:result.count - 1]";
    v39 = 92;
    goto LABEL_57;
  }

  free(v41);
  free(v40);
  return v18;
}

NSUUID __swiftcall UUID._bridgeToObjectiveC()()
{
  v1 = type metadata accessor for __NSConcreteUUID();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR_____NSConcreteUUID__storage] = *v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, a2, type metadata accessor for _LocaleAutoupdating);
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.identifier.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 64))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t one-time initialization function for autoupdatingCurrentNSLocale()
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v1 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v2 = type metadata accessor for _NSSwiftLocale();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____NSSwiftLocale_locale];
  *v4 = inited;
  v4[1] = v1;
  v5 = String._bridgeToObjectiveCImpl()();
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithLocaleIdentifier_, v5);
  result = swift_unknownObjectRelease();
  static LocaleCache.autoupdatingCurrentNSLocale = v6;
  return result;
}

uint64_t convertTextToInteger(const char *a1, uint64_t *a2, int a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  *__error() = 0;
  v6 = strtoll_l(a1, v13, a3, 0);
  if (*__error() != 34)
  {
    if (v13[0] && v13[0] != a1 && !*v13[0])
    {
      *a2 = v6;
      return 292;
    }

    goto LABEL_14;
  }

  v12 = 0;
  *__error() = 0;
  v7 = strtoull_l(a1, &v12, a3, 0);
  v9 = *__error() == 34 || v12 == 0 || v12 == a1;
  if (v9 || *v12)
  {
LABEL_14:
    v10 = [[NSString alloc] initWithCString:a1];
    *a2 = [[NSDecimalNumber alloc] initWithString:v10];

    return 294;
  }

  *a2 = [[NSNumber alloc] initWithUnsignedLongLong:v7];
  return 294;
}

uint64_t specialized static UUID._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  type metadata accessor for __NSConcreteUUID();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR_____NSConcreteUUID__storage);
  }

  else
  {
    v7 = 0uLL;
    [a1 getUUIDBytes_];
    v5 = v7;
  }

  *a2 = v5;
  *(a2 + 16) = 0;
  return 1;
}

uint64_t StringProtocol._asContiguousUTF8Substring(from:)(uint64_t a1)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  if (v1 != MEMORY[0x1E69E6158])
  {
    v6 = *(v4 + 16);
    if (v1 == MEMORY[0x1E69E67B0])
    {
      (v6)(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2, MEMORY[0x1E69E67B0], v5);
      swift_dynamicCast();
      if ((v11[3] & 0x1000000000000000) == 0)
      {
LABEL_8:
        v8 = Substring.subscript.getter();
        goto LABEL_9;
      }
    }

    else
    {
      v6(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v5);
      Substring.init<A>(_:)();
      if ((v7 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_11:

    return 0;
  }

  (*(v4 + 16))(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2, MEMORY[0x1E69E6158], v5);
  swift_dynamicCast();
  if ((v11[1] & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v8 = String.subscript.getter();
LABEL_9:
  v9 = v8;

  return v9;
}

id _BridgedURL.absoluteString.getter(SEL *a1)
{
  result = [*(v1 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) *a1];
  if (result)
  {
    v3 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v5 = v3;
    v6 = v5;
    if (!isTaggedPointer)
    {
LABEL_7:
      if (__CFStringIsCF())
      {

        return 0;
      }

      v9 = v6;
      v10 = String.init(_nativeStorage:)();
      if (v11)
      {
        v12 = v10;

        return v12;
      }

      if (![v9 length])
      {

        return 0;
      }

      v17 = String.init(_cocoaString:)();
      goto LABEL_22;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v5);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        [v6 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v17 = v18;
      }

LABEL_22:

      return v17;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v8;
      }

      goto LABEL_7;
    }

    result = [v6 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v13)
      {
        v14 = result;

        return v14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t static UUID._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  v10 = 0;
  v11 = 1;
  if (!a1)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized static UUID._conditionallyBridgeFromObjectiveC(_:result:)(a1, &v9);
  if (result)
  {
    if ((v11 & 1) == 0)
    {
      v5 = v9;
      v4 = v10;
      v6 = v9 >> 8;
      v7 = v9 >> 16;
      *a2 = v9;
      *(a2 + 1) = v6;
      *(a2 + 2) = v7;
      *(a2 + 3) = BYTE3(v5);
      *(a2 + 4) = BYTE4(v5);
      *(a2 + 5) = BYTE5(v5);
      *(a2 + 6) = BYTE6(v5);
      *(a2 + 7) = HIBYTE(v5);
      *(a2 + 8) = v4;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  _StringGuts.grow(_:)(25);

  type metadata accessor for NSUUID();
  v8 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v8);

  MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
  MEMORY[0x1865CB0E0](1145656661, 0xE400000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static Notification._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v5 = String._bridgeToObjectiveCImpl()();
    v11 = 0u;
    v12 = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *a2 = v5;
    result = outlined assign with take of Any?(&v11, a2 + 8);
    *(a2 + 40) = 0;
    return result;
  }

  v3 = a1;
  v4 = [v3 name];
  if ([v3 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v7 = [v3 userInfo];
  if (v7)
  {
    v8 = v7;
    v10 = 0;
    result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(v7, &v10);
    v9 = v10;
    if (!v10)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v9 = 0;
  }

  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = v4;
  result = outlined assign with take of Any?(&v11, a2 + 8);
  *(a2 + 40) = v9;
  return result;
}

__CFString *_validateKnownUserInfoKeyTypes(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if ([a1 objectForKey:@"NSUnderlyingError"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return @"NSUnderlyingError";
    }
  }

  if ([a1 objectForKey:@"NSLocalizedDescription"] && !_NSIsNSString())
  {
    return @"NSLocalizedDescription";
  }

  if ([a1 objectForKey:@"NSLocalizedFailureReason"] && !_NSIsNSString())
  {
    return @"NSLocalizedFailureReason";
  }

  if ([a1 objectForKey:@"NSLocalizedRecoverySuggestion"] && !_NSIsNSString())
  {
    return @"NSLocalizedRecoverySuggestion";
  }

  v2 = [a1 objectForKey:@"NSLocalizedRecoveryOptions"];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  if (!_NSIsNSArray())
  {
    return @"NSLocalizedRecoveryOptions";
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    v7 = @"NSLocalizedRecoveryOptions";
LABEL_13:
    v8 = 0;
    while (1)
    {
      if (*v45 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (!_NSIsNSString())
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v5)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    if ([a1 objectForKey:@"NSHelpAnchor"] && !_NSIsNSString())
    {
      return @"NSHelpAnchor";
    }

    if ([a1 objectForKey:@"NSDebugDescription"] && !_NSIsNSString())
    {
      return @"NSDebugDescription";
    }

    if ([a1 objectForKey:@"NSStringEncoding"] && !_NSIsNSNumber())
    {
      return @"NSStringEncoding";
    }

    if ([a1 objectForKey:@"NSURL"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return @"NSURL";
      }
    }

    if ([a1 objectForKey:@"NSFilePath"] && !_NSIsNSString())
    {
      return @"NSFilePath";
    }

    if ([a1 objectForKey:@"NSSourceFilePathErrorKey"] && !_NSIsNSString())
    {
      return @"NSSourceFilePathErrorKey";
    }

    if ([a1 objectForKey:@"NSDestinationFilePath"] && !_NSIsNSString())
    {
      return @"NSDestinationFilePath";
    }

    v9 = [a1 objectForKey:@"NSMultipleUnderlyingErrorsKey"];
    if (!v9)
    {
      goto LABEL_43;
    }

    v10 = v9;
    if (!_NSIsNSArray())
    {
      return @"NSMultipleUnderlyingErrorsKey";
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
      v7 = @"NSMultipleUnderlyingErrorsKey";
LABEL_37:
      v14 = 0;
      while (1)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v39 objects:v38 count:16];
          if (v12)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }
    }

    else
    {
LABEL_43:
      v15 = [a1 objectForKey:@"NSDetailedErrors"];
      if (!v15)
      {
        goto LABEL_53;
      }

      v16 = v15;
      if (!_NSIsNSArray())
      {
        return @"NSDetailedErrors";
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v33 count:16];
      if (!v17)
      {
LABEL_53:
        v21 = [a1 objectForKey:@"NSUserStringVariant"];
        if (v21)
        {
          v22 = v21;
          if (_NSIsNSArray())
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v23 = [v22 countByEnumeratingWithState:&v29 objects:v28 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v30;
              v7 = @"NSUserStringVariant";
LABEL_57:
              v26 = 0;
              while (1)
              {
                if (*v30 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                if (!_NSIsNSString())
                {
                  return v7;
                }

                if (v24 == ++v26)
                {
                  v24 = [v22 countByEnumeratingWithState:&v29 objects:v28 count:16];
                  if (v24)
                  {
                    goto LABEL_57;
                  }

                  return 0;
                }
              }
            }
          }

          else if (!_NSIsNSString())
          {
            return @"NSUserStringVariant";
          }
        }

        return 0;
      }

      v18 = v17;
      v19 = *v35;
      v7 = @"NSDetailedErrors";
LABEL_47:
      v20 = 0;
      while (1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v34 objects:v33 count:16];
          if (v18)
          {
            goto LABEL_47;
          }

          goto LABEL_53;
        }
      }
    }
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component()
{
  result = lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component;
  if (!lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component;
  if (!lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
  }

  return result;
}

id StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v31 = String._bridgeToObjectiveCImpl()();

  v7 = String._bridgeToObjectiveCImpl()();

  v8 = String._bridgeToObjectiveCImpl()();

  if ((a6 & 1) == 0 || a3)
  {
    if ((a6 & 1) == 0 || (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), v33 >> 14 >= v34 >> 14))
    {
      v14 = StringProtocol._toUTF16Offsets(_:)();
      if (!__OFSUB__(v15, v14))
      {
        v16 = [v31 stringByReplacingOccurrencesOfString:v7 withString:v8 options:a3 range:{v14, v15 - v14}];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v16)
        {
          isTaggedPointer = _objc_isTaggedPointer(v16);
          v18 = v16;
          v12 = v18;
          if (isTaggedPointer)
          {
            TaggedPointerTag = _objc_getTaggedPointerTag(v18);
            switch(TaggedPointerTag)
            {
              case 0:
                goto LABEL_25;
              case 0x16:
                goto LABEL_32;
              case 2:
LABEL_17:
                MEMORY[0x1EEE9AC00](TaggedPointerTag);
                v19 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                return v19;
            }
          }

          if (__CFStringIsCF())
          {
LABEL_23:

            return 0;
          }

          goto LABEL_21;
        }

        return 0;
      }

      __break(1u);
    }

    __break(1u);
  }

  v9 = [v31 stringByReplacingOccurrencesOfString:v7 withString:v8];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v9)
  {
    return 0;
  }

  v10 = _objc_isTaggedPointer(v9);
  v11 = v9;
  v12 = v11;
  if (!v10)
  {
    goto LABEL_18;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
LABEL_25:
    _CFIndirectTaggedPointerStringGetContents();
    v25 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v27 = v33;
    }

LABEL_37:

    return v27;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (__CFStringIsCF())
    {
      goto LABEL_23;
    }

LABEL_21:
    v21 = v12;
    v22 = String.init(_nativeStorage:)();
    if (v23)
    {
      v24 = v22;

      return v24;
    }

    if (![v21 length])
    {

      return 0;
    }

    v27 = String.init(_cocoaString:)();
    goto LABEL_37;
  }

  result = [v12 UTF8String];
  if (!result)
  {
    __break(1u);
    goto LABEL_41;
  }

  result = String.init(utf8String:)(result);
  if (v28)
  {
LABEL_34:
    v30 = result;

    return v30;
  }

  __break(1u);
LABEL_32:
  result = [v12 UTF8String];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = String.init(utf8String:)(result);
  if (v29)
  {
    goto LABEL_34;
  }

LABEL_42:
  __break(1u);
  return result;
}

void _NSXPCSerializationAddUnsignedInteger(uint64_t a1, uint64_t a2)
{
  _reserveSpace(a1, 1);
  *(*(a1 + 8216) + (*(a1 + 8200))++) = -8;
  _reserveSpace(a1, 8);
  *(*(a1 + 8216) + *(a1 + 8200)) = a2;
  *(a1 + 8200) += 8;
}

char *specialized static NSCalendar._newCalendarWithIdentifier(_:)(void *a1)
{
  v3 = *MEMORY[0x1E695E678];
  v102[0] = a1;
  if (v3 && (v101[0] = v3, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v4 = a1, v5 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v7 = *MEMORY[0x1E695E4D8];
    v102[0] = a1;
    if (v7 && (v101[0] = v7, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v8 = a1, v9 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v9 & 1) != 0))
    {
      v6 = 1;
    }

    else
    {
      v10 = *MEMORY[0x1E695E520];
      v102[0] = a1;
      if (v10 && (v101[0] = v10, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v11 = a1, v12 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v12 & 1) != 0))
      {
        v6 = 2;
      }

      else
      {
        v13 = *MEMORY[0x1E695E680];
        v102[0] = a1;
        if (v13 && (v101[0] = v13, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v14 = a1, v15 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v15 & 1) != 0))
        {
          v6 = 6;
        }

        else
        {
          v16 = *MEMORY[0x1E695E698];
          v102[0] = a1;
          if (v16 && (v101[0] = v16, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v17 = a1, v18 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v18 & 1) != 0))
          {
            v6 = 9;
          }

          else
          {
            v19 = *MEMORY[0x1E695E6A0];
            v102[0] = a1;
            if (v19 && (v101[0] = v19, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v20 = a1, v21 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v21 & 1) != 0))
            {
              v6 = 10;
            }

            else
            {
              v22 = *MEMORY[0x1E695E6B8];
              v102[0] = a1;
              if (v22 && (v101[0] = v22, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v23 = a1, v24 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v24 & 1) != 0))
              {
                v6 = 11;
              }

              else
              {
                v25 = *MEMORY[0x1E695E8C0];
                v102[0] = a1;
                if (v25 && (v101[0] = v25, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v26 = a1, v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v27 & 1) != 0))
                {
                  v6 = 13;
                }

                else
                {
                  v28 = *MEMORY[0x1E695E888];
                  v102[0] = a1;
                  if (v28 && (v101[0] = v28, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v29 = a1, v30 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v30 & 1) != 0))
                  {
                    v6 = 12;
                  }

                  else
                  {
                    v31 = *MEMORY[0x1E695E690];
                    v102[0] = a1;
                    if (v31 && (v101[0] = v31, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v32 = a1, v33 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v33 & 1) != 0))
                    {
                      v6 = 8;
                    }

                    else
                    {
                      v34 = *MEMORY[0x1E695E688];
                      v102[0] = a1;
                      if (v34 && (v101[0] = v34, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v35 = a1, v36 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v36 & 1) != 0))
                      {
                        v6 = 7;
                      }

                      else
                      {
                        v37 = *MEMORY[0x1E695E6A8];
                        v102[0] = a1;
                        if (v37 && (v101[0] = v37, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v38 = a1, v39 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v39 & 1) != 0))
                        {
                          v6 = 14;
                        }

                        else
                        {
                          v40 = *MEMORY[0x1E695E6B0];
                          v102[0] = a1;
                          if (v40 && (v101[0] = v40, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v41 = a1, v42 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v42 & 1) != 0))
                          {
                            v6 = 15;
                          }

                          else
                          {
                            v43 = *MEMORY[0x1E695E508];
                            v102[0] = a1;
                            if (v43 && (v101[0] = v43, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v44 = a1, v45 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v45 & 1) != 0))
                            {
                              v6 = 3;
                            }

                            else
                            {
                              v46 = *MEMORY[0x1E695E518];
                              v102[0] = a1;
                              if (v46 && (v101[0] = v46, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier), v47 = a1, v48 = dispatch thunk of static Equatable.== infix(_:_:)(), v102[0], (v48 & 1) != 0))
                              {
                                v6 = 4;
                              }

                              else
                              {
                                v49 = *MEMORY[0x1E695E510];
                                v102[0] = a1;
                                if (!v49)
                                {
                                  return 0;
                                }

                                v101[0] = v49;
                                type metadata accessor for CFCalendarIdentifier(0);
                                lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier);
                                v50 = a1;
                                v51 = dispatch thunk of static Equatable.== infix(_:_:)();

                                result = 0;
                                if ((v51 & 1) == 0)
                                {
                                  return result;
                                }

                                v6 = 5;
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

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v53 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v54 = *(v53 + 16);
  if (*(v54 + 16) && (v55 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v56 & 1) != 0))
  {
    v96 = *(*(v54 + 56) + 16 * v55);
    v57 = *(*(v54 + 56) + 16 * v55);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v53 + 24));
    if (v57)
    {
LABEL_92:
      v91 = type metadata accessor for _NSSwiftCalendar();
      v92 = objc_allocWithZone(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd);
      v93 = swift_allocObject();
      *(v93 + 32) = 0;
      *(v93 + 16) = v96;
      *&v92[OBJC_IVAR____NSSwiftCalendar__lock] = v93;
      v94 = *MEMORY[0x1E695D850];
      v98.receiver = v92;
      v98.super_class = v91;
      return objc_msgSendSuper2(&v98, sel_initWithCheckedCalendarIdentifier_, v94);
    }

    if (!v6)
    {
      goto LABEL_58;
    }
  }

  else
  {
    os_unfair_lock_unlock((v53 + 24));
    if (!v6)
    {
LABEL_58:
      v58 = type metadata accessor for _CalendarGregorian();
      v59 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v60 = type metadata accessor for _CalendarGregorian;
      goto LABEL_60;
    }
  }

  if (v6 == 7)
  {
    goto LABEL_58;
  }

  v58 = type metadata accessor for _CalendarICU();
  v59 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
  v60 = type metadata accessor for _CalendarICU;
LABEL_60:
  v61 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(v59, v60);
  v103 = v6;
  v102[0] = 0;
  v102[1] = 0;
  v101[0] = 0;
  v101[1] = 0;
  v99 = 0;
  v100 = 1;
  v62 = (*(v61 + 16))(&v103, v102, v101, 0, 1, 0, 1, &v99, v58, v61);
  os_unfair_lock_lock((v53 + 24));
  v63 = *(v53 + 16);
  if (*(v63 + 16))
  {
    v64 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    if (v65)
    {
      v66 = *(*(v63 + 56) + 16 * v64);
LABEL_91:
      v96 = v66;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v53 + 24));
      swift_unknownObjectRelease();
      goto LABEL_92;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = *(v53 + 16);
  v68 = v102[0];
  v69 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  v71 = v68[2];
  v72 = (v70 & 1) == 0;
  v73 = __OFADD__(v71, v72);
  v74 = v71 + v72;
  if (v73)
  {
    __break(1u);
  }

  else
  {
    v1 = v70;
    if (v68[3] < v74)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, isUniquelyReferenced_nonNull_native);
      v75 = v102[0];
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if ((v1 & 1) == (v76 & 1))
      {
        goto LABEL_69;
      }

      v69 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v75 = v68;
LABEL_69:
      if (v1)
      {
LABEL_70:
        v77 = (v75[7] + 16 * v69);
        *v77 = v62;
        v77[1] = v61;
        swift_unknownObjectRelease();
LABEL_90:
        *(v53 + 16) = v75;
        *&v66 = v62;
        *(&v66 + 1) = v61;
        goto LABEL_91;
      }

LABEL_89:
      specialized _NativeDictionary._insert(at:key:value:)(v69, v6, v62, v75, v58, v61);
      goto LABEL_90;
    }
  }

  v95 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v78 = static _DictionaryStorage.copy(original:)();
  v75 = v78;
  if (!v68[2])
  {
LABEL_88:

    v69 = v95;
    if (v1)
    {
      goto LABEL_70;
    }

    goto LABEL_89;
  }

  result = (v78 + 64);
  v79 = (v68 + 8);
  v80 = ((1 << *(v75 + 32)) + 63) >> 6;
  if (v75 != v68 || result >= &v79[8 * v80])
  {
    result = memmove(result, v79, 8 * v80);
  }

  v81 = 0;
  v75[2] = v68[2];
  v82 = 1 << *(v68 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & v68[8];
  v85 = (v82 + 63) >> 6;
  if (v84)
  {
    do
    {
      v86 = __clz(__rbit64(v84));
      v97 = (v84 - 1) & v84;
LABEL_86:
      v89 = v86 | (v81 << 6);
      v90 = *(v68[7] + 16 * v89);
      *(v75[6] + v89) = *(v68[6] + v89);
      *(v75[7] + 16 * v89) = v90;
      result = swift_unknownObjectRetain();
      v84 = v97;
    }

    while (v97);
  }

  v87 = v81;
  while (1)
  {
    v81 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v81 >= v85)
    {
      goto LABEL_88;
    }

    v88 = v68[v81 + 8];
    ++v87;
    if (v88)
    {
      v86 = __clz(__rbit64(v88));
      v97 = (v88 - 1) & v88;
      goto LABEL_86;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFCalendarIdentifier()
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle *bundle, Swift::String value, Swift::String comment)
{
  object = tableName.value._object;
  v7 = String._bridgeToObjectiveCImpl()();
  v8 = String._bridgeToObjectiveCImpl()();
  if (object)
  {
    object = String._bridgeToObjectiveCImpl()();
  }

  v9 = [(NSBundle *)bundle localizedStringForKey:v7 value:v8 table:object];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v9)
  {
    goto LABEL_13;
  }

  isTaggedPointer = _objc_isTaggedPointer(v9);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_30;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v26 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v27)
    {
      v28 = v26;
      v29 = v27;
    }

    else
    {
      [(NSString *)v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v28 = v32;
      v29 = v33;
    }

    goto LABEL_23;
  }

  if (TaggedPointerTag == 22)
  {
    v18 = [(NSString *)v12 UTF8String];
    if (v18)
    {
      v18 = String.init(utf8String:)(v18);
      if (v17)
      {
        v24 = v18;
        v25 = v17;

        v18 = v24;
        v17 = v25;
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_30:
    if (__CFStringIsCF())
    {

LABEL_13:
      v18 = 0;
      v17 = 0xE000000000000000;
      goto LABEL_26;
    }

    v19 = v12;
    v20 = String.init(_nativeStorage:)();
    if (v21)
    {
      v22 = v20;
      v23 = v21;

      v17 = v23;
      v18 = v22;
      goto LABEL_26;
    }

    if (![(NSString *)v19 length])
    {

      goto LABEL_13;
    }

    v28 = String.init(_cocoaString:)();
    v29 = v30;
LABEL_23:

    v17 = v29;
    v18 = v28;
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v16 = v15;

  v17 = v16;
  v18 = v14;
LABEL_26:
  result._object = v17;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t closure #1 in LocaleCache.fixed(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *a1;
  if (*(*a1 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      v13 = *(v10 + 56) + 16 * v11;
      v15 = *v13;
      v14 = *(v13 + 8);
      result = swift_unknownObjectRetain();
LABEL_31:
      *a4 = v15;
      a4[1] = v14;
      return result;
    }
  }

  v53 = v4;
  type metadata accessor for _LocaleICU();
  v48 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
  _s10Foundation17LocalePreferencesVSgWOi0_(v51);
  v49[6] = v51[6];
  v50[0] = v52[0];
  *(v50 + 12) = *(v52 + 12);
  v49[2] = v51[2];
  v49[3] = v51[3];
  v49[4] = v51[4];
  v49[5] = v51[5];
  v49[0] = v51[0];
  v49[1] = v51[1];
  swift_allocObject();

  v15 = _LocaleICU.init(identifier:prefs:)(a2, a3, v49);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49[0] = *a1;
  v18 = *&v49[0];
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v21 = *(v18 + 16);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v19;
  if (*(v18 + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v24 = v18;
      if (v19)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

LABEL_13:
    v46 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation15_LocaleProtocol_pGMd);
    v28 = static _DictionaryStorage.copy(original:)();
    v24 = v28;
    if (*(v18 + 16))
    {
      v29 = (v28 + 64);
      v30 = (v18 + 64);
      v31 = ((1 << *(v24 + 32)) + 63) >> 6;
      if (v24 != v18 || v29 >= &v30[8 * v31])
      {
        memmove(v29, v30, 8 * v31);
      }

      v32 = 0;
      *(v24 + 16) = *(v18 + 16);
      v33 = 1 << *(v18 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v18 + 64);
      v36 = (v33 + 63) >> 6;
      if (v35)
      {
        do
        {
          v37 = __clz(__rbit64(v35));
          v47 = (v35 - 1) & v35;
LABEL_26:
          v40 = 16 * (v37 | (v32 << 6));
          v41 = (*(v18 + 48) + v40);
          v43 = *v41;
          v42 = v41[1];
          v44 = *(*(v18 + 56) + v40);
          v45 = (*(v24 + 48) + v40);
          *v45 = v43;
          v45[1] = v42;
          *(*(v24 + 56) + v40) = v44;

          swift_unknownObjectRetain();
          v35 = v47;
        }

        while (v47);
      }

      v38 = v32;
      while (1)
      {
        v32 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v32 >= v36)
        {
          goto LABEL_28;
        }

        v39 = *(v18 + 64 + 8 * v32);
        ++v38;
        if (v39)
        {
          v37 = __clz(__rbit64(v39));
          v47 = (v39 - 1) & v39;
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_28:

    v20 = v46;
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_29:
    specialized _NativeDictionary._insert(at:key:value:)(v20, a2, a3, v15, v24);

    v14 = v48;
    goto LABEL_30;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
  v24 = *&v49[0];
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v5 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v5 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_11:
    v27 = (*(v24 + 56) + 16 * v20);
    v14 = v48;
    *v27 = v15;
    v27[1] = v48;
    result = swift_unknownObjectRelease();
LABEL_30:
    *a1 = v24;
    goto LABEL_31;
  }

LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *__cdecl NSAllocateCollectable(NSUInteger size, NSUInteger options)
{
  v2 = options;
  v4 = malloc_default_zone();
  if (v2)
  {

    return malloc_type_zone_calloc(v4, 1uLL, size, 0x9DA5E11CuLL);
  }

  else
  {

    return malloc_type_zone_malloc(v4, size, 0x41397B7DuLL);
  }
}

uint64_t static Set._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v159 = a4;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v154 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v143 - v11;
  MEMORY[0x1EEE9AC00](v13);
  i = &v143 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v150 = &v143 - v16;
  v158 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v157 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v152 = &v143 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v143 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v143 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v151 = &v143 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v155 = &v143 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v148 = &v143 - v31;

  v32 = type metadata accessor for NSObject();
  v33 = lazy protocol witness table accessor for type NSObject and conformance NSObject();
  swift_unknownObjectRetain();
  v160 = v32;
  v146 = v33;
  v34 = static Set._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (!v34)
  {
    v35 = [a1 copyWithZone_];
    v34 = ~(v35 >> 1) & 0x4000000000000000 | v35;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v37 = v34 & 0xC000000000000001;
  v38 = MEMORY[0x1E69E6158];
  v156 = v34;
  v147 = a2;
  v145 = v7;
  v144 = v8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    i = v12;
    if (v37)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_9:
        type metadata accessor for _SetStorage();
        j = static _SetStorage.allocate(capacity:)();
        goto LABEL_17;
      }
    }

    else if (*(v34 + 16))
    {
      goto LABEL_9;
    }

    j = MEMORY[0x1E69E7CD0];
LABEL_17:
    v164 = j;
    v161 = j;
    if (a3 != v38)
    {
      if (v37)
      {

        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        result = v165;
        v45 = v166;
        v46 = v167;
        v47 = v168;
        v48 = v169;
      }

      else
      {
        v82 = -1 << *(v156 + 32);
        v45 = v156 + 56;
        v46 = ~v82;
        v83 = -v82;
        if (v83 < 64)
        {
          v84 = ~(-1 << v83);
        }

        else
        {
          v84 = -1;
        }

        v48 = (v84 & *(v156 + 56));

        v47 = 0;
      }

      v85 = (v46 + 64) >> 6;
      v151 = (v158 + 56);
      v149 = v46;
      v150 = (v158 + 48);
      v86 = (v158 + 32);
      v87 = j + 56;
      for (i = result; ; result = i)
      {
        if (result < 0)
        {
          v93 = __CocoaSet.Iterator.next()();
          if (!v93)
          {
            j = v161;
            goto LABEL_108;
          }

          v162 = v93;
          swift_dynamicCast();
          v92 = v163;
          v91 = v47;
          v155 = v48;
        }

        else
        {
          v89 = v47;
          v90 = v48;
          v91 = v47;
          if (!v48)
          {
            while (1)
            {
              v91 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_122;
              }

              if (v91 >= v85)
              {
                break;
              }

              v90 = *(v45 + 8 * v91);
              ++v89;
              if (v90)
              {
                goto LABEL_62;
              }
            }

LABEL_108:

            outlined consume of Set<AnyKeyPath>.Iterator._Variant();
LABEL_109:
            result = 1;
LABEL_114:
            v125 = v147;
LABEL_115:
            *v125 = j;
            return result;
          }

LABEL_62:
          v155 = ((v90 - 1) & v90);
          v163 = *(*(result + 48) + ((v91 << 9) | (8 * __clz(__rbit64(v90)))));
          v92 = v163;
        }

        v162 = v92;
        v94 = v154;
        v95 = swift_dynamicCast();
        (*v151)(v94, v95 ^ 1u, 1, a3);
        if ((*v150)(v94, 1, a3) == 1)
        {

          outlined consume of Set<AnyKeyPath>.Iterator._Variant();

          (*(v144 + 8))(v94, v145);
          goto LABEL_113;
        }

        v96 = *v86;
        v97 = v152;
        (*v86)(v152, v94, a3);
        v96(v157, v97, a3);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        j = v161;
        v98 = -1 << *(v161 + 32);
        v99 = result & ~v98;
        v100 = v99 >> 6;
        if (((-1 << v99) & ~*(v87 + 8 * (v99 >> 6))) != 0)
        {
          v88 = __clz(__rbit64((-1 << v99) & ~*(v87 + 8 * (v99 >> 6)))) | v99 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v101 = 0;
          v102 = (63 - v98) >> 6;
          do
          {
            if (++v100 == v102 && (v101 & 1) != 0)
            {
LABEL_120:
              __break(1u);
              goto LABEL_121;
            }

            v103 = v100 == v102;
            if (v100 == v102)
            {
              v100 = 0;
            }

            v101 |= v103;
            v104 = *(v87 + 8 * v100);
          }

          while (v104 == -1);
          v88 = __clz(__rbit64(~v104)) + (v100 << 6);
        }

        *(v87 + ((v88 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v88;
        v96((*(j + 48) + *(v158 + 72) * v88), v157, a3);
        ++*(j + 16);
        v47 = v91;
        v48 = v155;
      }
    }

    if (v37)
    {

      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      result = v165;
      v54 = v166;
      v55 = v167;
      v56 = v168;
      v57 = v169;
    }

    else
    {
      v126 = -1 << *(v156 + 32);
      v54 = v156 + 56;
      v55 = ~v126;
      v127 = -v126;
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      else
      {
        v128 = -1;
      }

      v57 = v128 & *(v156 + 56);

      v56 = 0;
    }

    v152 = v55;
    v129 = (v55 + 64) >> 6;
    v157 = (v158 + 56);
    v154 = (v158 + 48);
    v130 = (v158 + 32);
    v131 = MEMORY[0x1E69E6158];
    v158 = result;
    if (result < 0)
    {
      goto LABEL_103;
    }

    while (1)
    {
      v132 = v56;
      v133 = v57;
      v134 = v56;
      for (j = v161; !v133; ++v132)
      {
        v134 = v132 + 1;
        if (__OFADD__(v132, 1))
        {
          goto LABEL_124;
        }

        if (v134 >= v129)
        {
          goto LABEL_108;
        }

        v133 = *(v54 + 8 * v134);
      }

      v135 = (v133 - 1) & v133;
      v136 = *(*(result + 48) + ((v134 << 9) | (8 * __clz(__rbit64(v133)))));
      while (1)
      {
        v163 = v136;
        v119 = i;
        v138 = swift_dynamicCast();
        (*v157)(v119, v138 ^ 1u, 1, v131);
        if ((*v154)(v119, 1, v131) == 1)
        {
LABEL_112:

          outlined consume of Set<AnyKeyPath>.Iterator._Variant();

          (*(v144 + 8))(v119, v145);
LABEL_113:
          j = 0;
          result = 0;
          goto LABEL_114;
        }

        v139 = *v130;
        v140 = v149;
        (*v130)(v149, v119, v131);
        v141 = v155;
        v139(v155, v140, v131);
        v142 = type metadata accessor for _NativeSet();
        _NativeSet._unsafeUpdate(with:)(v141, v142);
        v56 = v134;
        v57 = v135;
        result = v158;
        if ((v158 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_103:
        v137 = __CocoaSet.Iterator.next()();
        if (!v137)
        {

          outlined consume of Set<AnyKeyPath>.Iterator._Variant();
          j = v161;
          goto LABEL_109;
        }

        v162 = v137;
        swift_dynamicCast();
        v136 = v163;
        v134 = v56;
        v135 = v57;
      }
    }
  }

  if (!v37)
  {
    if (*(v34 + 16))
    {
      goto LABEL_6;
    }

LABEL_11:
    j = MEMORY[0x1E69E7CD0];
    goto LABEL_12;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_11;
  }

LABEL_6:
  type metadata accessor for _SetStorage();
  j = static _SetStorage.allocate(capacity:)();
LABEL_12:
  v164 = j;
  v161 = j;
  if (a3 == v38)
  {
    if (v37)
    {

      __CocoaSet.makeIterator()();
      result = Set.Iterator.init(_cocoa:)();
      v50 = v165;
      v49 = v166;
      v51 = v167;
      v52 = v168;
      v53 = v169;
    }

    else
    {
      v105 = -1 << *(v34 + 32);
      v50 = v34;
      v107 = *(v34 + 56);
      v49 = v34 + 56;
      v106 = v107;
      v51 = ~v105;
      v108 = -v105;
      if (v108 < 64)
      {
        v109 = ~(-1 << v108);
      }

      else
      {
        v109 = -1;
      }

      v53 = v109 & v106;

      v52 = 0;
    }

    v110 = (v51 + 64) >> 6;
    v157 = (v158 + 56);
    i = v51;
    v154 = (v158 + 48);
    v111 = (v158 + 32);
    v112 = MEMORY[0x1E69E6158];
    v158 = v50;
    if (v50 < 0)
    {
      goto LABEL_86;
    }

LABEL_81:
    v113 = v52;
    v114 = v53;
    v115 = v52;
    j = v161;
    if (v53)
    {
LABEL_85:
      v116 = (v114 - 1) & v114;
      v117 = *(*(v50 + 48) + ((v115 << 9) | (8 * __clz(__rbit64(v114)))));
      while (1)
      {
        v163 = v117;
        v119 = v150;
        v120 = swift_dynamicCast();
        (*v157)(v119, v120 ^ 1u, 1, v112);
        if ((*v154)(v119, 1, v112) == 1)
        {
          goto LABEL_112;
        }

        v121 = *v111;
        v122 = v148;
        (*v111)(v148, v119, v112);
        v123 = v155;
        v121(v155, v122, v112);
        v124 = type metadata accessor for _NativeSet();
        result = _NativeSet._unsafeUpdate(with:)(v123, v124);
        v52 = v115;
        v53 = v116;
        v50 = v158;
        if ((v158 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_86:
        v118 = __CocoaSet.Iterator.next()();
        if (!v118)
        {
          break;
        }

        v162 = v118;
        swift_dynamicCast();
        v117 = v163;
        v115 = v52;
        v116 = v53;
      }

      outlined consume of Set<AnyKeyPath>.Iterator._Variant();
      v125 = v147;
      j = v161;
    }

    else
    {
      while (1)
      {
        v115 = v113 + 1;
        if (__OFADD__(v113, 1))
        {
          goto LABEL_123;
        }

        if (v115 >= v110)
        {
          break;
        }

        v114 = *(v49 + 8 * v115);
        ++v113;
        if (v114)
        {
          goto LABEL_85;
        }
      }

LABEL_91:

      outlined consume of Set<AnyKeyPath>.Iterator._Variant();
      v125 = v147;
    }

    result = 1;
    goto LABEL_115;
  }

  v150 = v25;
  if (v37)
  {

    j = v161;
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v34 = v165;
    v40 = v166;
    v41 = v167;
    v42 = v168;
    v43 = v169;
  }

  else
  {
    v58 = -1 << *(v34 + 32);
    v40 = v34 + 56;
    v41 = ~v58;
    v59 = -v58;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v43 = (v60 & *(v34 + 56));

    v42 = 0;
  }

  v149 = v41;
  v61 = (v41 + 64) >> 6;
  v154 = (v158 + 48);
  v155 = (v158 + 56);
  v62 = (v158 + 32);
  v63 = j + 56;
  v152 = v34;
  while (v34 < 0)
  {
    v69 = __CocoaSet.Iterator.next()();
    if (!v69)
    {
      j = v161;
      goto LABEL_91;
    }

    v162 = v69;
    swift_dynamicCast();
    v68 = v163;
    v67 = v42;
    v157 = v43;
LABEL_39:
    v162 = v68;
    v70 = i;
    v71 = swift_dynamicCast();
    (*v155)(v70, v71 ^ 1u, 1, a3);
    if ((*v154)(v70, 1, a3) == 1)
    {

      outlined consume of Set<AnyKeyPath>.Iterator._Variant();

      (*(v144 + 8))(v70, v145);
      goto LABEL_113;
    }

    v72 = *v62;
    v73 = v151;
    (*v62)(v151, v70, a3);
    v74 = v150;
    v72(v150, v73, a3);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    j = v161;
    v75 = -1 << *(v161 + 32);
    v76 = result & ~v75;
    v77 = v76 >> 6;
    if (((-1 << v76) & ~*(v63 + 8 * (v76 >> 6))) != 0)
    {
      v64 = __clz(__rbit64((-1 << v76) & ~*(v63 + 8 * (v76 >> 6)))) | v76 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v78 = 0;
      v79 = (63 - v75) >> 6;
      do
      {
        if (++v77 == v79 && (v78 & 1) != 0)
        {
          __break(1u);
          goto LABEL_120;
        }

        v80 = v77 == v79;
        if (v77 == v79)
        {
          v77 = 0;
        }

        v78 |= v80;
        v81 = *(v63 + 8 * v77);
      }

      while (v81 == -1);
      v64 = __clz(__rbit64(~v81)) + (v77 << 6);
    }

    *(v63 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
    v72((*(j + 48) + *(v158 + 72) * v64), v74, a3);
    ++*(j + 16);
    v42 = v67;
    v43 = v157;
    v34 = v152;
  }

  v65 = v42;
  v66 = v43;
  v67 = v42;
  result = v156;
  if (v43)
  {
LABEL_36:
    v157 = ((v66 - 1) & v66);
    v163 = *(*(v34 + 48) + ((v67 << 9) | (8 * __clz(__rbit64(v66)))));
    v68 = v163;
    goto LABEL_39;
  }

  while (1)
  {
    v67 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v67 >= v61)
    {
      goto LABEL_91;
    }

    v66 = *(v40 + 8 * v67);
    ++v65;
    if (v66)
    {
      goto LABEL_36;
    }
  }

LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for NSNotificationCenter.Notifications.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Int()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInteger_];
}

uint64_t storeEnumTagSinglePayload for Locale.Language(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t protocol witness for _LocaleProtocol.prefs.getter in conformance _LocaleICU@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 168);
  v12[6] = *(v1 + 152);
  v13[0] = v3;
  *(v13 + 12) = *(v1 + 180);
  v4 = *(v1 + 72);
  v5 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v5;
  v12[4] = *(v1 + 120);
  v12[5] = v2;
  v12[0] = *(v1 + 56);
  v12[1] = v4;
  v6 = *(v1 + 136);
  v7 = *(v1 + 168);
  a1[6] = *(v1 + 152);
  a1[7] = v7;
  *(a1 + 124) = *(v1 + 180);
  v8 = *(v1 + 72);
  v9 = *(v1 + 104);
  a1[2] = *(v1 + 88);
  a1[3] = v9;
  a1[4] = *(v1 + 120);
  a1[5] = v6;
  *a1 = *(v1 + 56);
  a1[1] = v8;
  return outlined init with copy of FloatingPointRoundingRule?(v12, &v11, &_s10Foundation17LocalePreferencesVSgMd);
}

uint64_t specialized static Locale.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 48);
  if (v5(ObjectType, v2) & 1) != 0 || (v6 = ObjectType, v7 = v3, v8 = swift_getObjectType(), v9 = *(v7 + 48), swift_unknownObjectRetain(), v95 = v8, v10 = v8, v3 = v7, ObjectType = v6, v11 = v9(v10, v3), swift_unknownObjectRelease(), (v11))
  {
    if (v5(ObjectType, v2))
    {
      v12 = swift_getObjectType();
      v13 = *(v3 + 48);
      swift_unknownObjectRetain();
      v14 = v13(v12, v3);
      swift_unknownObjectRelease();
      return v14 & 1;
    }

    return 0;
  }

  v16 = (*(v2 + 64))(v6, v2);
  v18 = v17;
  if (v16 == (*(v3 + 64))(v95, v3) && v18 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  (*(v2 + 464))(__src, v6, v2);
  (*(v3 + 464))(&__src[9], v95, v3);
  v140[6] = __src[6];
  v141[0] = __src[7];
  *(v141 + 12) = *(&__src[7] + 12);
  v140[2] = __src[2];
  v140[3] = __src[3];
  v140[4] = __src[4];
  v140[5] = __src[5];
  v140[0] = __src[0];
  v140[1] = __src[1];
  if (_s10Foundation17LocalePreferencesVSgWOg(v140) == 1)
  {
    __dst[6] = __src[15];
    __dst[7] = __src[16];
    *(&__dst[7] + 12) = *(&__src[16] + 12);
    __dst[2] = __src[11];
    __dst[3] = __src[12];
    __dst[4] = __src[13];
    __dst[5] = __src[14];
    __dst[0] = __src[9];
    __dst[1] = __src[10];
    if (_s10Foundation17LocalePreferencesVSgWOg(__dst) == 1)
    {
      v136 = __src[6];
      *v137 = __src[7];
      *&v137[12] = *(&__src[7] + 12);
      v132 = __src[2];
      v133 = __src[3];
      v134 = __src[4];
      v135 = __src[5];
      v130 = __src[0];
      v131 = __src[1];
      outlined destroy of TermOfAddress?(&v130, &_s10Foundation17LocalePreferencesVSgMd);
      return 1;
    }

    goto LABEL_17;
  }

  *&v137[12] = *(&__src[7] + 12);
  v136 = __src[6];
  *v137 = __src[7];
  v132 = __src[2];
  v133 = __src[3];
  v134 = __src[4];
  v135 = __src[5];
  v130 = __src[0];
  v131 = __src[1];
  v96 = LOBYTE(__src[0]);
  v129[0] = *(__src + 1);
  *(v129 + 3) = DWORD1(__src[0]);
  v94 = *(&__src[0] + 1);
  v92 = *&__src[2];
  v93 = __src[1];
  v22 = *(&__src[2] + 1);
  v23 = __src[3];
  v24 = *&__src[4];
  v25 = __src[5];
  v91 = *(&__src[4] + 1);
  v89 = *(&__src[6] + 1);
  v90 = *&__src[6];
  v26 = __src[7];
  v88 = *(&__src[7] + 12) >> 32;
  v27 = BYTE8(__src[8]);
  v28 = BYTE9(__src[8]);
  v29 = BYTE10(__src[8]);
  v30 = BYTE11(__src[8]);
  __dst[6] = __src[15];
  __dst[7] = __src[16];
  *(&__dst[7] + 12) = *(&__src[16] + 12);
  __dst[2] = __src[11];
  __dst[3] = __src[12];
  __dst[4] = __src[13];
  __dst[5] = __src[14];
  __dst[0] = __src[9];
  __dst[1] = __src[10];
  if (_s10Foundation17LocalePreferencesVSgWOg(__dst) == 1)
  {
    LOBYTE(v121) = v96;
    *(&v121 + 1) = *(__src + 1);
    DWORD1(v121) = DWORD1(__src[0]);
    *(&v121 + 1) = v94;
    v122 = v93;
    *&v123 = v92;
    *(&v123 + 1) = v22;
    v124 = v23;
    *&v125 = v24;
    *(&v125 + 1) = v91;
    v126 = v25;
    *&v127 = v90;
    *(&v127 + 1) = v89;
    *v128 = v26;
    *&v128[16] = v88;
    v128[24] = v27;
    v128[25] = v28;
    v128[26] = v29;
    v128[27] = v30;
    outlined init with copy of LocalePreferences?(&v130, v119);
    outlined destroy of LocalePreferences(&v121);
LABEL_17:
    memcpy(__dst, __src, 0x11CuLL);
    outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSg_ADtMd);
    return 0;
  }

  v87 = v22;
  v83 = v30;
  v84 = v29;
  v85 = v28;
  v86 = v27;
  v121 = __src[9];
  v122 = __src[10];
  v123 = __src[11];
  v124 = __src[12];
  v125 = __src[13];
  v126 = __src[14];
  v127 = __src[15];
  *v128 = __src[16];
  *&v128[12] = *(&__src[16] + 12);
  v31 = *(&__src[10] + 1);
  v32 = *(&__src[13] + 1);
  v33 = *&__src[13];
  v34 = *(&__src[14] + 1);
  v35 = *&__src[14];
  if (v96 == 2)
  {
    if (v121 != 2)
    {
      goto LABEL_48;
    }
  }

  else if (v121 == 2 || ((v121 ^ v96) & 1) != 0)
  {
    goto LABEL_48;
  }

  v81 = *(&v127 + 1);
  v82 = v127;
  v80 = *&v128[16];
  v36 = *v128;
  v78 = v128[25];
  v79 = v128[24];
  v77 = v128[26];
  if (v94)
  {
    if (!*(&v121 + 1))
    {
      goto LABEL_48;
    }

    v76 = v128[27];
    v37 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v94, *(&v121 + 1));
    v35 = v126;
    v32 = *(&v125 + 1);
    v33 = v125;
    v34 = *(&v126 + 1);
    if ((v37 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v76 = v128[27];
    if (*(&v121 + 1))
    {
      goto LABEL_48;
    }
  }

  if (*(&v93 + 1))
  {
    if (!*(&v122 + 1))
    {
      goto LABEL_48;
    }

    if (v93 != __PAIR128__(v31, v122))
    {
      v73 = v34;
      v38 = v35;
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v35 = v38;
      v34 = v73;
      if ((v39 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_33:
    if (v22)
    {
      v40 = v26;
      if (*(&v123 + 1))
      {
        if (__PAIR128__(v22, v92) == v123 || (v74 = v34, v41 = v35, v42 = _stringCompareWithSmolCheck(_:_:expecting:)(), v35 = v41, v34 = v74, (v42 & 1) != 0))
        {
LABEL_37:
          v43 = v23;
          if (v23)
          {
            if (v124)
            {
              v44 = v34;
              v45 = v33;
              v46 = v32;
              v47 = v35;
              v48 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v23, v124);
              v35 = v47;
              v32 = v46;
              v33 = v45;
              v34 = v44;
              if (v48)
              {
LABEL_40:
                v49 = *(&v23 + 1);
                v72 = v35;
                v75 = v34;
                if (*(&v23 + 1))
                {
                  v50 = v24;
                  if (*(&v124 + 1) && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(*(&v23 + 1), *(&v124 + 1)) & 1) != 0)
                  {
LABEL_43:
                    if (v50)
                    {
                      if (!v33)
                      {
                        outlined init with copy of LocalePreferences?(&v130, v119);
                        outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd);
                        v53 = 0;
                        v58 = v91;
                        v40 = v26;
                        v54 = v89;
                        v55 = v90;
                        v56 = *(&v26 + 1);
                        v57 = *(&v25 + 1);
                        v59 = v25;
                        goto LABEL_51;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      outlined init with copy of LocalePreferences?(&v130, v119);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                      v51 = v33;
                      v52 = static _CFObject.== infix(_:_:)();

                      if ((v52 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else
                    {
                      if (v33)
                      {
                        outlined init with copy of LocalePreferences?(&v130, v119);
                        goto LABEL_109;
                      }

                      outlined init with copy of LocalePreferences?(&v130, v119);
                    }

                    if (v91)
                    {
                      if (!v32)
                      {
                        goto LABEL_109;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                      v62 = v32;
                      v63 = static _CFObject.== infix(_:_:)();

                      if ((v63 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v32)
                    {
                      goto LABEL_109;
                    }

                    if (v25)
                    {
                      if (!v72)
                      {
                        goto LABEL_109;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                      v64 = v72;
                      v65 = static _CFObject.== infix(_:_:)();

                      if ((v65 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v72)
                    {
                      goto LABEL_109;
                    }

                    if (*(&v25 + 1))
                    {
                      if (!v75)
                      {
                        goto LABEL_109;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                      v66 = v75;
                      v67 = static _CFObject.== infix(_:_:)();

                      if ((v67 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v75)
                    {
                      goto LABEL_109;
                    }

                    if (v90)
                    {
                      if (!v82)
                      {
                        goto LABEL_109;
                      }

                      type metadata accessor for CFDictionaryRef(0);
                      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
                      v68 = v82;
                      v69 = static _CFObject.== infix(_:_:)();

                      if ((v69 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v82)
                    {
                      goto LABEL_109;
                    }

                    if (v89)
                    {
                      if (!v81)
                      {
                        goto LABEL_109;
                      }

                      v70 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4DateV11FormatStyleV0cE0V_SSTt1g5(v89, v81);

                      if ((v70 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v81)
                    {
                      goto LABEL_109;
                    }

                    if (v26)
                    {
                      if (!v36)
                      {
                        goto LABEL_109;
                      }

                      v71 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SSTt1g5(v26, v36);

                      if ((v71 & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v36)
                    {
                      goto LABEL_109;
                    }

                    if (v88)
                    {
                      if (!v80 || (*(&v26 + 1) != *(&v36 + 1) || v88 != v80) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
                        goto LABEL_109;
                      }
                    }

                    else if (v80)
                    {
                      goto LABEL_109;
                    }

                    if (v86 == 2)
                    {
                      if (v79 == 2)
                      {
                        goto LABEL_106;
                      }
                    }

                    else if (v79 != 2 && ((v79 ^ v86) & 1) == 0)
                    {
LABEL_106:
                      outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd);
                      if (v85 == 2)
                      {
                        if (v78 != 2)
                        {
LABEL_110:
                          v53 = 0;
LABEL_111:
                          v40 = v26;
                          v54 = v89;
                          v55 = v90;
                          v56 = *(&v26 + 1);
                          goto LABEL_50;
                        }
                      }

                      else if (v78 == 2 || ((v78 ^ v85) & 1) != 0)
                      {
                        goto LABEL_110;
                      }

                      if (v84 == 2)
                      {
                        v58 = v91;
                        v40 = v26;
                        v54 = v89;
                        v55 = v90;
                        v56 = *(&v26 + 1);
                        v57 = *(&v25 + 1);
                        v59 = v25;
                        v50 = v24;
                        v49 = *(&v23 + 1);
                        v43 = v23;
                        v61 = v92;
                        v60 = v93;
                        if (v77 != 2)
                        {
                          v53 = 0;
                          goto LABEL_53;
                        }
                      }

                      else
                      {
                        v53 = 0;
                        if (v77 == 2)
                        {
                          goto LABEL_111;
                        }

                        v58 = v91;
                        v40 = v26;
                        v54 = v89;
                        v55 = v90;
                        v56 = *(&v26 + 1);
                        v57 = *(&v25 + 1);
                        v59 = v25;
                        v50 = v24;
                        v49 = *(&v23 + 1);
                        v43 = v23;
                        v61 = v92;
                        v60 = v93;
                        if ((v77 ^ v84))
                        {
                          goto LABEL_53;
                        }
                      }

                      if (v83 == 2)
                      {
                        if (v76 != 2)
                        {
                          goto LABEL_110;
                        }
                      }

                      else if (v76 == 2 || ((v76 ^ v83) & 1) != 0)
                      {
                        goto LABEL_110;
                      }

                      v53 = 1;
                      goto LABEL_111;
                    }

LABEL_109:
                    outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd);
                    goto LABEL_110;
                  }
                }

                else
                {
                  v50 = v24;
                  if (!*(&v124 + 1))
                  {
                    goto LABEL_43;
                  }
                }

                outlined init with copy of LocalePreferences?(&v130, v119);
                outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd);
                v53 = 0;
                v54 = v89;
                v55 = v90;
                v56 = *(&v26 + 1);
                v57 = *(&v25 + 1);
                v58 = v91;
                v59 = v25;
                goto LABEL_52;
              }
            }
          }

          else if (!v124)
          {
            goto LABEL_40;
          }

          outlined init with copy of LocalePreferences?(&v130, v119);
          outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd);
          v53 = 0;
          v54 = v89;
          v55 = v90;
          v56 = *(&v26 + 1);
          v57 = *(&v25 + 1);
          v58 = v91;
          v59 = v25;
          v50 = v24;
          v49 = *(&v23 + 1);
          goto LABEL_52;
        }
      }
    }

    else
    {
      v40 = v26;
      if (!*(&v123 + 1))
      {
        goto LABEL_37;
      }
    }

    outlined init with copy of LocalePreferences?(&v130, v119);
    outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd);
    v53 = 0;
    goto LABEL_49;
  }

  if (!*(&v122 + 1))
  {
    goto LABEL_33;
  }

LABEL_48:
  outlined init with copy of LocalePreferences?(&v130, v119);
  outlined destroy of TermOfAddress?(&v121, &_s10Foundation17LocalePreferencesVSgMd);
  v53 = 0;
  v40 = v26;
LABEL_49:
  v54 = v89;
  v55 = v90;
  v56 = *(&v26 + 1);
LABEL_50:
  v57 = *(&v25 + 1);
  v58 = v91;
  v59 = v25;
  v50 = v24;
LABEL_51:
  v49 = *(&v23 + 1);
  v43 = v23;
LABEL_52:
  v61 = v92;
  v60 = v93;
LABEL_53:
  v97 = v96;
  *v98 = v129[0];
  *&v98[3] = *(v129 + 3);
  v99 = v94;
  v100 = v60;
  v101 = *(&v93 + 1);
  v102 = v61;
  v103 = v87;
  v104 = v43;
  v105 = v49;
  v106 = v50;
  v107 = v58;
  v108 = v59;
  v109 = v57;
  v110 = v55;
  v111 = v54;
  v112 = v40;
  v113 = v56;
  v114 = v88;
  v115 = v86;
  v116 = v85;
  v117 = v84;
  v118 = v83;
  outlined destroy of LocalePreferences(&v97);
  v119[6] = __src[6];
  v120[0] = __src[7];
  *(v120 + 12) = *(&__src[7] + 12);
  v119[2] = __src[2];
  v119[3] = __src[3];
  v119[4] = __src[4];
  v119[5] = __src[5];
  v119[0] = __src[0];
  v119[1] = __src[1];
  outlined destroy of TermOfAddress?(v119, &_s10Foundation17LocalePreferencesVSgMd);
  return v53;
}

uint64_t String.init(format:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = specialized withVaList<A>(_:_:)(a3, a3, a1, a2, 0, 0);

  return v6;
}

uint64_t specialized withVaList<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  type metadata accessor for __VaListBuilder();
  v7 = swift_allocObject();
  v7[2] = 8;
  v7[3] = 0;
  v8 = v7 + 3;
  v7[4] = 0;
  v7[5] = 0;
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_26:
    v27 = __VaListBuilder.va_list()();
    closure #1 in String.init(format:locale:arguments:)(v27, a2, a3, a4, a5, a6, &v33);

    return v33;
  }

  v10 = 0;
  v11 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v11 + 40 * v10), *(v11 + 40 * v10 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v13 = *v8;
    v14 = *(result + 16);
    v15 = __OFADD__(*v8, v14);
    v16 = *v8 + v14;
    if (v15)
    {
      break;
    }

    v17 = v7[4];
    if (v17 >= v16)
    {
      goto LABEL_18;
    }

    if (v17 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v18 = v7[5];
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    v7[4] = v16;
    if ((v16 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v19 = result;
    v20 = swift_slowAlloc();
    v21 = v20;
    v7[5] = v20;
    if (v18)
    {
      if (v20 != v18 || v20 >= &v18[8 * v13])
      {
        memmove(v20, v18, 8 * v13);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v19;
LABEL_18:
      v21 = v7[5];
      if (!v21)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v19;
    if (!v21)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v23 = *(result + 16);
    if (v23)
    {
      v24 = (result + 32);
      v25 = *v8;
      while (1)
      {
        v26 = *v24++;
        *&v21[8 * v25] = v26;
        v25 = *v8 + 1;
        if (__OFADD__(*v8, 1))
        {
          break;
        }

        *v8 = v25;
        if (!--v23)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v10 == v9)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void closure #1 in String.init(format:locale:arguments:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v7 = a4;
  v121 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v106 = v8;
  if (v8)
  {
    v115 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = v8;
    v9 = v115;
    v12 = a2 + 32;
    while (1)
    {
      outlined init with copy of Hashable & Sendable(v12, &v117);
      __swift_project_boxed_opaque_existential_1(&v117, v120);
      DynamicType = swift_getDynamicType();
      if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_11;
        }

        if (swift_dynamicCastMetatype())
        {
          v14 = 0xE400000000000000;
          v15 = 1684564005;
          goto LABEL_6;
        }

        if (swift_dynamicCastMetatype())
        {
          v14 = 0xE300000000000000;
          v15 = 6580261;
          goto LABEL_6;
        }

        if (swift_dynamicCastMetatype())
        {
          v14 = 0xE200000000000000;
          v15 = 25637;
          goto LABEL_6;
        }

        if (!swift_dynamicCastMetatype())
        {
          break;
        }
      }

      v14 = 0xE400000000000000;
      v15 = 1684827173;
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1(&v117);
      v114 = v9;
      v17 = v9[2];
      v16 = v9[3];
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      v9[2] = v17 + 1;
      v18 = &v9[2 * v17];
      v18[4] = v15;
      v18[5] = v14;
      v12 += 40;
      if (!--v11)
      {
        v7 = a4;
        v21 = a1;
        goto LABEL_53;
      }
    }

    if (swift_dynamicCastMetatype())
    {
      v14 = 0xE400000000000000;
      v15 = 1969776677;
      goto LABEL_6;
    }

    if (swift_dynamicCastMetatype())
    {
      v14 = 0xE300000000000000;
      v15 = 7694373;
      goto LABEL_6;
    }

    if (swift_dynamicCastMetatype())
    {
      v14 = 0xE200000000000000;
      v15 = 29989;
      goto LABEL_6;
    }

    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        v14 = 0xE200000000000000;
        v15 = 26149;
      }

      else if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
      {
        v14 = 0xE300000000000000;
        v15 = 6712357;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5UInt8VGMd);
        if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5UInt8VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys4Int8VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys5UInt8VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys4Int8VGMd), swift_dynamicCastMetatype()))
        {
          v14 = 0xE200000000000000;
          v15 = 29477;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys6UInt16VGMd);
          if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5Int16VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys6UInt16VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5Int16VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys6UInt16VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys5Int16VGMd), swift_dynamicCastMetatype()))
          {
            v14 = 0xE200000000000000;
            v15 = 21285;
          }

          else
          {
            v19 = swift_conformsToProtocol2();
            if (DynamicType)
            {
              v20 = v19 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (v20)
            {
              v15 = 16421;
            }

            else
            {
              v15 = 28709;
            }

            v14 = 0xE200000000000000;
          }
        }
      }

      goto LABEL_6;
    }

LABEL_11:
    v14 = 0xE400000000000000;
    v15 = 1970039845;
    goto LABEL_6;
  }

  v21 = a1;
LABEL_53:
  v117 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  BidirectionalCollection<>.joined(separator:)();

  v22 = String._bridgeToObjectiveCImpl()();
  v23 = String._bridgeToObjectiveCImpl()();
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v25 = (*(a6 + 488))(ObjectType);
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_opt_self();
  v117 = 0;
  v27 = [v26 _stringWithValidatedFormat_validFormatSpecifiers_locale_arguments_error_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v27)
  {
    v28 = v117;

    isTaggedPointer = _objc_isTaggedPointer(v27);
    v30 = v27;
    v31 = v30;
    if (!isTaggedPointer)
    {
LABEL_62:
      v117 = 0;
      if (__CFStringIsCF())
      {
        v33 = v117;
        if (v117)
        {
          goto LABEL_168;
        }

LABEL_157:
        v35 = 0xE000000000000000;
        goto LABEL_172;
      }

      v38 = v31;
      v39 = String.init(_nativeStorage:)();
      if (v40)
      {
        v33 = v39;
        v35 = v40;

        goto LABEL_172;
      }

      v117 = [v38 length];
      if (v117)
      {
LABEL_168:
        v33 = String.init(_cocoaString:)();
        v35 = v102;
        goto LABEL_171;
      }

LABEL_165:
      v33 = 0;
      v35 = 0xE000000000000000;
      goto LABEL_172;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v30);
    if (!TaggedPointerTag)
    {
      goto LABEL_152;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v35 = v34;

        goto LABEL_171;
      }

      goto LABEL_62;
    }

    v96 = [v31 UTF8String];
    if (v96)
    {
      v97 = String.init(utf8String:)(v96);
      if (v98)
      {
        goto LABEL_153;
      }

      __break(1u);
LABEL_152:
      _CFIndirectTaggedPointerStringGetContents();
      v97 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v98)
      {
        [v31 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v33 = v114;
        v35 = v116;
        goto LABEL_171;
      }

LABEL_153:
      v33 = v97;
      v35 = v98;

      goto LABEL_171;
    }

    __break(1u);
LABEL_174:
    __break(1u);
    return;
  }

  if (v117)
  {
    v36 = v117;
    v37 = a2;
  }

  else
  {
    v37 = a2;
    if (one-time initialization token for _nilObjCError != -1)
    {
      swift_once();
    }

    v36 = _nilObjCError;
    v41 = _nilObjCError;
  }

  swift_willThrow();
  v42 = MEMORY[0x1E69E7CC0];
  v104 = v36;
  if (!v8)
  {
    v43 = MEMORY[0x1E69E7CC0];
    if ((_foundation_swift_format_string_validation_enabled() & 1) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_136;
  }

  v108 = v7;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v43 = v42;
  v44 = v37 + 32;
  v45 = v37 + 32;
  v46 = v8;
  do
  {
    outlined init with copy of Hashable & Sendable(v45, &v117);
    __swift_project_boxed_opaque_existential_1(&v117, v120);
    swift_getDynamicType();
    v47 = _typeName(_:qualified:)();
    v49 = v48;
    __swift_destroy_boxed_opaque_existential_1(&v117);
    v51 = v42[2];
    v50 = v42[3];
    if (v51 >= v50 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
    }

    v42[2] = v51 + 1;
    v52 = &v42[2 * v51];
    v52[4] = v47;
    v52[5] = v49;
    v45 += 40;
    --v46;
  }

  while (v46);
  v53 = v106;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v106, 0);
  do
  {
    outlined init with copy of Hashable & Sendable(v44, &v117);
    __swift_project_boxed_opaque_existential_1(&v117, v120);
    v54 = swift_getDynamicType();
    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
LABEL_80:
      v55 = 0xE400000000000000;
      v56 = 1684827173;
      goto LABEL_81;
    }

    if (swift_dynamicCastMetatype())
    {
LABEL_86:
      v55 = 0xE400000000000000;
      v56 = 1970039845;
      goto LABEL_81;
    }

    if (swift_dynamicCastMetatype())
    {
      v55 = 0xE400000000000000;
      v56 = 1684564005;
    }

    else if (swift_dynamicCastMetatype())
    {
      v55 = 0xE300000000000000;
      v56 = 6580261;
    }

    else if (swift_dynamicCastMetatype())
    {
      v55 = 0xE200000000000000;
      v56 = 25637;
    }

    else
    {
      if (swift_dynamicCastMetatype())
      {
        goto LABEL_80;
      }

      if (swift_dynamicCastMetatype())
      {
        v55 = 0xE400000000000000;
        v56 = 1969776677;
      }

      else if (swift_dynamicCastMetatype())
      {
        v55 = 0xE300000000000000;
        v56 = 7694373;
      }

      else if (swift_dynamicCastMetatype())
      {
        v55 = 0xE200000000000000;
        v56 = 29989;
      }

      else
      {
        if (swift_dynamicCastMetatype())
        {
          goto LABEL_86;
        }

        if (swift_dynamicCastMetatype())
        {
          v55 = 0xE200000000000000;
          v56 = 26149;
        }

        else if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
        {
          v55 = 0xE300000000000000;
          v56 = 6712357;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5UInt8VGMd);
          if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5UInt8VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys4Int8VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys5UInt8VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys4Int8VGMd), swift_dynamicCastMetatype()))
          {
            v55 = 0xE200000000000000;
            v56 = 29477;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys6UInt16VGMd);
            if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys5Int16VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys6UInt16VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSpys5Int16VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys6UInt16VGMd), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSAys5Int16VGMd), swift_dynamicCastMetatype()))
            {
              v55 = 0xE200000000000000;
              v56 = 21285;
            }

            else
            {
              v60 = swift_conformsToProtocol2();
              if (v54)
              {
                v61 = v60 == 0;
              }

              else
              {
                v61 = 1;
              }

              if (v61)
              {
                v56 = 16421;
              }

              else
              {
                v56 = 28709;
              }

              v55 = 0xE200000000000000;
            }
          }
        }
      }
    }

LABEL_81:
    __swift_destroy_boxed_opaque_existential_1(&v117);
    v114 = v42;
    v58 = v42[2];
    v57 = v42[3];
    if (v58 >= v57 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
    }

    v42[2] = v58 + 1;
    v59 = &v42[2 * v58];
    v59[4] = v56;
    v59[5] = v55;
    v44 += 40;
    --v53;
  }

  while (v53);
  v7 = v108;
  v62 = _foundation_swift_format_string_validation_enabled();
  if (v62)
  {
LABEL_136:
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(139);
    MEMORY[0x1865CB0E0](0xD00000000000003ALL, 0x80000001814891D0);
    v85 = MEMORY[0x1E69E6158];
    v86 = MEMORY[0x1865CB4E0](v43, MEMORY[0x1E69E6158]);
    MEMORY[0x1865CB0E0](v86);

    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181489210);
    v87 = MEMORY[0x1865CB4E0](v42, v85);
    v81 = v88;
    MEMORY[0x1865CB0E0](v87);

    MEMORY[0x1865CB0E0](0xD00000000000002FLL, 0x8000000181489230);
    v114 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](93, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_137;
  }

LABEL_128:

  if (one-time initialization token for stringLogger != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, stringLogger);

  v64 = v36;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v117 = v69;
    *v67 = 136446722;
    v70 = MEMORY[0x1865CB4E0](v43, MEMORY[0x1E69E6158]);
    v71 = v7;
    v73 = v72;

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, &v117);
    v7 = v71;

    *(v67 + 4) = v74;
    *(v67 + 12) = 2082;
    v75 = MEMORY[0x1865CB4E0](v42, MEMORY[0x1E69E6158]);
    v77 = v76;

    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, &v117);
    v36 = v104;

    *(v67 + 14) = v78;
    *(v67 + 22) = 2112;
    v79 = v104;
    v80 = _swift_stdlib_bridgeErrorToNSError();
    *(v67 + 24) = v80;
    *v68 = v80;
    _os_log_impl(&dword_18075C000, v65, v66, "String(format:locale:arguments:): Provided argument types %{public}s (with inferred specifiers %{public}s) do not match the format string's specifiers [%@]", v67, 0x20u);
    outlined destroy of TermOfAddress?(v68, &_sSo8NSObjectCSgMd);
    MEMORY[0x1865D2690](v68, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1865D2690](v69, -1, -1);
    MEMORY[0x1865D2690](v67, -1, -1);
  }

  else
  {
  }

  v81 = a1;
  v82 = a6;
  if (a5)
  {
    v83 = &type metadata for Locale;
    v84 = a5;
    goto LABEL_138;
  }

LABEL_137:
  v84 = 0;
  v82 = 0;
  v83 = 0;
  v119 = 0;
LABEL_138:
  v117 = v84;
  v118 = v82;
  v120 = v83;
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
  swift_unknownObjectRetain();

  v89 = NSString.__allocating_init(format:locale:arguments:)(a3, v7, &v117, v81);
  v90 = _objc_isTaggedPointer(v89);
  v91 = v89;
  v31 = v91;
  if (!v90)
  {
    goto LABEL_143;
  }

  v92 = _objc_getTaggedPointerTag(v91);
  switch(v92)
  {
    case 0:
      goto LABEL_161;
    case 0x16:
      v99 = [v31 UTF8String];
      if (!v99)
      {
        goto LABEL_174;
      }

      v100 = String.init(utf8String:)(v99);
      if (v101)
      {
LABEL_162:
        v33 = v100;
        v35 = v101;

        goto LABEL_170;
      }

      __break(1u);
LABEL_161:
      _CFIndirectTaggedPointerStringGetContents();
      v100 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v101)
      {
        [v31 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v33 = v114;
        v35 = v116;
        goto LABEL_170;
      }

      goto LABEL_162;
    case 2:
      MEMORY[0x1EEE9AC00](v92);
      v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v35 = v93;

      goto LABEL_171;
  }

LABEL_143:
  v117 = 0;
  if (!__CFStringIsCF())
  {
    v38 = v31;
    v94 = String.init(_nativeStorage:)();
    if (v95)
    {
      v33 = v94;
      v35 = v95;

      goto LABEL_172;
    }

    v117 = [v38 length];
    if (v117)
    {
      goto LABEL_169;
    }

    goto LABEL_165;
  }

  v33 = v117;
  if (!v117)
  {

    goto LABEL_157;
  }

LABEL_169:
  v33 = String.init(_cocoaString:)();
  v35 = v103;
LABEL_170:

LABEL_171:
LABEL_172:
  *a7 = v33;
  a7[1] = v35;
}