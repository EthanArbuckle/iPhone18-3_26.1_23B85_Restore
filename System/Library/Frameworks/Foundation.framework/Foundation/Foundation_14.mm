uint64_t NSNotificationCenter.Publisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v33 = *(a2 - 8);
  v5 = v33;
  v34 = a3;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v5 + 16);
  v15 = &v32 - v14;
  v35 = &v32 - v14;
  v13(v9);
  v36 = type metadata accessor for Notification.Subscription();
  v16 = swift_allocObject();
  swift_unknownObjectRetain();
  v17 = v10;
  v32 = v17;
  v18 = v11;
  v19 = swift_slowAlloc();
  *v19 = 0;
  v16[2] = v19;
  v20 = swift_slowAlloc();
  *v20 = 0;
  v16[3] = v20;
  v16[4] = 0;
  v16[5] = v17;
  v16[6] = v18;
  v16[7] = v12;
  v16[8] = 0;
  v21 = swift_allocObject();
  swift_weakInit();
  (v13)(v7, v15, a2);
  v22 = v33;
  v23 = (*(v33 + 80) + 40) & ~*(v33 + 80);
  v24 = swift_allocObject();
  v25 = v34;
  *(v24 + 2) = a2;
  *(v24 + 3) = v25;
  *(v24 + 4) = v21;
  (*(v22 + 32))(&v24[v23], v7, a2);
  WitnessTable = partial apply for closure #1 in Notification.Subscription.init(_:_:_:_:);
  v41 = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v39 = &block_descriptor_17;
  v26 = _Block_copy(aBlock);
  v27 = v18;
  v28 = v32;
  v29 = v27;
  swift_unknownObjectRetain();

  v30 = [v28 addObserverForName:v29 object:v12 queue:0 usingBlock:v26];
  _Block_release(v26);

  swift_unknownObjectRelease();
  v16[8] = v30;
  swift_unknownObjectRelease();
  (*(v22 + 8))(v35, a2);
  v39 = v36;
  WitnessTable = swift_getWitnessTable();
  aBlock[0] = v16;
  dispatch thunk of Subscriber.receive(subscription:)();
  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_18082BFC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18082BFFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void Notification.Subscription.request(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + 32);
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    static Subscribers.Demand.unlimited.getter();
    v5 = static Subscribers.Demand.== infix(_:_:)();
    v6 = static Subscribers.Demand.unlimited.getter();
    if ((v5 & 1) == 0)
    {
      if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
      {
        if ((v4 | a1) < 0)
        {
          __break(1u);
          goto LABEL_14;
        }

        v6 = v4 + a1;
        if (!__OFADD__(v4, a1))
        {
          if ((v6 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_14:
          __break(1u);
          return;
        }
      }

      v6 = static Subscribers.Demand.unlimited.getter();
    }

LABEL_9:
    *(v1 + 32) = v6;
  }

  os_unfair_lock_unlock(v3);
}

uint64_t specialized closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char a4@<W4>, uint64_t *a5@<X8>)
{
  result = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5Tm(a1, a2, a3, a4, specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:));
  *a5 = result;
  a5[1] = v7;
  return result;
}

{
  result = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

uint64_t specialized appendedPath #1 <A>() in _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3[168])
  {
    v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v4 = String.subscript.getter();
  }

  v5 = MEMORY[0x1865CAE80](v4);
  v7 = v6;

  v13 = v5;
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8 && v3[72] == 1 && v3[96] == 1 && v3[120] == 1 && v3[144] == 1)
  {
    if (v3[48] != 1)
    {
      String.subscript.getter();

      v12 = *a2;

      return v12;
    }

    v5 = 46;
    v7 = 0xE100000000000000;
    v13 = 46;
  }

  if ((specialized BidirectionalCollection.last.getter(v5, v7) & 0x1FF) == 0x2F || (specialized Collection.first.getter(*a2, *(a2 + 8)) & 0x1FF) == 0x2F)
  {
    if ((specialized BidirectionalCollection.last.getter(v5, v7) & 0x1FF) == 0x2F && (specialized Collection.first.getter(*a2, *(a2 + 8)) & 0x1FF) == 0x2F)
    {
      specialized RangeReplaceableCollection<>.popLast()();
    }
  }

  else
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

  v10 = *a2;
  v9 = *(a2 + 8);

  MEMORY[0x1865CB0E0](v10, v9);

  return v13;
}

double specialized URLComponents._URLComponents.init(parseInfo:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v9[160] = 1;
  v3 = *(a1 + 218);
  *&v10 = a1;
  *(&v10 + 1) = 0x101010101010101;
  v11[0] = 1;
  memset(&v11[8], 0, 72);
  v12[0] = 1;
  memset(&v12[8], 0, 48);
  v12[56] = v3;
  v12[57] = 0;
  v14 = 1;
  v13[0] = a1;
  v13[1] = 0x101010101010101;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v20 = 1;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v24 = v3;
  outlined init with copy of URLComponents._URLComponents(&v10, v9);
  outlined destroy of URLComponents._URLComponents(v13);
  v4 = *&v12[16];
  a2[6] = *v12;
  a2[7] = v4;
  a2[8] = *&v12[32];
  *(a2 + 138) = *&v12[42];
  v5 = *&v11[32];
  a2[2] = *&v11[16];
  a2[3] = v5;
  v6 = *&v11[64];
  a2[4] = *&v11[48];
  a2[5] = v6;
  result = *&v10;
  v8 = *v11;
  *a2 = v10;
  a2[1] = v8;
  return result;
}

Swift::String __swiftcall URLComponents._URLComponents._uncheckedString(original:)(Swift::Bool original)
{
  v2 = v1;
  v102 = *MEMORY[0x1E69E9840];
  if (original && *v1)
  {
    v3 = *(*v1 + 220);
  }

  else
  {
    v3 = 0;
  }

  v96 = 0;
  v97 = 0xE000000000000000;
  if (*(v1 + 32))
  {
    v4 = *(v1 + 24);
    v5 = *(v2 + 32);
LABEL_7:
    *&v101 = v4;
    *(&v101 + 1) = v5;

    MEMORY[0x1865CB0E0](58, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v4, v5);

    goto LABEL_11;
  }

  if ((*(v1 + 9) & 1) != 0 && *v1 && (*(*v1 + 48) & 1) == 0)
  {
    v44 = String.subscript.getter();
    v4 = MEMORY[0x1865CAE80](v44);
    v5 = v45;

    goto LABEL_7;
  }

LABEL_11:
  if (URLComponents._URLComponents.hasAuthority.getter())
  {
    MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
  }

  if ((v3 & 1) != 0 && (v6 = URLComponents._URLComponents.user.getter(), v7) || (v6 = URLComponents._URLComponents.percentEncodedUser.getter(), v8))
  {
    MEMORY[0x1865CB0E0](v6);
  }

  if ((v3 & 2) != 0)
  {
    v9 = URLComponents._URLComponents.password.getter();
    if (v10)
    {
      *&v101 = 58;
      *(&v101 + 1) = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v9);
LABEL_23:

      MEMORY[0x1865CB0E0](v101, *(&v101 + 1));

      goto LABEL_24;
    }
  }

  if (*(v2 + 64))
  {
    v11 = *(v2 + 56);
    v12 = *(v2 + 64);
LABEL_22:
    *&v101 = 58;
    *(&v101 + 1) = 0xE100000000000000;

    MEMORY[0x1865CB0E0](v11, v12);
    goto LABEL_23;
  }

  if ((*(v2 + 11) & 1) != 0 && *v2 && (*(*v2 + 96) & 1) == 0)
  {
    v19 = String.subscript.getter();
    v11 = MEMORY[0x1865CAE80](v19);
    v12 = v20;

    goto LABEL_22;
  }

LABEL_24:
  URLComponents._URLComponents.percentEncodedUser.getter();
  if (v13)
  {
LABEL_27:

    v14 = MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    goto LABEL_28;
  }

  v14 = *(v2 + 64);
  if (v14)
  {
LABEL_26:

    goto LABEL_27;
  }

  if ((*(v2 + 11) & 1) != 0 && *v2 && (*(*v2 + 96) & 1) == 0)
  {
    v33 = String.subscript.getter();
    MEMORY[0x1865CAE80](v33);

    goto LABEL_26;
  }

LABEL_28:
  if ((v3 & 4) == 0)
  {
    goto LABEL_29;
  }

  v101 = *(v2 + 72);
  v17 = *(&v101 + 1);
  if (*(&v101 + 1))
  {
    v18 = v101;
  }

  else if ((*(v2 + 12) & 1) != 0 && *v2 && (*(*v2 + 120) & 1) == 0)
  {
    v46 = String.subscript.getter();
    v18 = MEMORY[0x1865CAE80](v46);
    v17 = v47;
  }

  else
  {
    v14 = URLComponents._URLComponents.port.getter();
    if (v21)
    {
      URLComponents._URLComponents.percentEncodedUser.getter();
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    v18 = 0;
    v17 = 0xE000000000000000;
  }

  v23 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v17 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v17) & 0xF;
  }

  else
  {
    v24 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v100, &_sSSSgMd);

    v15 = 0;
    v29 = 0xE000000000000000;
LABEL_87:
    v16 = v29;
    goto LABEL_88;
  }

  if (*(v2 + 152))
  {
    *&v100 = v18;
    *(&v100 + 1) = v17;
    MEMORY[0x1EEE9AC00](v14);
    v94[0] = &v100;
    v94[1] = MEMORY[0x1E69E7CD0];
    v95 = 4;
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v98, &_sSSSgMd);

    v25 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v92, v18, v17);
    if (v26 == 1)
    {
      v27 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v18, v17, MEMORY[0x1E69E7CD0], 4);
      v29 = v28;
LABEL_84:
      swift_bridgeObjectRelease_n();
LABEL_85:
      if (v29)
      {
        v15 = v27;
        goto LABEL_87;
      }

LABEL_29:
      v15 = URLComponents._URLComponents.encodedHost.getter();
      if (!v16)
      {
LABEL_89:
        if ((*(v2 + 13) & 1) != 0 && *v2 && (*(*v2 + 144) & 1) == 0)
        {
          v66 = String.subscript.getter();
          *&v100 = 58;
          *(&v100 + 1) = 0xE100000000000000;
          v67 = MEMORY[0x1865CAE80](v66);
          v69 = v68;

          MEMORY[0x1865CB0E0](v67, v69);
        }

        else
        {
          v63 = URLComponents._URLComponents.port.getter();
          if (v64)
          {
            goto LABEL_96;
          }

          *&v100 = 58;
          *(&v100 + 1) = 0xE100000000000000;
          v98 = v63;
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v65);
        }

        MEMORY[0x1865CB0E0](v100, *(&v100 + 1));

LABEL_96:
        if ((v3 & 8) != 0)
        {
          v72 = URLComponents._URLComponents.path.getter(v63);
        }

        else
        {
          v100 = *(v2 + 104);
          v70 = *(&v100 + 1);
          if (*(&v100 + 1))
          {
            v71 = v100;
          }

          else if ((*(v2 + 14) & 1) != 0 && *v2)
          {
            if (*(*v2 + 168))
            {
              v74 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
            }

            else
            {
              v74 = String.subscript.getter();
            }

            v71 = MEMORY[0x1865CAE80](v74);
            v70 = v75;
          }

          else
          {
            v71 = 0;
            v70 = 0xE000000000000000;
          }

          outlined init with copy of FloatingPointRoundingRule?(&v100, &v98, &_sSSSgMd);
          v72 = v71;
          v73 = v70;
        }

        MEMORY[0x1865CB0E0](v72, v73);

        if ((v3 & 0x10) != 0 && (v76 = URLComponents._URLComponents.query.getter(), v77))
        {
          v98 = 63;
          v99 = 0xE100000000000000;
          MEMORY[0x1865CB0E0](v76);
        }

        else
        {
          if (*(v2 + 128))
          {
            v78 = *(v2 + 120);
            v79 = *(v2 + 128);
          }

          else
          {
            if (*(v2 + 15) & 1) == 0 || !*v2 || (*(*v2 + 192))
            {
LABEL_115:
              if ((v3 & 0x20) != 0 && (v80 = URLComponents._URLComponents.fragment.getter(), v81))
              {
                v98 = 35;
                v99 = 0xE100000000000000;
                MEMORY[0x1865CB0E0](v80);
              }

              else
              {
                v82 = *(v2 + 144);
                if (v82)
                {
                  v83 = *(v2 + 136);
                  v84 = v82;
                }

                else
                {
                  if (*(v2 + 16) & 1) == 0 || !*v2 || (*(*v2 + 216))
                  {
                    goto LABEL_122;
                  }

                  v89 = String.subscript.getter();
                  v83 = MEMORY[0x1865CAE80](v89);
                  v84 = v90;
                }

                v98 = 35;
                v99 = 0xE100000000000000;

                MEMORY[0x1865CB0E0](v83, v84);
              }

              MEMORY[0x1865CB0E0](v98, v99);

LABEL_122:
              v85 = v96;
              v86 = v97;
              goto LABEL_142;
            }

            v87 = String.subscript.getter();
            v78 = MEMORY[0x1865CAE80](v87);
            v79 = v88;
          }

          v98 = 63;
          v99 = 0xE100000000000000;

          MEMORY[0x1865CB0E0](v78, v79);
        }

        MEMORY[0x1865CB0E0](v98, v99);

        goto LABEL_115;
      }

LABEL_88:
      MEMORY[0x1865CB0E0](v15, v16);

      goto LABEL_89;
    }

    v29 = v26;
LABEL_83:
    v27 = v25;
    goto LABEL_84;
  }

  if ((v17 & 0x1000000000000000) != 0)
  {
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v100, &_sSSSgMd);
  }

  else if ((v17 & 0x2000000000000000) != 0)
  {
    *&v100 = v18;
    *(&v100 + 1) = v17 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v14);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v34);
    v92 = &v100;
    v93 = HIBYTE(v17) & 0xF;
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v98, &_sSSSgMd);

    v25 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v100, v93, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v94, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v29 = v35;
    if (v35 != 1)
    {
      goto LABEL_83;
    }
  }

  else
  {
    if ((v18 & 0x1000000000000000) != 0)
    {
      v30 = (v17 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v14 = _StringObject.sharedUTF8.getter();
      if (!v14)
      {
        outlined init with copy of FloatingPointRoundingRule?(&v101, &v100, &_sSSSgMd);
        v62 = one-time initialization token for idnaTranscoder;

        if (v62 != -1)
        {
          swift_once();
        }

        if (byte_1ED436DC0)
        {
          v29 = 0;
          v25 = 0;
          goto LABEL_83;
        }

        if (swift_stdlib_isStackAllocationSafe())
        {
          __break(1u);
        }

        swift_slowAlloc();
        __break(1u);
        goto LABEL_139;
      }

      v30 = v14;
      v23 = v57;
    }

    MEMORY[0x1EEE9AC00](v14);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v31);
    v92 = v30;
    v93 = v23;
    outlined init with copy of FloatingPointRoundingRule?(&v101, &v100, &_sSSSgMd);

    v25 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v30, v23, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v94, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v29 = v32;
    if (v32 != 1)
    {
      goto LABEL_83;
    }
  }

  *&v100 = v18;
  *(&v100 + 1) = v17;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v36 = String._bridgeToObjectiveCImpl()();

  v37 = [v36 _fastCharacterContents];
  v38 = v36;
  if (v37)
  {
    *&v100 = v18;
    *(&v100 + 1) = v17;
    StringProtocol._ephemeralString.getter();
    v39 = String._bridgeToObjectiveCImpl()();

    v40 = [v39 length];
    v41 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v41);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v42);
    v92 = v37;
    v93 = v40;
    v27 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v37);
    v29 = v43;
    swift_bridgeObjectRelease_n();
    goto LABEL_85;
  }

  *&v100 = v18;
  *(&v100 + 1) = v17;

  v48 = String.init<A>(_:)();
  v50 = v48;
  v51 = v49;
  if ((v49 & 0x1000000000000000) != 0)
  {
    v50 = static String._copying(_:)();
    v59 = v58;

    v51 = v59;
    if ((v59 & 0x2000000000000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_77:
    *&v100 = v50;
    *(&v100 + 1) = v51 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v48);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v60);
    v92 = &v100;
    v93 = v55;
    v54 = &v100;
    goto LABEL_78;
  }

  if ((v49 & 0x2000000000000000) != 0)
  {
    goto LABEL_77;
  }

LABEL_70:
  if ((v50 & 0x1000000000000000) != 0)
  {
    v52 = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_72:
    MEMORY[0x1EEE9AC00](v52);
    LOBYTE(v95) = 0;
    MEMORY[0x1EEE9AC00](v53);
    v92 = v54;
    v93 = v55;
LABEL_78:
    v27 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v54, v55, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v56, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v29 = v61;

    goto LABEL_84;
  }

  v52 = _StringObject.sharedUTF8.getter();
  if (v52)
  {
    goto LABEL_72;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_29;
  }

LABEL_139:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  v85 = swift_slowAlloc();
  __break(1u);
LABEL_142:
  result._object = v86;
  result._countAndFlagsBits = v85;
  return result;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

void *URL.appendingPathComponent(_:isDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 336))(v14, a1, a2, a3, ObjectType, v9);
  v13 = v14[0];
  if (v14[0])
  {
    v9 = v14[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v13 = v10;
  }

  *a4 = v13;
  a4[1] = v9;
  return result;
}

void _BridgedURL.appendingPathComponent(_:isDirectory:)(char a1@<W2>, uint64_t *a2@<X8>)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
  v6 = [v5 URLByAppendingPathComponent:String._bridgeToObjectiveCImpl()() isDirectory:a1 & 1];
  swift_unknownObjectRelease();
  if (v6)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v6, &v66);

    *a2 = v66;
    return;
  }

  v7 = [v5 absoluteString];
  if (!v7)
  {
    v16 = 0xE000000000000000;
    goto LABEL_25;
  }

  v8 = v7;
  isTaggedPointer = _objc_isTaggedPointer(v7);
  v10 = v8;
  v11 = v10;
  if (!isTaggedPointer)
  {
LABEL_9:
    LOBYTE(v64[0]) = 0;
    *&v66 = 0;
    LOBYTE(v54[0]) = 0;
    LOBYTE(v52[0]) = 0;
    if (__CFStringIsCF())
    {

LABEL_14:
      v7 = 0;
      v16 = 0xE000000000000000;
      goto LABEL_25;
    }

    v17 = v11;
    v18 = String.init(_nativeStorage:)();
    if (v19)
    {
      v20 = v18;
      v21 = v19;

      v16 = v21;
      v7 = v20;
      goto LABEL_25;
    }

    *&v66 = [v17 length];
    if (!v66)
    {

      goto LABEL_14;
    }

    v29 = String.init(_cocoaString:)();
    v30 = v31;
    goto LABEL_24;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v10);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag == 22)
    {
      v22 = [v11 UTF8String];
      if (v22)
      {
        v23 = String.init(utf8String:)(v22);
        if (v24)
        {
          v25 = v23;
          v26 = v24;

          v7 = v25;
          v16 = v26;
          goto LABEL_25;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_63;
    }

    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v13 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v15 = v14;

      v16 = v15;
      v7 = v13;
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  LOWORD(v54[0]) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v27 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
  }

  else
  {
    [v11 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v30 = *(&v64[0] + 1);
    v29 = *&v64[0];
  }

LABEL_24:

  v16 = v30;
  v7 = v29;
LABEL_25:
  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v7, v16, 1, v64);
  v72 = v64[6];
  v73[0] = v64[7];
  v73[1] = v65[0];
  *(&v73[1] + 10) = *(v65 + 10);
  v68 = v64[2];
  v69 = v64[3];
  v70 = v64[4];
  v71 = v64[5];
  v66 = v64[0];
  v67 = v64[1];
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v66) == 1)
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v60 = v70;
  v61 = v71;
  v62 = v72;
  v56 = v66;
  v57 = v67;
  v58 = v68;
  v59 = v69;
  WORD4(v63[2]) = WORD4(v73[2]);
  *(&v63[1] + 8) = *(&v73[1] + 8);
  *(v63 + 8) = *(v73 + 8);
  *&v63[0] = *&v73[0];
  URLComponents.path.getter();
  v32 = String._bridgeToObjectiveCImpl()();

  v33 = [v32 stringByAppendingPathComponent_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v33)
  {
    goto LABEL_49;
  }

  v34 = _objc_isTaggedPointer(v33);
  v35 = v33;
  v36 = v35;
  if (v34)
  {
    v37 = _objc_getTaggedPointerTag(v35);
    if (!v37)
    {
      goto LABEL_44;
    }

    if (v37 != 22)
    {
      if (v37 == 2)
      {
        MEMORY[0x1EEE9AC00](v37);
        v38 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v40 = v39;

        if ((a1 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      goto LABEL_34;
    }

    v44 = [v36 UTF8String];
    if (v44)
    {
      v45 = String.init(utf8String:)(v44);
      if (v46)
      {
        goto LABEL_45;
      }

      __break(1u);
LABEL_44:
      _CFIndirectTaggedPointerStringGetContents();
      v45 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v46)
      {
        [v36 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v40 = *(&v52[0] + 1);
        v38 = *&v52[0];

        if ((a1 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

LABEL_45:
      v38 = v45;
      v40 = v46;

      if ((a1 & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_63:
    __break(1u);
    return;
  }

LABEL_34:
  LOBYTE(v52[0]) = 0;
  *&v54[0] = 0;
  if (__CFStringIsCF())
  {
    v38 = *&v54[0];

    v40 = 0xE000000000000000;
    if ((a1 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v41 = v36;
  v42 = String.init(_nativeStorage:)();
  if (v43)
  {
    v38 = v42;
    v40 = v43;

    if ((a1 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  *&v54[0] = [v41 length];
  if (*&v54[0])
  {
    v38 = String.init(_cocoaString:)();
    v40 = v51;

    if ((a1 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_49:
  v38 = 0;
  v40 = 0xE000000000000000;
  if (a1)
  {
LABEL_50:
    *&v54[0] = v38;
    *(&v54[0] + 1) = v40;

    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

LABEL_51:
  BYTE8(v56) = 0;
  BYTE14(v56) = 0;
  v47 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v47 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v48 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v38, v40, 0);
    v50 = v49;
  }

  else
  {

    v48 = 0;
    v50 = 0xE000000000000000;
  }

  *(&v62 + 1) = v48;
  *&v63[0] = v50;
  v53[0] = v63[1];
  *(v53 + 10) = *(&v63[1] + 10);
  v52[2] = v58;
  v52[3] = v59;
  v52[4] = v60;
  v52[5] = v61;
  v52[0] = v56;
  v52[1] = v57;
  v52[6] = v62;
  v52[7] = v63[0];
  outlined init with copy of URLComponents(v52, v54);
  URLComponents.url.getter(a2);
  v54[6] = v62;
  v54[7] = v63[0];
  v55[0] = v63[1];
  *(v55 + 10) = *(&v63[1] + 10);
  v54[2] = v58;
  v54[3] = v59;
  v54[4] = v60;
  v54[5] = v61;
  v54[0] = v56;
  v54[1] = v57;
  outlined destroy of URLComponents(v54);
  outlined destroy of URLComponents(v52);
}

void protocol witness for _URLProtocol.baseURL.getter in conformance _BridgedURL(SEL *a1@<X2>, _OWORD *a2@<X8>)
{
  v4 = [*(v2 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) *a1];
  if (v4)
  {
    v5 = v4;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v4, &v7);

    v6 = v7;
  }

  else
  {
    v6 = 0uLL;
  }

  *a2 = v6;
}

uint64_t outlined consume of _CodingPathNode?(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t JSONEncoder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 2;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 120) = 0;
  *(v0 + 128) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 136) = v2;
  return v0;
}

uint64_t get_enum_tag_for_layout_string_s8Sendable_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t one-time initialization function for vmOpsThreshold()
{
  if (one-time initialization token for _pageSize != -1)
  {
    result = swift_once();
  }

  if ((_pageSize - 0x2000000000000000) >> 62 == 3)
  {
    static __DataStorage.vmOpsThreshold = 4 * _pageSize;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int one-time initialization function for _pageSize()
{
  result = _platform_shims_vm_size();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    _pageSize = result;
  }

  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CGPoint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  return [objc_allocWithZone(NSValue) initWithBytes:&v5 objCType:a3];
}

uint64_t _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  result = _ArrayBuffer.capacity.getter();
  if ((a3 & 1) != 0 && result < a2 && result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a4 < 0 || (a4 & 0x4000000000000000) != 0))
    {
      goto LABEL_27;
    }

    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v12 = a4 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v12 = a4;
    }

    for (i = *(v12 + 16); ; i = __CocoaSet.count.getter())
    {
      v14 = _ContiguousArrayBuffer.init(_uninitializedCount:minimumCapacity:)();
      if (a1)
      {
        break;
      }

      if ((i & 0x8000000000000000) == 0)
      {
        _ArrayBuffer._copyContents(subRange:initializing:)();
        return v14;
      }

      __break(1u);
LABEL_27:
      specialized _ArrayBuffer._nonNative.getter(a4);
    }

    if (_swift_isClassOrObjCExistentialType())
    {
      v15 = a4 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v15 = a4;
    }

    v16 = *(a5 - 8);
    if (v14 < v15 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v14 + v17 >= v15 + v17 + *(v16 + 72) * i))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != v15)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (_swift_isClassOrObjCExistentialType())
    {
      v18 = a4 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v18 = a4;
    }

    *(v18 + 16) = 0;

    return v14;
  }

  return result;
}

void closure #1 in static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *, char *, uint64_t), uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9)
{
  v80 = a7;
  v85 = a5;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v76 = v13;
  v77 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v72 - v19;
  v87 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v83 = &v72 - v23;
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  v78 = v24;
  v79 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v74 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v72 - v31;
  v33 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v72 - v39;
  v88 = a1;
  if (!a1)
  {
    goto LABEL_44;
  }

  if (a3)
  {
    [v85 _getObjects_andKeys_count_];
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v81 = a6;
    v86 = a3;
    if (isClassOrObjCExistentialType)
    {
      if (a6 >= 1)
      {
        v42 = v88 - 8;
        v43 = a6;
        while (1)
        {
          v89 = *(v42 + 8 * v43);
          swift_unknownObjectRetain();
          v44 = swift_dynamicCast();
          v45 = *(v33 + 56);
          if (!v44)
          {
            break;
          }

          --v43;
          v45(v27, 0, 1, a8);
          v46 = *(v33 + 32);
          v46(v36, v27, a8);
          v46((v88 + *(v33 + 72) * v43), v36, a8);
          if ((v43 + 1) <= 1)
          {
            goto LABEL_18;
          }
        }

        v45(v27, 1, 1, a8);
        (*(v79 + 8))(v27, v78);
        goto LABEL_36;
      }
    }

    else if (a6 >= 1)
    {
      v47 = (v33 + 56);
      v72 = (v79 + 32);
      v43 = a6;
      v85 = (v88 - 8);
      while (1)
      {
        v48 = v85[v43];
        swift_unknownObjectRetain();
        if (_swift_isClassOrObjCExistentialType())
        {
          v89 = v48;
          v49 = swift_dynamicCast();
          (*v47)(v32, v49 ^ 1u, 1, a8);
        }

        else
        {
          (*v47)(v74, 1, 1, a8);
          _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
          swift_unknownObjectRelease();
          (*v72)(v32, v74, v78);
        }

        if ((*(v33 + 48))(v32, 1, a8) == 1)
        {
          break;
        }

        --v43;
        v50 = *(v33 + 32);
        v50(v40, v32, a8);
        v50((v88 + *(v33 + 72) * v43), v40, a8);
        if ((v43 + 1) <= 1)
        {
          goto LABEL_18;
        }
      }

      (*(v79 + 8))(v32, v78);
      goto LABEL_36;
    }

    v43 = a6;
    if (a6)
    {
LABEL_36:
      if (!__OFSUB__(v81, v43))
      {
        swift_arrayDestroy();
        *v80 = 0;
        return;
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_18:
    *v80 = 1;
    if (_swift_isClassOrObjCExistentialType())
    {
      v51 = v81;
      if (v81 >= 1)
      {
        v52 = (v87 + 56);
        v53 = v86 - 8;
        v54 = v81;
        v55 = v75;
        v56 = v87;
        while (1)
        {
          v89 = *(v53 + 8 * v54);
          swift_unknownObjectRetain();
          v57 = swift_dynamicCast();
          v58 = *v52;
          if (!v57)
          {
            break;
          }

          --v54;
          v58(v55, 0, 1, a9);
          v59 = *(v56 + 32);
          v60 = v82;
          v59(v82, v55, a9);
          v59((v86 + *(v56 + 72) * v54), v60, a9);
          if ((v54 + 1) <= 1)
          {
            goto LABEL_33;
          }
        }

        v58(v55, 1, 1, a9);
        (*(v77 + 8))(v55, v76);
        goto LABEL_40;
      }
    }

    else
    {
      v51 = v81;
      if (v81 >= 1)
      {
        v61 = (v87 + 56);
        v85 = (v77 + 32);
        v62 = (v87 + 48);
        v63 = v86 - 8;
        v54 = v81;
        v64 = v83;
        while (1)
        {
          v65 = *(v63 + 8 * v54);
          swift_unknownObjectRetain();
          if (_swift_isClassOrObjCExistentialType())
          {
            v89 = v65;
            v66 = v84;
            v67 = swift_dynamicCast();
            (*v61)(v66, v67 ^ 1u, 1, a9);
          }

          else
          {
            v71 = v73;
            (*v61)(v73, 1, 1, a9);
            _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
            swift_unknownObjectRelease();
            v66 = v84;
            (*v85)(v84, v71, v76);
          }

          if ((*v62)(v66, 1, a9) == 1)
          {
            break;
          }

          --v54;
          v68 = v87;
          v69 = v66;
          v70 = *(v87 + 32);
          v70(v64, v69, a9);
          v70((v86 + *(v68 + 72) * v54), v64, a9);
          if ((v54 + 1) <= 1)
          {
            goto LABEL_33;
          }
        }

        (*(v77 + 8))(v66, v76);
        goto LABEL_40;
      }
    }

    v54 = v51;
    if (!v51)
    {
LABEL_33:
      *v80 = 1;
      return;
    }

LABEL_40:
    if (!__OFSUB__(v81, v54))
    {
      swift_arrayDestroy();
      *v80 = 0;
      swift_arrayDestroy();
      return;
    }

    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CGSize(uint64_t a1, uint64_t a2)
{

  return protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CGPoint(a1, a2, "{CGSize=dd}");
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(uint64_t a1, void *a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeNil(forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:)) & 1;
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(a1, a2, a3, _PlistKeyedDecodingContainer.decode(_:forKey:));
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void, void, void, void))
{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
}

uint64_t _PlistDecoder.unwrapString<A>(from:for:_:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v43 = a5;
  v44 = a3;
  v11 = *v5;
  v12 = *(a4 - 8);
  v41 = v6;
  v42 = v12;
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = *(v11 + 80);
  v22 = *(v11 + 88);
  if ((*(v22 + 40))(a1, v21, v22, v18))
  {
    v39 = a2;
    v41 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    *v23 = MEMORY[0x1E69E6158];
    v25 = *(v45 + 16);
    v25(v20, v44, v14);
    v25(v16, v20, v14);
    v26 = v42;
    if ((*(v42 + 48))(v16, 1, a4) == 1)
    {
      v27 = *(v45 + 8);
      v27(v16, v14);
      v28 = _CodingPathNode.path.getter(v39);
      v27(v20, v14);
    }

    else
    {
      v31 = *(v26 + 32);
      v44 = v24;
      v32 = v40;
      v31(v40, v16, a4);
      v33 = _CodingPathNode.path.getter(v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v35 = v43;
      *(inited + 56) = a4;
      *(inited + 64) = v35;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v26 + 16))(boxed_opaque_existential_0, v32, a4);
      v46 = v33;
      specialized Array.append<A>(contentsOf:)(inited);
      v37 = v32;
      v24 = v44;
      (*(v26 + 8))(v37, a4);
      (*(v45 + 8))(v20, v14);
      v28 = v46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v41 - 8) + 104))(v24, *MEMORY[0x1E69E6B08]);
    swift_willThrow();
  }

  else
  {
    v29 = v7[3];
    v30 = *(v22 + 72);
    swift_unknownObjectRetain();
    v28 = v30(a1, v29, a2, v44, a4, v43, v21, v22);
    swift_unknownObjectRelease();
  }

  return v28;
}

char *_PlistKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a4;
  v66 = a3;
  v67 = a2;
  v13 = type metadata accessor for Optional();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v49 - v14;
  swift_getAssociatedTypeWitness();
  v58 = a6;
  v59 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v53 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v49 - v19;
  v20 = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  v61 = v20;
  v60 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v49 = &v49 - v26;
  v62 = a1;
  v64 = a5;
  v65 = a7;
  v27 = dispatch thunk of CodingKey.stringValue.getter();
  v29 = v66;
  if (!*(v66 + 16))
  {

    goto LABEL_6;
  }

  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_6:
    (*(v60 + 56))(v24, 1, 1, v61);
    (*(v22 + 8))(v24, v21);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v62, v63, v64, v65, v41, &_sSSmMd, &_sSSmMR, &_sSSmmMd);
    swift_willThrow();
    return v24;
  }

  v34 = v55;
  v33 = v56;
  v35 = *(v29 + 56) + *(v55 + 72) * v30;
  v36 = v53;
  (*(v55 + 16))(v53, v35, v56);
  v37 = v54;
  (*(v34 + 32))(v54, v36, v33);
  v38 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v39 = swift_checkMetadataState();
  v40 = v57;
  v38(v37, v39, AssociatedConformanceWitness);
  (*(v34 + 8))(v37, v33);
  swift_unknownObjectRelease();
  if (!v40)
  {
    v44 = v60;
    v43 = v61;
    (*(v60 + 56))(v24, 0, 1, v61);
    v45 = v49;
    (*(v44 + 32))(v49, v24, v43);
    v46 = v64;
    v47 = *(v64 - 8);
    v48 = v50;
    (*(v47 + 16))(v50, v62, v64);
    (*(v47 + 56))(v48, 0, 1, v46);
    v24 = _PlistDecoder.unwrapString<A>(from:for:_:)(v45, v63, v48, v46, v65);
    (*(v51 + 8))(v48, v52);
    (*(v44 + 8))(v45, v43);
  }

  return v24;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t BPlistScanner.scanInteger(rawTypeMarker:index:objectRangeEndIndex:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result & 0xF;
  if (v4 > 4)
  {
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    return swift_willThrow();
  }

  v6 = 1 << v4;
  v7 = (a2 + 1);
  if (a3 - (a2 + 1) < 1 << v4)
  {
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v8 = xmmword_181247320;
    return swift_willThrow();
  }

  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[4];
  v13 = (1 << v4);
  if (v13 <= 3)
  {
    switch(v13)
    {
      case 1u:
        if (v12 < v11)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if ((v11 - v9) < 0)
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if ((v12 - v11) < 0)
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if ((v9 + v10 - v12) < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v14 = *v7;
        break;
      case 2u:
        if (v12 < v11)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if ((v11 - v9) < 0)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if ((v12 - v11) < 0)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        if ((v9 + v10 - v12) < 0)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v14 = __rev16(*(a2 + 1));
        break;
      case 3u:
LABEL_12:
        if (v12 < v11)
        {
          __break(1u);
        }

        else if ((v11 - v9) >= 0)
        {
          if ((v12 - v11) >= 0)
          {
            if ((v9 + v10 - v12) >= 0)
            {
              v14 = 0;
              do
              {
                v15 = *v7++;
                v14 = v15 | (v14 << 8);
                --v6;
              }

              while (v6);
              break;
            }

            goto LABEL_51;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_50;
      default:
        goto LABEL_36;
    }

LABEL_47:
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v4 != 4;
    return v17 | 0x8000000000000000;
  }

  if (v13 - 5 < 3)
  {
    goto LABEL_12;
  }

  if (v13 != 4)
  {
    if (v13 == 8)
    {
      if (v12 >= v11)
      {
        if ((v11 - v9) >= 0)
        {
          if ((v12 - v11) >= 0)
          {
            if ((v9 + v10 - v12) >= 0)
            {
              v16 = *(a2 + 1);
LABEL_41:
              v14 = bswap64(v16);
              goto LABEL_47;
            }

            goto LABEL_70;
          }

          goto LABEL_68;
        }

        goto LABEL_66;
      }

      goto LABEL_64;
    }

LABEL_36:
    if (v12 >= v11)
    {
      if ((v11 - v9) >= 0)
      {
        if ((v12 - v11) >= 0)
        {
          if ((v9 + v10 - v12) >= 0)
          {
            v16 = *&v7[v6 - 8];
            goto LABEL_41;
          }

          goto LABEL_63;
        }

LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v12 < v11)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if ((v11 - v9) < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v12 - v11) < 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if ((v9 + v10 - v12) >= 0)
  {
    v14 = bswap32(*(a2 + 1));
    goto LABEL_47;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t BPlistMap.Value.integerValue<A, B>(in:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v152 = a7;
  v153 = a3;
  v154 = a2;
  v155 = a4;
  v149 = a8;
  v156 = *(a6 - 8);
  v150 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v148 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v141 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v142 = &v141 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v141 - v16;
  v157 = v18;
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v159 = v19;
  v160 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v151 = &v141 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v145 = &v141 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v147 = &v141 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v144 = &v141 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v146 = &v141 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v141 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v141 - v37;
  v39 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v141 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v141 - v43;
  v49 = MEMORY[0x1EEE9AC00](v45);
  v51 = &v141 - v50;
  if (v47 >> 60 != 7)
  {
    if (v47 >> 60 != 8)
    {
      v77 = v47;
      v79 = v159;
      v78 = v160;
      v80 = *(v160 + 16);
      v81 = v151;
      v80(v151, v155, v159, v49);
      (v80)(v22, v81, v79);
      v83 = v156;
      v82 = v157;
      if ((*(v156 + 48))(v22, 1, v157) == 1)
      {
        v84 = *(v78 + 8);
        v84(v22, v79);
        _CodingPathNode.path.getter(v153);
        v84(v81, v79);
      }

      else
      {
        v108 = v148;
        (*(v83 + 32))(v148, v22, v82);
        v109 = v82;
        v110 = _CodingPathNode.path.getter(v153);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v112 = v150;
        *(inited + 56) = v109;
        *(inited + 64) = v112;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v83 + 16))(boxed_opaque_existential_0, v108, v109);
        v162 = v110;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v83 + 8))(v108, v109);
        (*(v78 + 8))(v151, v79);
      }

      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5Tm(v154, v77, BPlistMap.Value.debugDataTypeDescription.getter, v114);

      return swift_willThrow();
    }

    v52 = v48;
    v53 = v46;
    v54 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    if (*((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
    {
      v162 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of Numeric.init<A>(exactly:)();
      v55 = *(a5 - 8);
      if ((*(v55 + 48))(v41, 1, a5) == 1)
      {
        (*(v52 + 8))(v41, v53);
        v162 = 0;
        v163 = 0xE000000000000000;
        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
        v161 = v54;
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v56);

        MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
        v57 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v57);

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v154 = v162;
        v152 = v163;
        v58 = type metadata accessor for DecodingError();
        v59 = swift_allocError();
        v151 = v60;
        v62 = v159;
        v61 = v160;
        v63 = *(v160 + 16);
        v64 = v147;
        v63(v147, v155, v159);
        v65 = v145;
        v63(v145, v64, v62);
        v66 = v65;
        v68 = v156;
        v67 = v157;
        if ((*(v156 + 48))(v66, 1, v157) == 1)
        {
          v69 = *(v61 + 8);
          v69(v66, v62);
          _CodingPathNode.path.getter(v153);
          v69(v64, v62);
        }

        else
        {
          v125 = v143;
          (*(v68 + 32))(v143, v66, v67);
          v126 = _CodingPathNode.path.getter(v153);
          v158 = v59;
          v127 = v67;
          v128 = v126;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
          v129 = swift_initStackObject();
          *(v129 + 16) = xmmword_181218E20;
          v130 = v150;
          *(v129 + 56) = v127;
          *(v129 + 64) = v130;
          v131 = __swift_allocate_boxed_opaque_existential_0((v129 + 32));
          (*(v68 + 16))(v131, v125, v127);
          v162 = v128;
          specialized Array.append<A>(contentsOf:)(v129);
          (*(v68 + 8))(v125, v127);
          (*(v61 + 8))(v147, v62);
        }

LABEL_37:
        v139 = v151;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v58 - 8) + 104))(v139, *MEMORY[0x1E69E6B00]);
        return swift_willThrow();
      }

      v51 = v41;
    }

    else
    {
      v162 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      dispatch thunk of Numeric.init<A>(exactly:)();
      v55 = *(a5 - 8);
      if ((*(v55 + 48))(v44, 1, a5) == 1)
      {
        (*(v52 + 8))(v44, v53);
        v162 = 0;
        v163 = 0xE000000000000000;
        _StringGuts.grow(_:)(52);
        MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
        v161 = v54;
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v85);

        MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
        v86 = _typeName(_:qualified:)();
        MEMORY[0x1865CB0E0](v86);

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v154 = v162;
        v152 = v163;
        v58 = type metadata accessor for DecodingError();
        v87 = swift_allocError();
        v151 = v88;
        v90 = v159;
        v89 = v160;
        v91 = *(v160 + 16);
        v92 = v146;
        v91(v146, v155, v159);
        v93 = v144;
        v91(v144, v92, v90);
        v94 = v93;
        v96 = v156;
        v95 = v157;
        if ((*(v156 + 48))(v94, 1, v157) == 1)
        {
          v97 = *(v89 + 8);
          v97(v94, v90);
          _CodingPathNode.path.getter(v153);
          v97(v92, v90);
        }

        else
        {
          v132 = v142;
          (*(v96 + 32))(v142, v94, v95);
          v133 = _CodingPathNode.path.getter(v153);
          v158 = v87;
          v134 = v95;
          v135 = v133;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
          v136 = swift_initStackObject();
          *(v136 + 16) = xmmword_181218E20;
          v137 = v150;
          *(v136 + 56) = v134;
          *(v136 + 64) = v137;
          v138 = __swift_allocate_boxed_opaque_existential_0((v136 + 32));
          (*(v96 + 16))(v138, v132, v134);
          v162 = v135;
          specialized Array.append<A>(contentsOf:)(v136);
          (*(v96 + 8))(v132, v134);
          (*(v89 + 8))(v146, v90);
        }

        goto LABEL_37;
      }

      v51 = v44;
    }

    return (*(v55 + 32))(v149, v51, a5);
  }

  v151 = v35;
  v147 = v17;
  v148 = v38;
  v70 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v71 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  if (v71 == 8)
  {
    v72 = v48;
    v73 = v46;
    v74 = *((v47 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v75 = v159;
    v76 = v160;
    if ((~v70 & 0x7FF0000000000000) == 0 && (v70 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v74 = NAN;
    }

LABEL_25:
    v162 = *&v74;
    lazy protocol witness table accessor for type Double and conformance Double();
    dispatch thunk of BinaryInteger.init<A>(exactly:)();
    v55 = *(a5 - 8);
    if ((*(v55 + 48))(v51, 1, a5) == 1)
    {
      (*(v72 + 8))(v51, v73);
      v162 = 0;
      v163 = 0xE000000000000000;
      _StringGuts.grow(_:)(45);
      MEMORY[0x1865CB0E0](0xD000000000000016, 0x80000001814848F0);
      Double.write<A>(to:)();
      MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
      v99 = _typeName(_:qualified:)();
      MEMORY[0x1865CB0E0](v99);

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v159 = v162;
      v154 = v163;
      v160 = type metadata accessor for DecodingError();
      v100 = swift_allocError();
      v152 = v101;
      v102 = *(v76 + 16);
      v103 = v148;
      v102(v148, v155, v75);
      v104 = v151;
      v102(v151, v103, v75);
      v106 = v156;
      v105 = v157;
      if ((*(v156 + 48))(v104, 1, v157) == 1)
      {
        v107 = *(v76 + 8);
        v107(v104, v75);
        _CodingPathNode.path.getter(v153);
        v107(v103, v75);
      }

      else
      {
        v116 = v104;
        v117 = v147;
        (*(v106 + 32))(v147, v116, v105);
        v118 = _CodingPathNode.path.getter(v153);
        v158 = v100;
        v119 = v105;
        v120 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v121 = swift_initStackObject();
        *(v121 + 16) = xmmword_181218E20;
        v122 = v150;
        *(v121 + 56) = v119;
        *(v121 + 64) = v122;
        v123 = __swift_allocate_boxed_opaque_existential_0((v121 + 32));
        (*(v106 + 16))(v123, v117, v119);
        v162 = v120;
        specialized Array.append<A>(contentsOf:)(v121);
        (*(v106 + 8))(v117, v119);
        (*(v76 + 8))(v103, v75);
      }

      v124 = v152;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v160 - 8) + 104))(v124, *MEMORY[0x1E69E6B00]);
      return swift_willThrow();
    }

    return (*(v55 + 32))(v149, v51, a5);
  }

  v75 = v159;
  v76 = v160;
  if (v71 == 4)
  {
    v71 = v158;
    if (!HIDWORD(v70))
    {
      v72 = v48;
      v73 = v46;
      if ((v70 & 0x7FFFFF) != 0 && (~v70 & 0x7F800000) == 0)
      {
        v74 = NAN;
      }

      else
      {
        v74 = *&v70;
      }

      goto LABEL_25;
    }

    __break(1u);
  }

  v162 = 0;
  v163 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v162 = 0xD000000000000023;
  v163 = 0x80000001814848C0;
  v161 = v71;
  v140 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v140);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void type metadata completion function for _PlistUnkeyedDecodingContainer()
{
  type metadata accessor for _PlistDecoder();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Int?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Int?()
{
  if (!lazy cache variable for type metadata for Int?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int?);
    }
  }
}

uint64_t _PlistDecoder.singleValueContainer()@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for _PlistDecoder();
  a1[4] = swift_getWitnessTable();
  *a1 = v1;
}

uint64_t _PlistDecoder.decode(_:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v20 = &v18 - v11;
  v12 = *(v0 + 16);

  if (MEMORY[0x1865CB560](v13, AssociatedTypeWitness))
  {
    v19 = v0;
    v21 = v12;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    (*(v3 + 16))(v5, v8, v2);
    if ((*(v9 + 48))(v5, 1, AssociatedTypeWitness) != 1)
    {

      (*(v3 + 8))(v8, v2);
      v14 = v20;
      (*(v9 + 32))(v20, v5, AssociatedTypeWitness);
      v15 = *(v19 + 40);

      v16 = specialized _PlistDecoder.unwrapString<A>(from:for:_:)(v14, v15, 0, 0, 0, 255);
      (*(v9 + 8))(v14, AssociatedTypeWitness);

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v3 + 8))(v5, v2);
  __break(1u);
  return result;
}

{
  v2 = v0;
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  v33 = v4;
  v34 = v3;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v32 - v15;
  v16 = *(v2 + 16);

  if (MEMORY[0x1865CB560](v17, AssociatedTypeWitness))
  {
    v32 = v1;
    v36[0] = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v38 = v13;
    BidirectionalCollection.last.getter();
    v18 = v38;
    (*(v7 + 16))(v9, v12, v6);
    if ((*(v18 + 48))(v9, 1, AssociatedTypeWitness) != 1)
    {

      (*(v7 + 8))(v12, v6);
      v19 = v35;
      (*(v18 + 32))(v35, v9, AssociatedTypeWitness);
      v20 = *(v2 + 40);
      memset(v36, 0, sizeof(v36));
      v37 = -1;
      v21 = v33;
      v22 = v34;
      if ((*(v34 + 40))(v19, v33, v34))
      {
        v23 = type metadata accessor for DecodingError();
        swift_allocError();
        v25 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
        *v25 = MEMORY[0x1E69E6370];

        _CodingPathNode.path.getter(v20);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B08], v23);
        swift_willThrow();
      }

      else
      {
        LOBYTE(v23) = v22 + 48;
        v26 = *(v22 + 48);
        v27 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();

        v28 = v27;
        v29 = v32;
        v30 = v26(v19, v20, v36, &type metadata for _CodingKey, v28, v21, v22);
        if (!v29)
        {
          LOBYTE(v23) = v30;
          (*(v38 + 8))(v19, AssociatedTypeWitness);

          return v23 & 1;
        }
      }

      (*(v38 + 8))(v19, AssociatedTypeWitness);

      return v23 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v7 + 8))(v9, v6);
  __break(1u);
  return result;
}

{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v20 = v0;
  v14 = *(v0 + 16);

  if (MEMORY[0x1865CB560](v15, AssociatedTypeWitness))
  {
    v18 = v1;
    v21 = v14;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v2 = v19;
    (*(v4 + 16))(v6, v9, v19);
    if ((*(v10 + 48))(v6, 1, AssociatedTypeWitness) != 1)
    {

      (*(v4 + 8))(v9, v2);
      (*(v10 + 32))(v13, v6, AssociatedTypeWitness);
      v16 = *(v20 + 40);

      specialized _PlistDecoder.unwrapFloatingPoint<A, B>(from:for:_:)(v13, v16, 0, 0, 0, 255);
      (*(v10 + 8))(v13, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v4 + 8))(v6, v2);
  __break(1u);
  return result;
}

{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v20 = v0;
  v14 = *(v0 + 16);

  if (MEMORY[0x1865CB560](v15, AssociatedTypeWitness))
  {
    v18 = v1;
    v21 = v14;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v2 = v19;
    (*(v4 + 16))(v6, v9, v19);
    if ((*(v10 + 48))(v6, 1, AssociatedTypeWitness) != 1)
    {

      (*(v4 + 8))(v9, v2);
      (*(v10 + 32))(v13, v6, AssociatedTypeWitness);
      v16 = *(v20 + 40);

      specialized _PlistDecoder.unwrapFloatingPoint<A, B>(from:for:_:)(v13, v16, 0, 0, 0, 255);
      (*(v10 + 8))(v13, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v4 + 8))(v6, v2);
  __break(1u);
  return result;
}

uint64_t specialized _PlistDecoder.unwrapString<A>(from:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v28 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E6158];
    if (a6 == -1)
    {
      v20 = _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      v20 = _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v22 = swift_allocObject();
      *(inited + 32) = v22;
      *(v22 + 16) = a3;
      *(v22 + 24) = a4;
      *(v22 + 32) = a5;
      *(v22 + 40) = a6;
      v29 = v20;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
  }

  else
  {
    v23 = v7[3];
    v24 = *(v16 + 72);
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v20 = v24(a1, v23, a2, v27, &type metadata for _CodingKey, v25, v15, v16);
    swift_unknownObjectRelease();
  }

  return v20;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _PlistDecoder<A>()
{
  return _PlistDecoder.decode(_:)();
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)() & 1;
}

{
  return _PlistDecoder.decode(_:)();
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)();
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

{
  return _PlistDecoder.decode(_:)(specialized _PlistDecoder.unwrapFixedWidthInteger<A, B>(from:for:_:));
}

uint64_t _PlistUnkeyedDecodingContainer.decode<A>(_:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a5;
  v73 = a4;
  v81 = a1;
  v82 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v60 - v10;
  v78 = v8;
  v83 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v60 - v12;
  v77 = AssociatedConformanceWitness;
  v75 = AssociatedTypeWitness;
  v13 = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v21 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v67 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v71 = &v60 - v29;
  v30 = *(v15 + 16);
  v66 = *(a2 + 40);
  v30(v17, &v84[v66], v14, v28);
  v79 = *(v21 + 48);
  v31 = v79(v17, 1, v13);
  v80 = v14;
  v74 = v15;
  if (v31 == 1)
  {
    v60 = v21 + 48;
    v63 = v20;
    v64 = v13;
    v62 = v21;
    v61 = *(v15 + 8);
    v61(v17, v14);
    v65 = a2;
    v32 = v77;
    swift_getAssociatedTypeWitness();
    v33 = swift_getAssociatedConformanceWitness();
    v34 = *(v33 + 16);
    v35 = swift_checkMetadataState();
    v36 = v84;
    v37 = v76;
    v34(v35, v33);
    v38 = v78;
    if ((*(v83 + 48))(v37, 1, v78) == 1)
    {
      (*(v68 + 8))(v37, v69);
      v39 = v63;
      (*(v62 + 56))(v63, 1, 1, v64);
      v40 = v82;
      v41 = v65;
      v61(v39, v80);
LABEL_7:
      type metadata accessor for DecodingError();
      v44 = swift_allocError();
      _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v81, v41, v40, v45);
      v85 = v44;
      return swift_willThrow();
    }

    v51 = v70;
    (*(v83 + 32))(v70, v37, v38);
    v52 = *(v32 + 80);
    swift_unknownObjectRetain();
    v53 = v51;
    v54 = swift_checkMetadataState();
    v55 = v67;
    v56 = v85;
    v52(v53, v54, v32);
    v85 = v56;
    if (v56)
    {
      (*(v83 + 8))(v53, v38);
      return swift_unknownObjectRelease();
    }

    (*(v83 + 8))(v53, v38);
    swift_unknownObjectRelease();
    v58 = v66;
    v61(&v36[v66], v80);
    v21 = v62;
    v13 = v64;
    (*(v62 + 16))(&v36[v58], v55, v64);
    v43 = *(v21 + 56);
    (v43)(&v36[v58], 0, 1, v13);
    v42 = *(v21 + 32);
    v59 = v55;
    v20 = v63;
    v42(v63, v59, v13);
    (v43)(v20, 0, 1, v13);
    v41 = v65;
  }

  else
  {
    v42 = *(v21 + 32);
    v42(v26, v17, v13);
    v42(v20, v26, v13);
    v43 = *(v21 + 56);
    (v43)(v20, 0, 1, v13);
    v36 = v84;
    v41 = a2;
  }

  if (v79(v20, 1, v13) == 1)
  {
    v40 = v82;
    (*(v74 + 8))(v20, v80);
    goto LABEL_7;
  }

  v84 = v43;
  v47 = v71;
  v42(v71, v20, v13);
  v48 = *(v41 + 48);
  v49 = *&v36[v48];
  v50 = v85;
  specialized _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)(v47, v81, *&v36[*(v41 + 52)], v49, 0, 0, 2u, v82, v72, v73);
  v85 = v50;
  if (v50)
  {
    return (*(v21 + 8))(v47, v13);
  }

  (*(v21 + 8))(v47, v13);
  *&v36[v48] = v49 + 1;
  v57 = v66;
  (*(v74 + 8))(&v36[v66], v80);
  return (v84)(&v36[v57], 1, 1, v13);
}

void protocol witness for PlistArrayIterator.next() in conformance BPlistMap.ArrayIterator(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
LABEL_5:
    *a1 = v4;
    *(a1 + 8) = v2 == v3;
    return;
  }

  if (v2 < v3)
  {
    v4 = *(*v1 + 8 * v2 + 32);
    v1[1] = v2 + 1;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t PropertyListDecoder.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v84 = a7;
  v79 = a6;
  v82 = a4;
  v87 = a1;
  v88 = a3;
  v90 = a2;
  v81 = a8;
  v10 = *(*v8 + 88);
  v11 = *(*v8 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v77 = v75 - v12;
  v83 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v76 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v75 - v16;
  v89 = a5;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v75 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v75 - v25;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = v75 - v31;
  if (v28 != &type metadata for Date)
  {
    v75[3] = v11;
    v75[2] = v10;
    if (v28 != &type metadata for Data)
    {
      v75[1] = v28;
      v33 = *(v29 + 16);
      v34 = v29;
      v33(v23, v88, v18, v30);
      (v33)(v20, v23, v18);
      v35 = v83;
      v36 = v89;
      v37 = (*(v83 + 48))(v20, 1, v89);
      v38 = v86;
      if (v37 == 1)
      {
        v39 = *(v34 + 8);
        v39(v23, v18);
        v39(v20, v18);
        v40 = v90;

        v41 = AssociatedTypeWitness;
LABEL_20:
        v71 = *(v38 + 40);
        *(v38 + 40) = v40;
        v72 = type metadata accessor for _PlistDecodingStorage();

        specialized _PlistDecodingStorage.push(container:)(v87, v72);
        v91[3] = type metadata accessor for _PlistDecoder();
        v91[4] = swift_getWitnessTable();
        v91[0] = v38;

        v73 = v85;
        dispatch thunk of Decodable.init(from:)();
        if (v73)
        {
          *(v38 + 40) = v71;

          if (MEMORY[0x1865CB560](*(v38 + 16), v41))
          {
LABEL_24:
            type metadata accessor for Array();
            swift_getWitnessTable();
            swift_getWitnessTable();
            v74 = v77;
            RangeReplaceableCollection<>.removeLast()();

            return (*(v78 + 8))(v74, v41);
          }

          __break(1u);
        }

        *(v38 + 40) = v71;

        result = MEMORY[0x1865CB560](*(v38 + 16), v41);
        if (result)
        {
          goto LABEL_24;
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v54 = *(v35 + 32);
      v55 = v76;
      v54(v76, v20, v36);
      v40 = swift_allocObject();
      v56 = v84;
      v40[5] = v36;
      v40[6] = v56;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v40 + 2);
      v54(boxed_opaque_existential_0, v55, v36);
      (*(v34 + 8))(v23, v18);
      v58 = v90;
      v40[7] = v90;
      if (v58 >> 62)
      {
        if (v58 >> 62 != 1)
        {
          v41 = AssociatedTypeWitness;
          v70 = 1;
LABEL_19:
          v40[8] = v70;
          goto LABEL_20;
        }

        v59 = ((v58 & 0x3FFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v59 = (v58 + 64);
      }

      v41 = AssociatedTypeWitness;
      v69 = *v59;

      v70 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    v51 = v85;
    result = _PlistDecoder.unwrapData<A>(from:for:_:)(v87, v90, v88, v89, v84);
    if (v51)
    {
      return result;
    }

    v91[0] = result;
    v91[1] = v53;
    return swift_dynamicCast();
  }

  AssociatedTypeWitness = v17;
  v42 = v29;
  v43 = v87;
  v44 = v11;
  if (((*(v10 + 40))(v87, v11, v10, v30) & 1) == 0)
  {
    v60 = *(v86 + 24);
    v61 = *(v10 + 56);
    swift_unknownObjectRetain();
    v62 = v85;
    v61(v91, v43, v60, v90, v88, v89, v84, v44, v10);
    result = swift_unknownObjectRelease();
    if (v62)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  v86 = type metadata accessor for DecodingError();
  v87 = swift_allocError();
  v85 = v45;
  *v45 = &type metadata for Date;
  v46 = v42;
  v47 = *(v42 + 16);
  v47(v32, v88, v18);
  v47(v26, v32, v18);
  v48 = v83;
  v49 = v89;
  if ((*(v83 + 48))(v26, 1, v89) == 1)
  {
    v50 = *(v46 + 8);
    v50(v26, v18);
    _CodingPathNode.path.getter(v90);
    v50(v32, v18);
  }

  else
  {
    v63 = AssociatedTypeWitness;
    (*(v48 + 32))(AssociatedTypeWitness, v26, v49);
    v64 = _CodingPathNode.path.getter(v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    v66 = v84;
    *(inited + 56) = v49;
    *(inited + 64) = v66;
    v67 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
    (*(v48 + 16))(v67, v63, v49);
    v91[7] = v64;
    specialized Array.append<A>(contentsOf:)(inited);
    (*(v48 + 8))(v63, v49);
    (*(v46 + 8))(v32, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  v68 = v85;
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v86 - 8) + 104))(v68, *MEMORY[0x1E69E6B08]);
  return swift_willThrow();
}

uint64_t _PlistDecoder.decode<A>(_:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v49 = a3;
  v50 = a4;
  v51 = a2;
  v55 = a1;
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  v56 = v6;
  v52 = v7;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v47 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v54 = v46 - v20;
  v21 = v5[2];
  v48 = (v5 + 2);

  if (!MEMORY[0x1865CB560](v22, AssociatedTypeWitness))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v57[0] = v21;
  v23 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v60 = v16;
  v46[0] = WitnessTable;
  v46[1] = v23;
  BidirectionalCollection.last.getter();
  v25 = v60;
  (*(v10 + 16))(v12, v15, v9);
  if ((*(v25 + 48))(v12, 1, AssociatedTypeWitness) != 1)
  {

    (*(v10 + 8))(v15, v9);
    v26 = v54;
    (*(v25 + 32))(v54, v12, AssociatedTypeWitness);
    v9 = v5[5];
    memset(v58, 0, sizeof(v58));
    v59 = -1;
    v27 = &type metadata for Date;
    if (v55 == &type metadata for Date)
    {
LABEL_8:
      v30 = v56;
      v31 = v52;
      if (((*(v56 + 40))(v26, v52, v56) & 1) == 0)
      {
        v39 = v5[3];
        v40 = *(v30 + 56);
        v41 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v55 = (v9 & 0x3FFFFFFFFFFFFFFFLL);

        swift_unknownObjectRetain();
        v42 = v41;
        v43 = v53;
        v40(v57, v26, v39, v9, v58, &type metadata for _CodingKey, v42, v31, v30);
        swift_unknownObjectRelease();
        if (!v43)
        {
          swift_dynamicCast();
        }

        v38 = v60;
        goto LABEL_19;
      }

      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v34 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v34 = v27;

      _CodingPathNode.path.getter(v9);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6B08], v32);
      swift_willThrow();
      goto LABEL_12;
    }

    v27 = (v9 & 0x3FFFFFFFFFFFFFFFLL);
    if (v55 == &type metadata for Data)
    {

      v35 = v53;
      v36 = specialized _PlistDecoder.unwrapData<A>(from:for:_:)(v26, v9, 0, 0, 0, 255);
      if (!v35)
      {
        v57[0] = v36;
        v57[1] = v37;
        swift_dynamicCast();
      }

LABEL_12:
      v38 = v60;
LABEL_19:
      (*(v38 + 8))(v26, AssociatedTypeWitness);
    }

    v28 = type metadata accessor for _PlistDecodingStorage();
    swift_retain_n();
    v12 = v48;
    specialized _PlistDecodingStorage.push(container:)(v26, v28);
    v57[3] = type metadata accessor for _PlistDecoder();
    v57[4] = swift_getWitnessTable();
    v57[0] = v5;

    v29 = v53;
    dispatch thunk of Decodable.init(from:)();
    v10 = v29;
    if (v29)
    {
      v5[5] = v9;

      if (!MEMORY[0x1865CB560](v5[2], AssociatedTypeWitness))
      {
        __break(1u);
        goto LABEL_8;
      }

LABEL_16:
      swift_getWitnessTable();
      v44 = v47;
      RangeReplaceableCollection<>.removeLast()();

      v38 = v60;
      (*(v60 + 8))(v44, AssociatedTypeWitness);
      goto LABEL_19;
    }

    v5[5] = v9;

    if (MEMORY[0x1865CB560](v5[2], AssociatedTypeWitness))
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

LABEL_22:
  result = (*(v10 + 8))(v12, v9);
  __break(1u);
  return result;
}

uint64_t specialized _PlistDecodingStorage.push(container:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v3, v4);
  type metadata accessor for Array();
  Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v8 = *v2;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v10 = v8;
  }

  Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*(v10 + 16));
  return Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

id _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5(char *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v45 = *MEMORY[0x1E69E9840];
  v5 = 2;
  if (a3 > 2348810495)
  {
    if (a3 > 2483028223)
    {
      if (a3 != 2483028224)
      {
        if (a3 != 2550137088)
        {
          if (a3 == 2617245952)
          {
            v5 = 0;
            goto LABEL_34;
          }

          goto LABEL_38;
        }

        v5 = 1;
LABEL_34:
        closure #2 in String.init<A>(bytes:encoding:)(a1, a2, v5, closure #1 in closure #3 in String.init<A>(bytes:encoding:), v44);
        if (*(&v44[0] + 1))
        {
          return *&v44[0];
        }

        result = specialized String.init<A, B>(_validating:as:)();
        if (!v14)
        {
          return 0;
        }

        return result;
      }

      goto LABEL_29;
    }

    if (a3 == 2348810496)
    {
      goto LABEL_34;
    }

    if (a3 == 2415919360)
    {
      v5 = 1;
      goto LABEL_30;
    }

LABEL_38:
    result = [objc_allocWithZone(NSString) initWithBytes:a1 length:a2 encoding:a3];
    if (!result)
    {
      return result;
    }

    v15 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v17 = v15;
    v18 = v17;
    if (!isTaggedPointer)
    {
      goto LABEL_44;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v17);
    if (!TaggedPointerTag)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v34 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v35)
      {
        v36 = v34;
      }

      else
      {
        [v18 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v36 = v43;
      }

      goto LABEL_81;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v20 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v20;
      }

LABEL_44:
      *&v44[0] = 0;
      if (__CFStringIsCF())
      {

        return 0;
      }

      v21 = v18;
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

      v36 = String.init(_cocoaString:)();
LABEL_81:

      return v36;
    }

    result = [v18 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v32)
      {
        v33 = result;

        return v33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_91;
  }

  if (a3 > 6)
  {
    if (a3 != 7)
    {
      if (a3 == 10)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }

LABEL_22:
    result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(a1, a2);
    if (v11)
    {
      return result;
    }

    if (one-time initialization token for compatibility1 != -1)
    {
      swift_once();
    }

    if (static String.compatibility1)
    {
      if (v3)
      {
        v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v3, 0);
        if (specialized Sequence._copyContents(initializing:)(v44, (v12 + 4), v3, v4, v3) != v3)
        {
          __break(1u);
LABEL_29:
          v5 = 0;
LABEL_30:
          closure #2 in String.init<A>(bytes:encoding:)(v4, v3, v5, closure #1 in closure #2 in String.init<A>(bytes:encoding:), v44);
          if (*(&v44[0] + 1))
          {
            return *&v44[0];
          }

          result = specialized String.init<A, B>(_validating:as:)(v4, v3, v5);
          if (!v13)
          {
            return 0;
          }

          return result;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v25 = [objc_allocWithZone(NSString) initWithBytes:v12 + 4 length:v12[2] encoding:a3];
      if (v25)
      {
        v26 = v25;
        v27 = _objc_isTaggedPointer(v25);
        v28 = v26;
        v29 = v28;
        if (v27)
        {
          v30 = _objc_getTaggedPointerTag(v28);
          if (v30)
          {
            if (v30 != 22)
            {
              if (v30 == 2)
              {
                MEMORY[0x1EEE9AC00](v30);
                v31 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_86:

                return v31;
              }

              goto LABEL_55;
            }

            result = [v29 UTF8String];
            if (!result)
            {
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            result = String.init(utf8String:)(result);
            if (!v40)
            {
LABEL_92:
              __break(1u);
              return result;
            }

            v31 = result;
          }

          else
          {
            _CFIndirectTaggedPointerStringGetContents();
            v41 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v42)
            {
              [v29 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();

              return v43;
            }

            v31 = v41;
          }

          goto LABEL_85;
        }

LABEL_55:
        *&v44[0] = 0;
        if (__CFStringIsCF())
        {
          v31 = *&v44[0];
          if (!*&v44[0])
          {

            goto LABEL_86;
          }
        }

        else
        {
          v37 = v29;
          v38 = String.init(_nativeStorage:)();
          if (v39)
          {
            v31 = v38;

            goto LABEL_86;
          }

          *&v44[0] = [v37 length];
          if (!*&v44[0])
          {

            v31 = 0;
            goto LABEL_86;
          }
        }

        v31 = String.init(_cocoaString:)();
LABEL_85:

        goto LABEL_86;
      }
    }

    return 0;
  }

  if (a3 == 1)
  {
    goto LABEL_22;
  }

  if (a3 != 4)
  {
    goto LABEL_38;
  }

  if (specialized Sequence<>.starts<A>(with:)(&_sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5Tv_r, a1, a2))
  {
    v6 = v3 < 3;
    v3 -= 3;
    if (v6)
    {
      __break(1u);
    }

    v4 += 3;
  }

  result = static String._tryFromUTF8(_:)();
  if (!v8)
  {
    result = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v4, v3);
    if (!v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t specialized _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v58 = a8;
  v62 = a7;
  v63 = a3;
  v57 = a9;
  v16 = *(*v10 + 88);
  v17 = *(*v10 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v59 = a4;
  v65[0] = a4;
  v65[1] = a5;
  v22 = a5;
  v23 = v62;
  v24 = a6;
  v65[2] = a6;
  v66 = v62;
  if (a2 == &type metadata for Date)
  {
    if ((*(v16 + 40))(a1, v17, v16, v21))
    {
      v26 = type metadata accessor for DecodingError();
      swift_allocError();
      v33 = v62;
      v23 = v34;
      *v34 = &type metadata for Date;
      if (v33 != -1)
      {
        v35 = v59;
        outlined copy of _CodingKey(v59, v22, a6, v33);
        v36 = _CodingPathNode.path.getter(v63);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v38 = swift_allocObject();
        *(inited + 32) = v38;
        *(v38 + 16) = v35;
        *(v38 + 24) = v22;
        *(v38 + 32) = a6;
        *(v38 + 40) = v33;
        v67 = v36;
        specialized Array.append<A>(contentsOf:)(inited);
LABEL_26:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v26 - 8) + 104))(v23, *MEMORY[0x1E69E6B08], v26);
        return swift_willThrow();
      }

LABEL_25:
      _CodingPathNode.path.getter(v63);
      goto LABEL_26;
    }

    v41 = *(v61 + 24);
    v42 = *(v16 + 56);
    v43 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v42(v64, a1, v41, v63, v65, &type metadata for _CodingKey, v43, v17, v16);
    result = swift_unknownObjectRelease();
    if (v60)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  v55 = v16;
  if (v20 == &type metadata for Data)
  {
    result = specialized _PlistDecoder.unwrapData<A>(from:for:_:)(a1, v63, v59, v22, a6, v62);
    if (v60)
    {
      return result;
    }

    v64[0] = result;
    v64[1] = v40;
    return swift_dynamicCast();
  }

  v54 = v20;
  v51 = &v51 - v18;
  v52 = v19;
  v25 = v22;
  v53 = a1;
  v26 = v61;
  if (v62 != 0xFF)
  {
    v27 = swift_allocObject();
    v27[5] = &type metadata for _CodingKey;
    v27[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v28 = swift_allocObject();
    v27[2] = v28;
    v29 = v59;
    *(v28 + 16) = v59;
    *(v28 + 24) = v25;
    *(v28 + 32) = v24;
    *(v28 + 40) = v23;
    v30 = v63;
    v31 = v63 >> 62;
    v27[7] = v63;
    if (v30 >> 62)
    {
      if (v31 != 1)
      {
        v45 = 1;
        goto LABEL_17;
      }

      v32 = ((v30 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v32 = (v30 + 64);
    }

    v44 = *v32;

    v45 = v44 + 1;
    if (!__OFADD__(v44, 1))
    {
LABEL_17:
      v27[8] = v45;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_25;
  }

  v27 = v63;

  v29 = v59;
LABEL_18:
  v63 = a10;
  v46 = *(v26 + 40);
  *(v26 + 40) = v27;
  outlined copy of _CodingKey?(v29, v25, v24, v23);
  v47 = AssociatedTypeWitness;
  v48 = type metadata accessor for _PlistDecodingStorage();

  specialized _PlistDecodingStorage.push(container:)(v53, v48);
  v64[3] = type metadata accessor for _PlistDecoder();
  v64[4] = swift_getWitnessTable();
  v64[0] = v26;

  v49 = v60;
  dispatch thunk of Decodable.init(from:)();
  if (v49)
  {
    *(v26 + 40) = v46;

    if (MEMORY[0x1865CB560](*(v26 + 16), v47))
    {
LABEL_22:
      type metadata accessor for Array();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v50 = v51;
      RangeReplaceableCollection<>.removeLast()();

      return (*(v52 + 8))(v50, v47);
    }

    __break(1u);
  }

  *(v26 + 40) = v46;

  result = MEMORY[0x1865CB560](*(v26 + 16), v47);
  if (result)
  {
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_18083410C()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_18083414C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

NSDate __swiftcall Date._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E695DF00]);

  return [v2 initWithTimeIntervalSinceReferenceDate_];
}

uint64_t PropertyListDecoder.decode<A>(_:from:format:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *v6;
  v27 = a5;
  v28 = a6;
  v29 = a1;
  v21 = a5;
  v22 = v6;
  v23 = partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:);
  v24 = v26;
  v25 = a4;
  v15 = a5;
  v16 = v6;
  v17 = partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:);
  v18 = v26;
  v19 = a4;
  v9[2] = a5;
  v10 = v6;
  v11 = a4;
  v12 = partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:);
  v13 = v26;
  v35 = a5;
  v36 = partial apply for closure #1 in PropertyListDecoder._decode<A>(_:from:format:);
  v37 = &v20;
  v38 = v7;
  v39 = partial apply for closure #2 in PropertyListDecoder._decode<A>(_:from:format:);
  v40 = &v14;
  v41 = partial apply for closure #3 in PropertyListDecoder._decode<A>(_:from:format:);
  v42 = v9;
  v43 = v7;
  v31 = a5;
  v32 = partial apply for closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:);
  v33 = &v34;
  return Data._Representation.withUnsafeBytes<A>(_:)(partial apply for closure #1 in Data.withBufferView<A>(_:), v30, a2, a3);
}

int64_t closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, __n128)@<X2>, unint64_t a4@<X5>, uint64_t a5@<X6>, void (*a6)(id)@<X7>, char *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a6;
  v47 = a4;
  v48 = a5;
  v46 = a7;
  v50 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v49);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  if (a2 >= 41 && *a1 == 1768714338 && *(a1 + 3) == 812938089)
  {
    return a3(a1, a2, v21);
  }

  v51 = v43 - v19;
  v45 = v20;
  result = static PropertyListDecoder.detectEncoding(of:)(&v52, a1, a2);
  if (!v10)
  {
    v24 = result;
    v25 = a2 < result;
    v26 = a2 - result;
    if (v25)
    {
      __break(1u);
    }

    else
    {
      v27 = v52;
      v28 = v51;
      v29 = (*(v50 + 56))(v51, 1, 1, a10);
      v43[1] = v43;
      MEMORY[0x1EEE9AC00](v29);
      v43[-4] = a10;
      v43[-3] = v28;
      v30 = v48;
      v43[-2] = v47;
      v43[-1] = v30;
      _s10Foundation19PropertyListDecoderC22withUTF8Representation2of14sourceEncoding_xAA10BufferViewVys5UInt8VG_SSAAE0J0VxAKKXEtKlFZyt_Tt3B5((a1 + v24), v26, v27, partial apply for closure #1 in closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:));
      v48 = 0;
      v43[0] = v27;
      v47 = v26;
      v31 = v45;
      v32 = v51;
      v33 = v49;
      (*(v45 + 16))(v17, v51, v49);
      v34 = v50;
      if ((*(v50 + 48))(v17, 1, a10) == 1)
      {
        v35 = *(v31 + 8);
        v35(v17, v33);
        v36 = _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5((a1 + v24), v47, v43[0]);
        if (v37)
        {
          v38 = v33;
          v44(v36);
        }

        else
        {
          v40 = type metadata accessor for DecodingError();
          swift_allocError();
          v42 = v41;
          _CodingPathNode.path.getter(0x8000000000000000);
          v38 = v49;
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6B00], v40);
          swift_willThrow();
        }

        return (v35)(v51, v38);
      }

      else
      {
        v39 = *(v34 + 32);
        v39(v15, v17, a10);
        v39(v46, v15, a10);
        return (*(v31 + 8))(v32, v33);
      }
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in PropertyListDecoder.decode<A>(_:from:format:)(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  return (*(v6 + 8))(v4, v2, v3, v5, v6);
}

uint64_t _PlistDecoder.container<A>(keyedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v30 = a2;
  v26 = a4;
  v27 = a1;
  v5 = *(*v4 + 88);
  v6 = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  v31 = v5;
  v28 = v6;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v8 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v29 = v4;
  v18 = v4[2];

  if (MEMORY[0x1865CB560](v19, AssociatedTypeWitness))
  {
    v33 = v18;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    v4 = v25;
    (*(v8 + 16))(v10, v13, v25);
    if ((*(v14 + 48))(v10, 1, AssociatedTypeWitness) != 1)
    {

      (*(v8 + 8))(v13, v4);
      (*(v14 + 32))(v17, v10, AssociatedTypeWitness);
      v20 = v29;
      v21 = v29[5];
      v22 = *(v31 + 24);

      v22(v27, v17, v20, v21, v30, v32);
      (*(v14 + 8))(v17, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v8 + 8))(v10, v4);
  __break(1u);
  return result;
}

uint64_t _PlistKeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v62 = a3;
  v66 = a7;
  v67 = a5;
  v69 = a4;
  v70 = a2;
  v55 = a1;
  v53 = a8;
  v12 = type metadata accessor for Optional();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v51 - v13;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v58 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v59 = &v51 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v51 - v22;
  v64 = v19;
  v63 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v52 = &v51 - v25;
  v68 = a6;
  v65 = a9;
  v26 = dispatch thunk of CodingKey.stringValue.getter();
  v28 = v69;
  if (!*(v69 + 16))
  {

    goto LABEL_6;
  }

  v51 = AssociatedConformanceWitness;
  v29 = v15;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_6:
    (*(v63 + 56))(v23, 1, 1, v64);
    (*(v21 + 8))(v23, v20);
    type metadata accessor for DecodingError();
    swift_allocError();
    v43 = v42;
    MetatypeMetadata = swift_getMetatypeMetadata();
    _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v70, v67, v68, MetatypeMetadata, v43, v65);
    return swift_willThrow();
  }

  v33 = v29;
  v34 = v58;
  v35 = AssociatedTypeWitness;
  (*(v29 + 16))(v58, *(v28 + 56) + *(v29 + 72) * v30, AssociatedTypeWitness);
  v36 = v59;
  (*(v29 + 32))(v59, v34, v35);
  v37 = v51;
  v38 = *(v51 + 80);
  swift_unknownObjectRetain();
  v39 = swift_checkMetadataState();
  v40 = v61;
  v38(v36, v39, v37);
  (*(v33 + 8))(v36, v35);
  if (v40)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v46 = v63;
  v45 = v64;
  (*(v63 + 56))(v23, 0, 1, v64);
  v47 = v52;
  (*(v46 + 32))();
  v48 = v68;
  v49 = *(v68 - 8);
  v50 = v54;
  (*(v49 + 16))(v54, v70, v68);
  (*(v49 + 56))(v50, 0, 1, v48);
  _PlistDecoder.unwrapGeneric<A, B>(_:as:for:_:)(v47, v67, v50, v66, v48, a11, v65, v53);
  (*(v56 + 8))(v50, v57);
  return (*(v46 + 8))(v47, v45);
}

uint64_t _PlistDecoder.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PropertyListDecoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *specialized _PlistDecoder.init(referencing:options:codingPathNode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[2] = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 48);
  v9 = *(a1 + 64);

  os_unfair_lock_lock(v9 + 10);
  closure #1 in BPlistMap.loadValue(at:)(&v9[4], v8, a1, &v17);
  os_unfair_lock_unlock(v9 + 10);
  if (v4)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13_PlistDecoderCyAA21_BPlistDecodingFormatVGMd);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v17;

    v11 = v3[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      v3[2] = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v3[2] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    }

    v15 = v3[2];
    *(v15 + 16) = v14 + 1;
    *(v15 + 8 * v14 + 32) = v10;
    v3[2] = v15;
    v3[4] = a2;
    v3[5] = a3;
  }

  return v3;
}

uint64_t BPlistScanner.scanDictionary(rawTypeMarker:index:objectRangeEndIndex:)(char a1, uint64_t a2, unint64_t a3)
{
  v5 = a1 & 0xF;
  v55 = (a2 + 1);
  if (v5 == 15)
  {
    v6 = a3;
    result = BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(&v55, a3, 0x616E6F6974636964, 0xEA00000000007972);
    if (v4)
    {
      return result;
    }

    v5 = result;
    a3 = v6;
    if (result < 0)
    {
      goto LABEL_7;
    }
  }

  v8 = *(v3 + 55);
  if (!is_mul_ok(2 * v5, v8))
  {
    goto LABEL_7;
  }

  v9 = 2 * v5 * v8;
  if (v9 < 0)
  {
LABEL_102:
    __break(1u);
  }

  else
  {
    v10 = v55;
    if ((a3 - v55) < v9)
    {
LABEL_7:
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      v12 = xmmword_181247380;
LABEL_8:
      *v11 = v12;
      return swift_willThrow();
    }

    v13 = MEMORY[0x1865CAAC0](v5, MEMORY[0x1E69E6530], MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
    v50 = v5 * v8;
    if ((v5 * v8) >> 64 == (v5 * v8) >> 63)
    {
      v14 = v13;
      if (!v5)
      {
        v28 = v13;
LABEL_90:
        v48 = swift_allocObject();
        *(v48 + 16) = v28;
        return v48 | 0x3000000000000000;
      }

      v15 = 0;
      v52 = *v3;
      v53 = v3[1];
      v54 = *(v3 + 4);
      v49 = v5;
      while (1)
      {
        if (v8 <= 3)
        {
          if (v8 <= 1)
          {
            if (v8)
            {
              if (v54 < v53)
              {
                goto LABEL_105;
              }

              if ((v53 - v52) < 0)
              {
                goto LABEL_113;
              }

              if ((v54 - v53) < 0)
              {
                goto LABEL_114;
              }

              if ((v52 + *(&v52 + 1) - v54) < 0)
              {
                goto LABEL_123;
              }

              v17 = *v10;
            }

            else
            {
              v17 = v8;
            }

            goto LABEL_55;
          }

          if (v8 == 2)
          {
            if (v54 < v53)
            {
              goto LABEL_104;
            }

            if ((v53 - v52) < 0)
            {
              goto LABEL_111;
            }

            if ((v54 - v53) < 0)
            {
              goto LABEL_118;
            }

            if ((v52 + *(&v52 + 1) - v54) < 0)
            {
              goto LABEL_120;
            }

            v17 = __rev16(*v10);
            goto LABEL_55;
          }
        }

        else if ((v8 - 5) >= 3)
        {
          if (v8 == 4)
          {
            if (v54 < v53)
            {
              goto LABEL_107;
            }

            if ((v53 - v52) < 0)
            {
              goto LABEL_109;
            }

            if ((v54 - v53) < 0)
            {
              goto LABEL_115;
            }

            if ((v52 + *(&v52 + 1) - v54) < 0)
            {
              goto LABEL_121;
            }

            v17 = bswap32(*v10);
          }

          else
          {
            if (v8 == 8)
            {
              if (v54 < v53)
              {
                goto LABEL_106;
              }

              if ((v53 - v52) < 0)
              {
                goto LABEL_110;
              }

              if ((v54 - v53) < 0)
              {
                goto LABEL_116;
              }

              v16 = v10;
              if ((v52 + *(&v52 + 1) - v54) < 0)
              {
                goto LABEL_119;
              }
            }

            else
            {
              if (v54 < v53)
              {
                goto LABEL_108;
              }

              if ((v53 - v52) < 0)
              {
                goto LABEL_112;
              }

              if ((v54 - v53) < 0)
              {
                goto LABEL_117;
              }

              if ((v52 + *(&v52 + 1) - v54) < 0)
              {
                goto LABEL_122;
              }

              v16 = (v10 + v8 - 8);
            }

            v17 = bswap64(*v16);
            if ((v17 & 0x8000000000000000) != 0)
            {
LABEL_91:

              lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
              swift_allocError();
              v12 = xmmword_181247320;
              goto LABEL_8;
            }
          }

          goto LABEL_55;
        }

        if (v54 < v53)
        {
          goto LABEL_98;
        }

        if ((v53 - v52) < 0)
        {
          goto LABEL_99;
        }

        if ((v54 - v53) < 0)
        {
          goto LABEL_100;
        }

        if ((v52 + *(&v52 + 1) - v54) < 0)
        {
          goto LABEL_101;
        }

        v17 = 0;
        for (i = 0; i != v8; ++i)
        {
          v17 = *(v10 + i) | (v17 << 8);
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_91;
        }

LABEL_55:
        v19 = BufferReader.getBoundsCheckedSizedInt(at:size:)((v10 + v50), v8);
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_91;
        }

        v20 = v19;
        v51 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
        v24 = *(v14 + 16);
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v27 = v22;
        if (*(v14 + 24) >= v26)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v28 = v14;
            if (v22)
            {
              goto LABEL_63;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd);
            v31 = static _DictionaryStorage.copy(original:)();
            v28 = v31;
            if (*(v14 + 16))
            {
              v32 = (v31 + 64);
              v33 = v14 + 64;
              v34 = ((1 << *(v28 + 32)) + 63) >> 6;
              if (v28 != v14 || v32 >= v33 + 8 * v34)
              {
                memmove(v32, (v14 + 64), 8 * v34);
              }

              v35 = 0;
              *(v28 + 16) = *(v14 + 16);
              v36 = 1 << *(v14 + 32);
              if (v36 < 64)
              {
                v37 = ~(-1 << v36);
              }

              else
              {
                v37 = -1;
              }

              v38 = v37 & *(v14 + 64);
              for (j = (v36 + 63) >> 6; v38; *(*(v28 + 56) + 8 * v41) = v44)
              {
                v40 = __clz(__rbit64(v38));
                v38 &= v38 - 1;
                v41 = v40 | (v35 << 6);
LABEL_78:
                v44 = *(*(v14 + 56) + 8 * v41);
                *(*(v28 + 48) + 8 * v41) = *(*(v14 + 48) + 8 * v41);
              }

              v42 = v35;
              while (1)
              {
                v35 = v42 + 1;
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_124;
                }

                if (v35 >= j)
                {
                  break;
                }

                v43 = *(v33 + 8 * v35);
                ++v42;
                if (v43)
                {
                  v38 = (v43 - 1) & v43;
                  v41 = __clz(__rbit64(v43)) | (v35 << 6);
                  goto LABEL_78;
                }
              }
            }

            if (v27)
            {
LABEL_63:
              *(*(v28 + 56) + 8 * v23) = v20;
              goto LABEL_83;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
          v28 = v14;
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
          if ((v27 & 1) != (v30 & 1))
          {
            goto LABEL_125;
          }

          v23 = v29;
          if (v27)
          {
            goto LABEL_63;
          }
        }

        *(v28 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        *(*(v28 + 48) + 8 * v23) = v17;
        *(*(v28 + 56) + 8 * v23) = v20;
        v45 = *(v28 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_97;
        }

        *(v28 + 16) = v47;
LABEL_83:
        if (v54 < v53)
        {
          goto LABEL_93;
        }

        if ((v53 - v52) < 0)
        {
          goto LABEL_94;
        }

        if ((v54 - v53) < 0)
        {
          goto LABEL_95;
        }

        if ((v52 + *(&v52 + 1) - v54) < 0)
        {
          goto LABEL_96;
        }

        v15 = v51 + 1;
        v10 = (v10 + v8);
        v14 = v28;
        if (v51 + 1 == v49)
        {
          goto LABEL_90;
        }
      }
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_180835C28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t closure #1 in BPlistMap.loadValue(at:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = *(a3 + 56);
  if (*(v5 + 16) <= a2)
  {
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v7 = xmmword_1812468B0;
    return swift_willThrow();
  }

  else if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    result = BPlistScanner.scanObject(at:)(*(v5 + 8 * a2 + 32));
    if (!v4)
    {
      *a4 = result;
    }
  }

  return result;
}

unint64_t BPlistScanner.scanObject(at:)(uint64_t a1)
{
  if (a1 < 0)
  {
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v8 = xmmword_181247320;
    return swift_willThrow();
  }

  v2 = (v1[3] + a1);
  if ((&v2[-*v1] & 0x8000000000000000) != 0 || (*v1 + v1[1] - v2) < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = v1[9];
  if (v3 < 0)
  {
LABEL_23:
    __break(1u);
    JUMPOUT(0x180835F40);
  }

  v4 = *v2;
  v5 = v1[5];
  v6 = specialized BPlistTypeMarker.init(_:)(v4);
  result = 0x9000000000000008;
  switch(v6)
  {
    case 1:
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      goto LABEL_16;
    case 2:
      v9 = swift_allocObject();
      *(v9 + 16) = 1;
LABEL_16:
      result = v9 | 0x6000000000000000;
      break;
    case 3:
      result = BPlistScanner.scanInteger(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 4:
      result = BPlistScanner.scanReal(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 5:
      result = BPlistScanner.scanDate(index:objectRangeEndIndex:)(v2, v5 + v3);
      break;
    case 6:
      result = BPlistScanner.scanData(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 7:
      result = BPlistScanner.scanASCIIString(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 8:
      result = BPlistScanner.scanUTF16BEString(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 9:
      result = 0x9000000000000000;
      break;
    case 10:
    case 11:
      result = BPlistScanner.scanArrayOrSet(typeMarker:rawTypeMarker:index:objectRangeEndIndex:)(v6, v4, v2, v5 + v3);
      break;
    case 12:
      result = BPlistScanner.scanDictionary(rawTypeMarker:index:objectRangeEndIndex:)(v4, v2, v5 + v3);
      break;
    case 13:
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      *v10 = 0;
      v10[1] = 0;
      return swift_willThrow();
    default:
      return result;
  }

  return result;
}

void closure #1 in PropertyListDecoder._decode<A>(_:from:format:)(unsigned int *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, void *a6)
{
  v106 = *MEMORY[0x1E69E9840];
  v10 = specialized static BPlistScanner.scanBinaryPropertyList(from:)(a1, a2);
  if (!v6)
  {
    v11 = *(a3 + 16);
    v12 = v10;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13_PlistDecoderCyAA21_BPlistDecodingFormatVGMd);
    swift_allocObject();

    v26 = specialized _PlistDecoder.init(referencing:options:codingPathNode:)(v12, v11, 0x8000000000000000);
    *(&v101 + 1) = v13;
    v102 = &protocol witness table for _PlistDecoder<A>;
    v99 = v26;

    a4(&v99);
    __swift_destroy_boxed_opaque_existential_1(&v99);
    if (swift_isUniquelyReferenced_nonNull_native() && (swift_isUniquelyReferenced_nonNull_native() & 1) != 0)
    {
      goto LABEL_27;
    }

    v33 = *(v26[3] + 64);

    os_unfair_lock_lock((v33 + 40));
    if (*(v33 + 32))
    {
LABEL_26:
      os_unfair_lock_unlock((v33 + 40));

LABEL_27:

      *a6 = 200;
      return;
    }

    v34 = *(v33 + 24);
    v35 = v34 + 1;
    if (!__OFADD__(v34, 1))
    {
      v36 = *(v33 + 16);
      v37 = swift_slowAlloc();
      if ((v34 & 0x8000000000000000) == 0)
      {
        v38 = v37;
        memmove(v37, v36, v34);
        v38[v34] = 0;
        if ((v35 & 0x8000000000000000) == 0)
        {
          *(v33 + 16) = v38;
          *(v33 + 24) = v35;
          *(v33 + 32) = v38;
          goto LABEL_26;
        }

LABEL_114:
        __break(1u);
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (!swift_dynamicCast())
  {
    goto LABEL_108;
  }

  v15 = v105;
  v96 = v104;
  v16 = type metadata accessor for DecodingError();
  swift_allocError();
  v18 = v17;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v20 = @"NSDebugDescription";
  v21 = v20;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v20);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v25 = v24;

          goto LABEL_30;
        }

        goto LABEL_9;
      }

      v30 = [(__CFString *)v21 UTF8String];
      if (!v30)
      {
        __break(1u);
        goto LABEL_116;
      }

      v31 = String.init(utf8String:)(v30);
      if (v32)
      {
LABEL_18:
        v23 = v31;
        v25 = v32;

        goto LABEL_30;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v32)
    {
      [(__CFString *)v21 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v23 = v97;
      v25 = v98;
      goto LABEL_30;
    }

    goto LABEL_18;
  }

LABEL_9:
  LOBYTE(v97) = 0;
  v99 = 0;
  if (__CFStringIsCF())
  {
    v23 = v99;

LABEL_13:
    v25 = 0xE000000000000000;
    goto LABEL_30;
  }

  v27 = v21;
  v28 = String.init(_nativeStorage:)();
  if (v29)
  {
    v23 = v28;
    v25 = v29;

    goto LABEL_30;
  }

  v99 = [(__CFString *)v27 length];
  if (!v99)
  {

    v23 = 0;
    goto LABEL_13;
  }

  v23 = String.init(_cocoaString:)();
  v25 = v39;
LABEL_30:
  v103[0] = v23;
  v103[1] = v25;
  v95 = v18;
  if (v105)
  {
    if (v105 == 1)
    {
      v40 = 0x8000000181484EC0;
      v41 = 0xD000000000000016;
    }

    else
    {
      _StringGuts.grow(_:)(16);

      v99 = 0x2074707572726F43;
      v100 = 0xE800000000000000;
      MEMORY[0x1865CB0E0](v104, v105);
      MEMORY[0x1865CB0E0](0x65756C617620, 0xE600000000000000);
      v41 = 0x2074707572726F43;
      v40 = 0xE800000000000000;
    }
  }

  else
  {
    v40 = 0xEE0072656B72616DLL;
    v41 = 0x2064696C61766E49;
  }

  v103[5] = MEMORY[0x1E69E6158];
  v103[2] = v41;
  v103[3] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v42 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of FloatingPointRoundingRule?(v103, &v99, &_sSS_yptMd);

  outlined destroy of TermOfAddress?(v103, &_sSS_yptMd);
  v43 = v99;
  v44 = v100;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v100);
  v47 = v46;

  if (v47)
  {
    __break(1u);
    goto LABEL_110;
  }

  v42[(v45 >> 6) + 8] |= 1 << v45;
  v48 = (v42[6] + 16 * v45);
  *v48 = v43;
  v48[1] = v44;
  outlined init with take of Any(&v101, (v42[7] + 32 * v45));
  v49 = v42[2];
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (v50)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v42[2] = v51;
  v52 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v53 = @"NSCocoaErrorDomain";
  v54 = v53;
  v94 = v16;
  if (!v52)
  {
    goto LABEL_42;
  }

  v55 = _objc_getTaggedPointerTag(v53);
  switch(v55)
  {
    case 0:
LABEL_51:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v60)
      {
        [(__CFString *)v54 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_59;
      }

      goto LABEL_52;
    case 0x16:
      v58 = [(__CFString *)v54 UTF8String];
      if (v58)
      {
        String.init(utf8String:)(v58);
        if (v59)
        {
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    case 2:
      MEMORY[0x1EEE9AC00](v55);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_59;
  }

LABEL_42:
  LOBYTE(v97) = 0;
  v99 = 0;
  if (!__CFStringIsCF())
  {
    v56 = v54;
    String.init(_nativeStorage:)();
    if (v57 || (v99 = [(__CFString *)v56 length]) == 0)
    {

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (!v99)
  {
LABEL_52:

    goto LABEL_59;
  }

LABEL_58:
  String.init(_cocoaString:)();
LABEL_59:
  v61 = objc_allocWithZone(NSError);
  v62 = String._bridgeToObjectiveCImpl()();

  v63 = [v61 initWithDomain:v62 code:3840 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v64 = [v63 domain];
  if (!v64)
  {
    goto LABEL_71;
  }

  v65 = v64;
  v66 = _objc_isTaggedPointer(v64);
  v67 = v65;
  v68 = v67;
  if ((v66 & 1) == 0)
  {
LABEL_65:
    LOBYTE(v97) = 0;
    v99 = 0;
    if (__CFStringIsCF())
    {
      if (v99)
      {
LABEL_80:
        v70 = String.init(_cocoaString:)();
        v72 = v79;
        goto LABEL_81;
      }
    }

    else
    {
      v73 = v68;
      v74 = String.init(_nativeStorage:)();
      if (v75)
      {
        v70 = v74;
        v72 = v75;

        goto LABEL_82;
      }

      v99 = [v73 length];
      if (v99)
      {
        goto LABEL_80;
      }
    }

LABEL_71:
    v70 = 0;
    v72 = 0xE000000000000000;
    goto LABEL_82;
  }

  v69 = _objc_getTaggedPointerTag(v67);
  if (!v69)
  {
    goto LABEL_75;
  }

  if (v69 != 22)
  {
    if (v69 == 2)
    {
      MEMORY[0x1EEE9AC00](v69);
      v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v72 = v71;

LABEL_82:
      v80 = v54;
      v81 = v80;
      if (!v52)
      {
        goto LABEL_87;
      }

      v82 = _objc_getTaggedPointerTag(v80);
      if (!v82)
      {
        goto LABEL_97;
      }

      if (v82 != 22)
      {
        if (v82 == 2)
        {
          MEMORY[0x1EEE9AC00](v82);
          v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v85 = v84;

          goto LABEL_103;
        }

LABEL_87:
        v99 = 0;
        if (__CFStringIsCF())
        {
          if (v99)
          {
LABEL_102:
            v83 = String.init(_cocoaString:)();
            v85 = v92;
LABEL_103:
            if (v70 == v83 && v72 == v85)
            {
              outlined consume of URL.ParseStrategy.ComponentParseStrategy<String>(v96, v15);

LABEL_107:
              DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
              (*(*(v94 - 8) + 104))(v95, *MEMORY[0x1E69E6B00]);
              swift_willThrow();
LABEL_108:

              return;
            }

            v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined consume of URL.ParseStrategy.ComponentParseStrategy<String>(v96, v15);

            if (v93)
            {
              goto LABEL_107;
            }

LABEL_111:
            __break(1u);
            goto LABEL_112;
          }
        }

        else
        {
          v86 = v81;
          v87 = String.init(_nativeStorage:)();
          if (v88)
          {
            v83 = v87;
            v85 = v88;

            goto LABEL_103;
          }

          v99 = [(__CFString *)v86 length];
          if (v99)
          {
            goto LABEL_102;
          }
        }

        v83 = 0;
        v85 = 0xE000000000000000;
        goto LABEL_103;
      }

      v89 = [(__CFString *)v81 UTF8String];
      if (v89)
      {
        v90 = String.init(utf8String:)(v89);
        if (v91)
        {
          goto LABEL_98;
        }

        __break(1u);
LABEL_97:
        _CFIndirectTaggedPointerStringGetContents();
        v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v91)
        {
          [(__CFString *)v81 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v83 = v97;
          v85 = v98;
          goto LABEL_103;
        }

LABEL_98:
        v83 = v90;
        v85 = v91;

        goto LABEL_103;
      }

      goto LABEL_117;
    }

    goto LABEL_65;
  }

  v76 = [v68 UTF8String];
  if (v76)
  {
    v77 = String.init(utf8String:)(v76);
    if (v78)
    {
      goto LABEL_76;
    }

    __break(1u);
LABEL_75:
    _CFIndirectTaggedPointerStringGetContents();
    v77 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v78)
    {
      [v68 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v70 = v97;
      v72 = v98;
      goto LABEL_81;
    }

LABEL_76:
    v70 = v77;
    v72 = v78;

LABEL_81:
    goto LABEL_82;
  }

LABEL_118:
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_10Foundation9BPlistMapC5ValueO(void *a1)
{
  v1 = *a1 >> 60;
  if (v1 <= 8)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 9;
  }
}

uint64_t getEnumTagSinglePayload for BPlistMap.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x77 && *(a1 + 8))
  {
    return (*a1 + 119);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x76)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t specialized static BPlistScanner.scanBinaryPropertyList(from:)(unsigned int *a1, uint64_t a2)
{
  v2 = a1;
  result = specialized static BPlistScanner.parseTopLevelInfo(from:)(a1, a2, &v35);
  if (v42)
  {
LABEL_41:
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v26 = xmmword_1812187D0;
    swift_willThrow();
    return v2;
  }

  v4 = v37;
  v5 = v38;
  v7 = v39;
  v6 = v40;
  v8 = v41;
  v43 = v35;
  v44 = v36;
  if ((v39 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v9 = 0x40000;
  if (v39 < 0x40000)
  {
    v9 = v39;
  }

  if (*(MEMORY[0x1E69E7CC0] + 16) <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0, MEMORY[0x1E69E7CC0]);
  if (v8 < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v11 = v8 - 1;
  if (!v8)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v12 = result;
  v31 = v5;
  v32 = v2;
  v33 = v6;
  v30 = v8;
  if (v7)
  {
    v13 = 0;
    v14 = a2;
    v15 = v2 + a2;
    v16 = (v2 + v8);
    v17 = v4 - 8;
    v18 = v4 - 5;
    while (1)
    {
      if (v15 - v16 < v4)
      {
LABEL_40:

        goto LABEL_41;
      }

      if (v4 <= 3)
      {
        if (v4 > 1)
        {
          if (v4 != 2)
          {
LABEL_24:
            if (v14 < 0)
            {
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            v20 = 0;
            for (i = 0; i != v4; ++i)
            {
              v20 = *(v16 + i) | (v20 << 8);
            }

            goto LABEL_35;
          }

          if (v14 < 0)
          {
            goto LABEL_52;
          }

          v20 = __rev16(*v16);
        }

        else
        {
          v20 = v4;
          if (!v4)
          {
            goto LABEL_36;
          }

          if (v14 < 0)
          {
            goto LABEL_54;
          }

          v20 = *v16;
        }
      }

      else
      {
        if (v18 < 3)
        {
          goto LABEL_24;
        }

        if (v4 == 4)
        {
          if (v14 < 0)
          {
            goto LABEL_50;
          }

          v20 = bswap32(*v16);
        }

        else
        {
          if (v4 == 8)
          {
            if (v14 < 0)
            {
              goto LABEL_53;
            }

            v19 = *v16;
          }

          else
          {
            if (v14 < 0)
            {
              goto LABEL_51;
            }

            v19 = *(v16 + v17);
          }

          v20 = bswap64(v19);
        }
      }

LABEL_35:
      if (v11 < v20)
      {
        goto LABEL_40;
      }

LABEL_36:
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      v2 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v24 = v12;
        v25 = v11;
        v29 = v17;
        v28 = v18;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v24);
        v18 = v28;
        v17 = v29;
        v11 = v25;
        v14 = a2;
        v12 = result;
      }

      ++v13;
      *(v12 + 16) = v2;
      *(v12 + 8 * v23 + 32) = v20;
      v16 = (v16 + v4);
      if (v13 == v7)
      {
        goto LABEL_43;
      }
    }
  }

  v14 = a2;
LABEL_43:
  v27 = v14;
  type metadata accessor for BPlistMap();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA0D4ViewVys5UInt8VG6buffer_SVSg10allocationt_GMd);
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 16) = v32;
  *(result + 24) = v27;
  *(result + 32) = 0;
  *(v2 + 64) = result;
  *(v2 + 16) = v43;
  *(v2 + 20) = v44;
  *(v2 + 22) = v4;
  *(v2 + 23) = v31;
  *(v2 + 24) = v7;
  *(v2 + 32) = v33;
  *(v2 + 40) = v30;
  if ((v33 & 0x8000000000000000) == 0)
  {
    *(v2 + 48) = v33;
    *(v2 + 56) = v12;
    return v2;
  }

LABEL_55:
  __break(1u);
  return result;
}

unsigned int *specialized static BPlistScanner.parseTopLevelInfo(from:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0uLL;
  if (a2 < 41 || (*result == 1768714338 ? (v4 = *(result + 3) == 812938089) : (v4 = 0), !v4))
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    goto LABEL_7;
  }

  v5 = 0;
  v8 = result + a2;
  v7 = 1;
  if (!*(result + a2 - 24))
  {
    goto LABEL_36;
  }

  v9 = vrev64q_s8(*(result + a2 - 24));
  if (v9.i64[0] < 0)
  {
    goto LABEL_36;
  }

  v10 = bswap64(*(v8 - 8));
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v11 = v9.i64[1] < v9.i64[0] && v10 >= 9;
  if (!v11 || v10 >= a2 - 32)
  {
    goto LABEL_36;
  }

  v5 = 0;
  v13 = *(v8 - 32);
  if (!BYTE6(v13))
  {
    goto LABEL_36;
  }

  if (!HIBYTE(v13))
  {
    goto LABEL_36;
  }

  v5 = 0;
  if (!is_mul_ok(v9.u64[0], BYTE6(v13)))
  {
    goto LABEL_36;
  }

  v14 = v9.i64[0] * BYTE6(v13);
  if (!v14)
  {
    goto LABEL_36;
  }

  v11 = __CFADD__(v10, v14);
  v15 = v10 + v14;
  if (v11)
  {
    goto LABEL_24;
  }

  v5 = 0;
  v11 = __CFADD__(v15, 32);
  v16 = v15 + 32;
  if (v11 || v16 != a2)
  {
    goto LABEL_36;
  }

  if (!(v13 >> 59) && v9.i64[0] >> ((v13 >> 53) & 0x38) || BYTE6(v13) <= 7u && v10 >> (8 * (BYTE6(v13) & 7u)) || (v17 = v9.i64[1] * BYTE6(v13), (v9.i64[1] * BYTE6(v13)) >> 64 != v17 >> 63))
  {
LABEL_24:
    v5 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v5 = 0;
  v18 = v10 + v17;
  if (__OFADD__(v10, v17) || v18 >= a2)
  {
LABEL_36:
    v6 = 0;
    goto LABEL_7;
  }

  v21 = v9;
  v19 = a3;
  result = BufferReader.getSizedInt(at:endIndex:size:)((result + v18), v8, BYTE6(v13));
  v5 = 0;
  if (v20)
  {
    v6 = 0;
    v7 = 1;
    a3 = v19;
    v3 = 0uLL;
  }

  else
  {
    v7 = 1;
    a3 = v19;
    v3 = 0uLL;
    v6 = 0;
    if (result >= 8 && result < v10)
    {
      v7 = 0;
      v5 = v13 & 0xFF00FFFFFFFFFFFFLL | (BYTE6(v13) << 48);
      v6 = v10;
      v3 = v21;
    }
  }

LABEL_7:
  *a3 = v5;
  *(a3 + 8) = v3;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7;
  return result;
}

unsigned int *BufferReader.getSizedInt(at:endIndex:size:)(unsigned int *result, uint64_t a2, uint64_t a3)
{
  if (a2 - result < a3)
  {
    return 0;
  }

  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      v4 = a3;
      if (!a3)
      {
        return v4;
      }

      if (a3 != 1)
      {
        goto LABEL_38;
      }

      v8 = v3[2];
      v9 = v3[4];
      if (v9 >= v8)
      {
        if ((v8 - *v3) >= 0)
        {
          if ((v9 - v8) >= 0)
          {
            if ((*v3 + v3[1] - v9) >= 0)
            {
              return *result;
            }

            goto LABEL_65;
          }

          goto LABEL_60;
        }

        goto LABEL_55;
      }

      goto LABEL_50;
    }

    if (a3 == 2)
    {
      v14 = v3[2];
      v15 = v3[4];
      if (v15 >= v14)
      {
        if ((v14 - *v3) >= 0)
        {
          if ((v15 - v14) >= 0)
          {
            if ((*v3 + v3[1] - v15) >= 0)
            {
              return __rev16(*result);
            }

            goto LABEL_66;
          }

          goto LABEL_61;
        }

        goto LABEL_56;
      }

      goto LABEL_51;
    }

LABEL_21:
    v10 = v3[2];
    v11 = v3[4];
    if (v11 < v10)
    {
      __break(1u);
    }

    else if ((v10 - *v3) >= 0)
    {
      if ((v11 - v10) >= 0)
      {
        if ((*v3 + v3[1] - v11) >= 0)
        {
          v4 = 0;
          v12 = a3;
          do
          {
            v13 = *result;
            result = (result + 1);
            v4 = v13 | (v4 << 8);
            --v12;
          }

          while (v12);
          return v4;
        }

        goto LABEL_49;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_48;
  }

  if ((a3 - 5) < 3)
  {
    goto LABEL_21;
  }

  if (a3 == 4)
  {
    v16 = v3[2];
    v17 = v3[4];
    if (v17 >= v16)
    {
      if ((v16 - *v3) >= 0)
      {
        if ((v17 - v16) >= 0)
        {
          if ((*v3 + v3[1] - v17) >= 0)
          {
            return bswap32(*result);
          }

          goto LABEL_68;
        }

        goto LABEL_63;
      }

      goto LABEL_58;
    }

    goto LABEL_53;
  }

  if (a3 == 8)
  {
    v5 = v3[2];
    v6 = v3[4];
    if (v6 >= v5)
    {
      if ((v5 - *v3) >= 0)
      {
        if ((v6 - v5) >= 0)
        {
          if ((*v3 + v3[1] - v6) >= 0)
          {
            v7 = *result;
            return bswap64(v7);
          }

          goto LABEL_67;
        }

        goto LABEL_62;
      }

      goto LABEL_57;
    }

    goto LABEL_52;
  }

LABEL_38:
  if (__OFSUB__(a3, 8))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v18 = v3[2];
  v19 = v3[4];
  if (v19 < v18)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if ((v18 - *v3) < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v19 - v18) < 0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if ((*v3 + v3[1] - v19) >= 0)
  {
    v7 = *(result + a3 - 8);
    return bswap64(v7);
  }

LABEL_70:
  __break(1u);
  return result;
}

unsigned int *BufferReader.getBoundsCheckedSizedInt(at:size:)(unsigned int *result, uint64_t a2)
{
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        return 0;
      }

      if (a2 != 1)
      {
        goto LABEL_37;
      }

      v6 = v2[2];
      v7 = v2[4];
      if (v7 >= v6)
      {
        if ((v6 - *v2) >= 0)
        {
          if ((v7 - v6) >= 0)
          {
            if ((*v2 + v2[1] - v7) >= 0)
            {
              return *result;
            }

            goto LABEL_63;
          }

          goto LABEL_58;
        }

        goto LABEL_53;
      }

      goto LABEL_48;
    }

    if (a2 == 2)
    {
      v12 = v2[2];
      v13 = v2[4];
      if (v13 >= v12)
      {
        if ((v12 - *v2) >= 0)
        {
          if ((v13 - v12) >= 0)
          {
            if ((*v2 + v2[1] - v13) >= 0)
            {
              return __rev16(*result);
            }

            goto LABEL_64;
          }

          goto LABEL_59;
        }

        goto LABEL_54;
      }

      goto LABEL_49;
    }
  }

  else if ((a2 - 5) >= 3)
  {
    if (a2 == 4)
    {
      v14 = v2[2];
      v15 = v2[4];
      if (v15 >= v14)
      {
        if ((v14 - *v2) >= 0)
        {
          if ((v15 - v14) >= 0)
          {
            if ((*v2 + v2[1] - v15) >= 0)
            {
              return bswap32(*result);
            }

            goto LABEL_66;
          }

          goto LABEL_61;
        }

        goto LABEL_56;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v3 = v2[2];
      v4 = v2[4];
      if (v4 >= v3)
      {
        if ((v3 - *v2) >= 0)
        {
          if ((v4 - v3) >= 0)
          {
            if ((*v2 + v2[1] - v4) >= 0)
            {
              v5 = *result;
              return bswap64(v5);
            }

            goto LABEL_65;
          }

          goto LABEL_60;
        }

        goto LABEL_55;
      }

      goto LABEL_50;
    }

LABEL_37:
    if (!__OFSUB__(a2, 8))
    {
      v16 = v2[2];
      v17 = v2[4];
      if (v17 >= v16)
      {
        if ((v16 - *v2) >= 0)
        {
          if ((v17 - v16) >= 0)
          {
            if ((*v2 + v2[1] - v17) >= 0)
            {
              v5 = *(result + a2 - 8);
              return bswap64(v5);
            }

            goto LABEL_68;
          }

LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          return result;
        }

        goto LABEL_62;
      }

      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v8 = v2[2];
  v9 = v2[4];
  if (v9 < v8)
  {
    __break(1u);
    goto LABEL_45;
  }

  if ((v8 - *v2) < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if ((v9 - v8) < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((*v2 + v2[1] - v9) < 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v10 = 0;
  do
  {
    v11 = *result;
    result = (result + 1);
    v10 = v11 | (v10 << 8);
    --a2;
  }

  while (a2);
  return v10;
}

uint64_t storeEnumTagSinglePayload for BPlistMap.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x76)
  {
    *result = a2 - 119;
    if (a3 >= 0x77)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x77)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(char *a1, uint64_t a2)
{
  v2 = a2;
  v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a2 & ~(a2 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (a1 && v2)
  {
    while (1)
    {
      v5 = *a1;
      if (v5 < 0)
      {
        break;
      }

      v7 = *(v4 + 2);
      v6 = *(v4 + 3);
      if (v7 >= v6 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
      }

      ++a1;
      *(v4 + 2) = v7 + 1;
      v4[v7 + 32] = v5;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    v8 = static String._tryFromUTF8(_:)();
    v10 = v9;

    if (v10)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t protocol witness for PlistDecodingMap.value(from:) in conformance BPlistMap@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = v2;
  v6 = *a1;
  v7 = *(v2 + 64);

  os_unfair_lock_lock(v7 + 10);
  closure #1 in BPlistMap.loadValue(at:)(&v7[4], v6, v4, &v10);
  os_unfair_lock_unlock(v7 + 10);
  if (v3)
  {
  }

  v9 = v10;

  *a2 = v9;
  return result;
}

unint64_t BPlistScanner.scanASCIIString(rawTypeMarker:index:objectRangeEndIndex:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = (a2 + 1);
  v12 = (a2 + 1);
  if ((~result & 0xF) != 0)
  {
    v7 = result & 0xF;
    v8 = a3 - v5;
    if ((a3 - v5) < 0)
    {
      goto LABEL_17;
    }

LABEL_6:
    if (v8 < v7)
    {
      goto LABEL_17;
    }

    if (v7 == 5)
    {
      if ((&v5[-*v3] & 0x8000000000000000) != 0 || (v9 = *v3 + v3[1], (v9 - v5) < 1))
      {
        __break(1u);
      }

      else
      {
        if (*v5 != 36)
        {
          goto LABEL_16;
        }

        if (v9 >= v5)
        {
          if (*v5 == 1819635236 && v5[4] == 108)
          {
            return 0x9000000000000010;
          }

          goto LABEL_16;
        }
      }

      __break(1u);
      return result;
    }

LABEL_16:
    result = swift_allocObject();
    *(result + 16) = &v5[-v3[5]];
    *(result + 24) = v7;
    *(result + 32) = 1;
    return result;
  }

  result = BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(&v12, a3, 0x7473204949435341, 0xEC000000676E6972);
  if (v4)
  {
    return result;
  }

  v7 = result;
  v5 = v12;
  v8 = a3 - v12;
  if ((a3 - v12) >= 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
  swift_allocError();
  *v11 = xmmword_181247360;
  return swift_willThrow();
}

id partial apply for closure #1 in static _BPlistDecodingFormat.unwrapString<A>(from:in:for:_:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  return partial apply for closure #1 in static _BPlistDecodingFormat.unwrapString<A>(from:in:for:_:)(a1, a2, a3);
}

{
  if (*(v3 + 16))
  {
    v5 = 1;
  }

  else
  {
    v5 = 2415919360;
  }

  result = _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5(a1, a2, v5);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t static _BPlistDecodingFormat.container<A>(keyedBy:for:referencing:codingPathNode:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (a2 >> 60 != 3)
  {
    if (a2 >> 60 == 9 && (a2 == 0x9000000000000008 || a2 == 0x9000000000000010))
    {
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
      v10 = *(v5 + 40);

      _CodingPathNode.path.getter(v10);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    }

    else
    {
      v11 = *(a3 + 40);

      _CodingPathNode.path.getter(v11);

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(v12, a2, v13);
    }

    return swift_willThrow();
  }

  v15 = v4;
  v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v82 = v16 + 64;
  v17 = -1 << *(v16 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v16 + 64);
  v84 = MEMORY[0x1E69E7CC8];
  v20 = *(v16 + 16) >> 1;

  swift_bridgeObjectRetain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSiGMd);
  Dictionary.reserveCapacity(_:)(v20);
  v21 = v84;
  v22 = (63 - v17) >> 6;

  v23 = 0;
  v79 = v16;
  for (i = v5; ; v5 = i)
  {
    if (!v19)
    {
      v26 = v23;
      while (1)
      {
        v25 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v25 >= v22)
        {

          outlined consume of Set<AnyKeyPath>.Iterator._Variant();

          type metadata accessor for _PlistKeyedDecodingContainer();
          swift_getWitnessTable();
          KeyedDecodingContainer.init<A>(_:)();
        }

        v19 = *(v82 + 8 * v25);
        ++v26;
        if (v19)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v25 = v23;
LABEL_20:
    v27 = (v25 << 9) | (8 * __clz(__rbit64(v19)));
    v28 = *(v16 + 56);
    v29 = *(*(v16 + 48) + v27);
    v83 = *(v28 + v27);
    v30 = *(v5 + 24);
    v31 = *(v30 + 64);

    os_unfair_lock_lock(v31 + 10);
    v32 = *(v30 + 56);
    if (v29 >= *(v32 + 16))
    {
      break;
    }

    if (v29 < 0)
    {
      goto LABEL_59;
    }

    v33 = BPlistScanner.scanObject(at:)(*(v32 + 8 * v29 + 32));
    if (v15)
    {
      goto LABEL_54;
    }

    v34 = v33;
    os_unfair_lock_unlock(v31 + 10);

    if (v34 >> 60 == 9 && ((v34 + 0x6FFFFFFFFFFFFFF8) & 0xFFFFFFFFFFFFFFF7) == 0)
    {
      v73 = type metadata accessor for DecodingError();
      swift_allocError();
      v75 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v75 = MEMORY[0x1E69E6158];
      _CodingPathNode.path.getter(a4);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v73 - 8) + 104))(v75, *MEMORY[0x1E69E6B08], v73);
      swift_willThrow();

      outlined consume of Set<AnyKeyPath>.Iterator._Variant();
      outlined consume of BPlistMap.Value(v34);
      goto LABEL_56;
    }

    v36 = *(i + 24);

    v37 = _s10Foundation21_BPlistDecodingFormatV12unwrapString4from2in3for_SSAA0B3MapC5ValueO_AiA15_CodingPathNodeOxSgtKs0L3KeyRzlFZAA01_lO0O_Tt3g5(v34, v36, a4, 0, 0, 0, 255);
    v39 = v38;

    v40 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39);
    v44 = *(v40 + 16);
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_60;
    }

    v48 = v43;
    if (*(v40 + 24) >= v47)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_32;
      }

      v77 = v42;
      v53 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd);
      v54 = static _DictionaryStorage.copy(original:)();
      v40 = v54;
      v80 = v53;
      if (*(v53 + 16))
      {
        v55 = (v54 + 64);
        v56 = (v53 + 64);
        v57 = ((1 << *(v40 + 32)) + 63) >> 6;
        v76 = v53 + 64;
        if (v40 != v53 || v55 >= &v56[8 * v57])
        {
          memmove(v55, v56, 8 * v57);
        }

        v58 = 0;
        *(v40 + 16) = *(v53 + 16);
        v59 = 1 << *(v53 + 32);
        if (v59 < 64)
        {
          v60 = ~(-1 << v59);
        }

        else
        {
          v60 = -1;
        }

        v61 = v60 & *(v53 + 64);
        v62 = (v59 + 63) >> 6;
        if (v61)
        {
          do
          {
            v63 = __clz(__rbit64(v61));
            v78 = (v61 - 1) & v61;
LABEL_49:
            v66 = v63 | (v58 << 6);
            v67 = (*(v80 + 48) + 16 * v66);
            v69 = *v67;
            v68 = v67[1];
            v70 = *(*(v80 + 56) + 8 * v66);
            v71 = (*(v40 + 48) + 16 * v66);
            *v71 = v69;
            v71[1] = v68;
            *(*(v40 + 56) + 8 * v66) = v70;

            v61 = v78;
          }

          while (v78);
        }

        v64 = v58;
        while (1)
        {
          v58 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            goto LABEL_62;
          }

          if (v58 >= v62)
          {
            break;
          }

          v65 = *(v76 + 8 * v58);
          ++v64;
          if (v65)
          {
            v63 = __clz(__rbit64(v65));
            v78 = (v65 - 1) & v65;
            goto LABEL_49;
          }
        }
      }

      v42 = v77;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, isUniquelyReferenced_nonNull_native);
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v39);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_63;
      }
    }

LABEL_32:
    v19 &= v19 - 1;
    if (v48)
    {
      v24 = v42;

      *(*(v40 + 56) + 8 * v24) = v83;
      outlined consume of BPlistMap.Value(v34);
    }

    else
    {
      *(v40 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = (*(v40 + 48) + 16 * v42);
      *v50 = v37;
      v50[1] = v39;
      *(*(v40 + 56) + 8 * v42) = v83;
      outlined consume of BPlistMap.Value(v34);
      v51 = *(v40 + 16);
      v46 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v46)
      {
        goto LABEL_61;
      }

      *(v40 + 16) = v52;
    }

    v21 = v40;
    v23 = v25;
    v15 = 0;
    v16 = v79;
  }

  lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
  swift_allocError();
  *v72 = xmmword_1812468B0;
  swift_willThrow();
LABEL_54:
  os_unfair_lock_unlock(v31 + 10);

  outlined consume of Set<AnyKeyPath>.Iterator._Variant();

LABEL_56:
}

uint64_t _s10Foundation21_BPlistDecodingFormatV12unwrapString4from2in3for_SSAA0B3MapC5ValueO_AiA15_CodingPathNodeOxSgtKs0L3KeyRzlFZAA01_lO0O_Tt3g5(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = a3;
  if (a1 >> 60)
  {
    v22 = ~a7;
    v23 = _CodingPathNode.path.getter(a3);
    if (v22)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v24 = swift_allocObject();
      *(inited + 32) = v24;
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;
      *(v24 + 32) = a6;
      *(v24 + 40) = a7;
      *&v31 = v23;
      outlined copy of _CodingKey(a4, a5, a6, a7);
      specialized Array.append<A>(contentsOf:)(inited);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6158], a1, v25);

    goto LABEL_16;
  }

  v32 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);

  os_unfair_lock_lock((v16 + 40));
  closure #1 in BPlistMap.withBuffer<A>(for:perform:)specialized partial apply((v16 + 16), &v31);
  if (!v7)
  {
    os_unfair_lock_unlock((v16 + 40));
    v18 = *(&v31 + 1);
    inited = v31;

    if (v18)
    {
      return inited;
    }

    if (a7 == -1)
    {

LABEL_15:
      inited = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      outlined copy of _CodingKey?(a4, a5, v32, a7);
      _CodingPathNode.path.getter(v13);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(inited - 8) + 104))(v29, *MEMORY[0x1E69E6B00], inited);

LABEL_16:
      swift_willThrow();
      return inited;
    }

    v19 = swift_allocObject();
    v19[5] = &type metadata for _CodingKey;
    v19[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v20 = swift_allocObject();
    v19[2] = v20;
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;
    *(v20 + 32) = v32;
    *(v20 + 40) = a7;
    v19[7] = v13;
    if (v13 >> 62)
    {
      if (v13 >> 62 != 1)
      {
        v27 = 1;
        goto LABEL_14;
      }

      v21 = ((v13 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v21 = (v13 + 64);
    }

    v26 = *v21;

    v27 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
LABEL_14:
      v19[8] = v27;
      v13 = v19;
      goto LABEL_15;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v16 + 40));

  __break(1u);
  return result;
}

uint64_t sub_180839118()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18083915C()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

void *specialized closure #1 in BPlistMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(__int128 *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

unint64_t outlined consume of BPlistMap.Value(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 3)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  else
  {
    if (v1 > 5)
    {
      if (v1 != 6 && v1 != 7 && v1 != 8)
      {
        return result;
      }
    }

    if (v1 == 4 || v1 == 5)
    {
    }
  }

  return result;
}

uint64_t BPlistMap.__deallocating_deinit()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 40));
  result = *(v1 + 32);
  if (result)
  {
    if (result != *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    MEMORY[0x1865D2690]();
  }

  os_unfair_lock_unlock((v1 + 40));

  return swift_deallocClassInstance();
}

uint64_t BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *result;
  if (*result >= a2)
  {
    goto LABEL_8;
  }

  v8 = v4[2];
  v9 = v4[4];
  if (v9 < v8)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v8 - *v4) < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v9 - v8) < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((*v4 + v4[1] - v9) >= 0)
  {
    v11 = result;
    v13 = v7 + 1;
    v12 = *v7;
    *result = v7 + 1;
    if (specialized BPlistTypeMarker.init(_:)(v12) != 3 || (v14 = 1 << (v12 & 0xF), (a2 - v13) < v14))
    {
LABEL_8:
      lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
      swift_allocError();
      *v15 = a3;
      v15[1] = a4;
      swift_willThrow();
    }

    if (v14 > 3)
    {
      if ((v14 - 5) < 3)
      {
        goto LABEL_15;
      }

      if (v14 == 4)
      {
        result = bswap32(*(v7 + 1));
        goto LABEL_25;
      }

      if (v14 != 8)
      {
        goto LABEL_23;
      }

      result = bswap64(*(v7 + 1));
    }

    else
    {
      switch(v14)
      {
        case 1:
          result = *v13;
          break;
        case 2:
          result = __rev16(*(v7 + 1));
          break;
        case 3:
LABEL_15:
          result = 0;
          v16 = v7 + 1;
          v17 = 1 << (v12 & 0xF);
          do
          {
            v18 = *v16++;
            result = v18 | (result << 8);
            --v17;
          }

          while (v17);
          break;
        default:
LABEL_23:
          result = bswap64(*&v13[v14 - 8]);
          break;
      }
    }

LABEL_25:
    *v11 = &v13[v14];
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized BPlistTypeMarker.init(_:)(uint64_t result)
{
  v1 = (result >> 4) ^ 8;
  if (v1 <= 8)
  {
    if (v1 <= 3)
    {
      if (!v1)
      {
        return 9;
      }

      if (v1 == 2)
      {
        return 10;
      }
    }

    else
    {
      switch(v1)
      {
        case 4:
          return 11;
        case 5:
          return 12;
        case 8:
          if (!result)
          {
            return result;
          }

          if (result == 9)
          {
            return 2;
          }

          if (result == 8)
          {
            return 1;
          }

          break;
      }
    }
  }

  else if (v1 > 11)
  {
    switch(v1)
    {
      case 12:
        return 6;
      case 13:
        return 7;
      case 14:
        return 8;
    }
  }

  else
  {
    if (v1 == 9)
    {
      return 3;
    }

    if (v1 == 10)
    {
      return 4;
    }

    if (result == 51)
    {
      return 5;
    }
  }

  return 13;
}

uint64_t static _BPlistDecodingFormat.unwrapString<A>(from:in:for:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = a6;
  v74 = a3;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v66 - v12;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v69 = &v66 - v27;
  if (v25 >> 60)
  {
    v72 = v25;
    v44 = *(v14 + 16);
    v44(v19, a4, v13, v26);
    (v44)(v16, v19, v13);
    if ((v9[6])(v16, 1, a5) == 1)
    {
      v45 = *(v14 + 8);
      v45(v16, v13);
      v34 = _CodingPathNode.path.getter(v74);
      v45(v19, v13);
    }

    else
    {
      v46 = v70;
      v9[4](v70, v16, a5);
      v47 = _CodingPathNode.path.getter(v74);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v49 = v71;
      *(inited + 56) = a5;
      *(inited + 64) = v49;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v9[2](boxed_opaque_existential_0, v46, a5);
      *&v73 = v47;
      specialized Array.append<A>(contentsOf:)(inited);
      (v9[1])(v46, a5);
      (*(v14 + 8))(v19, v13);
      v34 = v73;
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6158], v72, v51);

    goto LABEL_17;
  }

  v67 = a5;
  v70 = v9;
  MEMORY[0x1EEE9AC00](v24);
  *(&v66 - 16) = v28;
  v29 = *(a2 + 64);
  *&v31 = MEMORY[0x1EEE9AC00](v30);
  *(&v66 - 4) = partial apply for closure #1 in static _BPlistDecodingFormat.unwrapString<A>(from:in:for:_:);
  *(&v66 - 3) = v32;
  *(&v66 - 1) = v31;

  os_unfair_lock_lock((v29 + 40));
  v33 = v72;
  partial apply for specialized closure #1 in BPlistMap.withBuffer<A>(for:perform:)((v29 + 16), &v73);
  if (!v33)
  {
    os_unfair_lock_unlock((v29 + 40));
    v35 = *(&v73 + 1);
    v34 = v73;

    if (v35)
    {
      return v34;
    }

    v36 = v14;
    v37 = *(v14 + 16);
    v38 = v69;
    v39 = v13;
    v37(v69, a4, v13);
    v37(v22, v38, v13);
    v40 = v70;
    v41 = v67;
    if ((*(v70 + 6))(v22, 1, v67) == 1)
    {
      v42 = *(v36 + 8);
      v42(v38, v13);
      v42(v22, v13);
      v43 = v74;
      v34 = v74 & 0x3FFFFFFFFFFFFFFFLL;

LABEL_16:
      v62 = type metadata accessor for DecodingError();
      swift_allocError();
      v64 = v63;
      _CodingPathNode.path.getter(v43);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v62 - 8) + 104))(v64, *MEMORY[0x1E69E6B00], v62);

LABEL_17:
      swift_willThrow();
      return v34;
    }

    v52 = *(v40 + 4);
    v53 = v68;
    v52(v68, v22, v41);
    v54 = swift_allocObject();
    v55 = v71;
    *(v54 + 40) = v41;
    *(v54 + 48) = v55;
    v56 = __swift_allocate_boxed_opaque_existential_0((v54 + 16));
    v52(v56, v53, v41);
    v57 = *(v36 + 8);
    v29 = v36 + 8;
    v57(v38, v39);
    v58 = v74;
    *(v54 + 56) = v74;
    if (v58 >> 62)
    {
      if (v58 >> 62 != 1)
      {
        v61 = 1;
        goto LABEL_15;
      }

      v59 = ((v58 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v59 = (v58 + 64);
    }

    v60 = *v59;

    v61 = v60 + 1;
    if (!__OFADD__(v60, 1))
    {
LABEL_15:
      *(v54 + 64) = v61;
      v34 = v54 & 0x3FFFFFFFFFFFFFFFLL;
      v43 = v54;
      goto LABEL_16;
    }

    __break(1u);
  }

  os_unfair_lock_unlock((v29 + 40));

  __break(1u);
  return result;
}

uint64_t static _BPlistDecodingFormat.unwrapBool<A>(from:for:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a3;
  v31 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v15;
  if (a1 >> 60 == 6)
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v28 = a1;
    v19 = *(v11 + 16);
    v19(&v27 - v15, v30, v10, v16);
    (v19)(v13, v17, v10);
    if ((*(v7 + 48))(v13, 1, a4) == 1)
    {
      v20 = *(v11 + 8);
      v20(v13, v10);
      _CodingPathNode.path.getter(v31);
      v20(v17, v10);
    }

    else
    {
      (*(v7 + 32))(v9, v13, a4);
      v21 = _CodingPathNode.path.getter(v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v23 = v29;
      *(inited + 56) = a4;
      *(inited + 64) = v23;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v7 + 16))(boxed_opaque_existential_0, v9, a4);
      v32 = v21;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v7 + 8))(v9, a4);
      (*(v11 + 8))(v17, v10);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6370], v28, v25);

    swift_willThrow();
  }

  return v18 & 1;
}

uint64_t type metadata instantiation function for _PlistDecodingStorage()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for _PlistKeyedDecodingContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _PlistDecoder.unkeyedContainer()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24[1] = a1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  v26 = v3;
  v24[2] = v4;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v24 - v15);
  v25 = v2;
  v17 = *(v2 + 16);

  if (MEMORY[0x1865CB560](v18, AssociatedTypeWitness))
  {
    v24[0] = v16;
    v27 = v17;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v16 = v7;
    BidirectionalCollection.last.getter();
    (v7[2])(v9, v12, v6);
    if ((*(v13 + 48))(v9, 1, AssociatedTypeWitness) != 1)
    {

      v7[1](v12, v6);
      v19 = v24[0];
      (*(v13 + 32))(v24[0], v9, AssociatedTypeWitness);
      v20 = v25;
      v21 = *(v25 + 40);
      v22 = *(v26 + 32);

      v22(v19, v20, v21);
      (*(v13 + 8))(v19, AssociatedTypeWitness);
    }
  }

  else
  {
    __break(1u);
  }

  result = v16[1](v9, v6);
  __break(1u);
  return result;
}

unint64_t BPlistScanner.scanArrayOrSet(typeMarker:rawTypeMarker:index:objectRangeEndIndex:)(char a1, int a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v38 = (a3 + 1);
  if ((~a2 & 0xF) != 0)
  {
    result = a2 & 0xF;
  }

  else
  {
    v8 = a4;
    result = BufferReader.readInt(updatingIndex:objectRangeEnd:for:)(&v38, a4, 0x7961727261, 0xE500000000000000);
    if (v5)
    {
      return result;
    }

    a4 = v8;
  }

  v10 = *(v4 + 55);
  if (!is_mul_ok(result, v10))
  {
    goto LABEL_8;
  }

  if (((result * v10) & 0x8000000000000000) != 0)
  {
    goto LABEL_77;
  }

  v11 = v38;
  if ((a4 - v38) < (result * v10))
  {
LABEL_8:
    lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
    swift_allocError();
    *v12 = xmmword_181247390;
    return swift_willThrow();
  }

  if (result >= 0x40000)
  {
    v13 = 0x40000;
  }

  else
  {
    v13 = result;
  }

  v37 = result;
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0, MEMORY[0x1E69E7CC0]);
  v14 = v37;
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_98;
  }

  v15 = result;
  v36 = a1;
  if (!v37)
  {
LABEL_65:
    v30 = swift_allocObject();
    *(v30 + 16) = v15;
    v31 = 0x2000000000000000;
    if (v36 == 10)
    {
      v31 = 0x1000000000000000;
    }

    return v31 | v30;
  }

  v16 = 0;
  v17 = v6[2];
  v18 = v6[4];
  v19 = v17 - *v6;
  v20 = v18 - v17;
  v21 = *v6 + v6[1] - v18;
  v22 = v10 - 8;
  while (1)
  {
    if (v10 <= 3)
    {
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v18 < v17)
          {
            goto LABEL_81;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_87;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_95;
          }

          v24 = *v11;
        }

        else
        {
          v24 = v10;
        }

        goto LABEL_58;
      }

      if (v10 == 2)
      {
        if (v18 < v17)
        {
          goto LABEL_79;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_88;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_96;
        }

        v24 = __rev16(*v11);
        goto LABEL_58;
      }
    }

    else if ((v10 - 5) >= 3)
    {
      if (v10 == 4)
      {
        if (v18 < v17)
        {
          goto LABEL_80;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_92;
        }

        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_97;
        }

        v24 = bswap32(*v11);
      }

      else
      {
        if (v10 == 8)
        {
          if (v18 < v17)
          {
            goto LABEL_82;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_91;
          }

          v23 = v11;
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_93;
          }
        }

        else
        {
          if (v18 < v17)
          {
            goto LABEL_78;
          }

          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_85;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_89;
          }

          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_94;
          }

          v23 = (v11 + v22);
        }

        v24 = bswap64(*v23);
        if ((v24 & 0x8000000000000000) != 0)
        {
LABEL_68:
          lazy protocol witness table accessor for type BPlistError and conformance BPlistError();
          swift_allocError();
          *v32 = xmmword_181247320;
          swift_willThrow();
        }
      }

      goto LABEL_58;
    }

    if (v18 < v17)
    {
      goto LABEL_73;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    v24 = 0;
    for (i = 0; i != v10; ++i)
    {
      v24 = *(v11 + i) | (v24 << 8);
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

LABEL_58:
    v27 = *(v15 + 16);
    v26 = *(v15 + 24);
    if (v27 >= v26 >> 1)
    {
      v28 = v15;
      v34 = v21;
      v35 = v19;
      v29 = v20;
      v33 = v22;
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v28);
      v22 = v33;
      v21 = v34;
      v20 = v29;
      v19 = v35;
      v15 = result;
      v14 = v37;
    }

    *(v15 + 16) = v27 + 1;
    *(v15 + 8 * v27 + 32) = v24;
    if (v18 < v17)
    {
      break;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    ++v16;
    v11 = (v11 + v10);
    if (v16 == v14)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

uint64_t static _BPlistDecodingFormat.unkeyedContainer(for:referencing:codingPathNode:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 >> 60 == 1)
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *(v14 + 16);
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation30_PlistUnkeyedDecodingContainerVyAA07_BPlistD6FormatVGMd);
    a4[4] = lazy protocol witness table accessor for type _PlistUnkeyedDecodingContainer<_BPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>();
    v18 = swift_allocObject();
    *a4 = v18;
    *(v18 + 32) = xmmword_1812468C0;
    *(v18 + 16) = a2;
    *(v18 + 24) = v14;
    *(v18 + 64) = 0;
    *(v18 + 72) = a3;
    *(v18 + 48) = v15;
    *(v18 + 56) = 0;
  }

  else
  {
    if (a1 >> 60 == 9 && (a1 == 0x9000000000000008 || a1 == 0x9000000000000010))
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
      v9 = *(a2 + 40);

      _CodingPathNode.path.getter(v9);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    }

    else
    {
      v10 = *(a2 + 40);

      _CodingPathNode.path.getter(v10);

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5(v11, a1, v12);
    }

    return swift_willThrow();
  }
}

uint64_t sub_18083AB64()
{

  v1 = *(v0 + 40);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of BPlistMap.Value(v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t lazy protocol witness table accessor for type _PlistUnkeyedDecodingContainer<_BPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type _PlistUnkeyedDecodingContainer<_BPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type _PlistUnkeyedDecodingContainer<_BPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation30_PlistUnkeyedDecodingContainerVyAA07_BPlistD6FormatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlistUnkeyedDecodingContainer<_BPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>);
  }

  return result;
}

uint64_t _NSXPCDistantObjectSimpleMessageSend4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  [v11[1] _sendSelector:a2 withProxy:v11 arg1:a3 arg2:a4 arg3:a5 arg4:a6];

  return 0;
}

Swift::String __swiftcall _SwiftURL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  if (v1[3])
  {
    _SwiftURL.absoluteSwiftURL.getter();
    v3 = _SwiftURL.relativePath(percentEncoded:)(percentEncoded);
    countAndFlagsBits = v3._countAndFlagsBits;
    object = v3._object;

    goto LABEL_21;
  }

  v6 = v1[2];
  if (!percentEncoded)
  {
    if ((*(v6 + 220) & 8) != 0)
    {
      if (*(v6 + 168))
      {
        v13 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v13 = String.subscript.getter();
      }

      v29 = v13;
      v30 = v14;
      v31 = v15;
      v32 = v16;
      if ((v13 ^ v14) >> 14)
      {
        v42 = v13;
        v43 = v14;
        v44 = v15;
        v45 = v16;
        MEMORY[0x1EEE9AC00](v13);
        v39 = &v42;
        v40 = MEMORY[0x1E69E7CD0];
        v41 = 4;

        countAndFlagsBits = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v38, v29, v30, v31, v32);
        object = v35;

        if (object == 1)
        {

          v23 = MEMORY[0x1E69E7CD0];
          v24 = v29;
          v25 = v30;
          v26 = v31;
          v27 = v32;
          v28 = 4;
LABEL_24:
          countAndFlagsBits = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_Ss8UTF8ViewVTt2B5(v24, v25, v26, v27, v23, v28);
          object = v36;
          swift_bridgeObjectRelease_n();
          if (object)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (*(v6 + 168))
      {
        v8 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v8 = String.subscript.getter();
      }

      v17 = v8;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      if ((v8 ^ v9) >> 14)
      {
        v21 = v1[5];
        v42 = v8;
        v43 = v9;
        v44 = v10;
        v45 = v11;
        MEMORY[0x1EEE9AC00](v8);
        v39 = &v42;
        v40 = MEMORY[0x1E69E7CD0];
        v41 = v21;

        countAndFlagsBits = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v38, v17, v18, v19, v20);
        object = v22;

        if (object == 1)
        {

          v23 = MEMORY[0x1E69E7CD0];
          v24 = v17;
          v25 = v18;
          v26 = v19;
          v27 = v20;
          v28 = v21;
          goto LABEL_24;
        }

LABEL_26:

        if (object)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

LABEL_20:
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_21;
  }

  if (*(v6 + 168))
  {
    v7 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v7 = String.subscript.getter();
  }

  countAndFlagsBits = MEMORY[0x1865CAE80](v7);
  object = v12;

LABEL_21:
  v33 = countAndFlagsBits;
  v34 = object;
  result._object = v34;
  result._countAndFlagsBits = v33;
  return result;
}

void _NSSetBoolValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetBoolValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F4668;
      v11[5] = v8;
      v11[6] = a2;
      v11[4] = a1;
      v12 = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

uint64_t URL.init(fileURLWithPath:isDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v8 = type metadata accessor for _BridgedURL();
    v9 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v8 = type metadata accessor for _SwiftURL();
    v9 = &protocol witness table for _SwiftURL;
  }

  v10 = v9[7];

  v10(a1, a2, a3 & 1, v8, v9);
  v11 = (v9[56])(v8, v9);
  v13 = v12;
  result = swift_unknownObjectRelease();
  *a4 = v11;
  a4[1] = v13;
  return result;
}

uint64_t URL.absoluteString.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 112))(ObjectType, v1);
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v3 = _s10Foundation6Base64O14encodeToString5bytes7optionsSSx_So06NSDataB15EncodingOptionsVtSlRzs5UInt8V7ElementRtzlFZAA4DataV_Tt1g5(v1, v2, options);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t _s10Foundation6Base64O14encodeToString5bytes7optionsSSx_So06NSDataB15EncodingOptionsVtSlRzs5UInt8V7ElementRtzlFZAA4DataV_Tt1g5(uint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = 0;
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    result = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    result = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    return result;
  }

  result = HIDWORD(v5) - v5;
LABEL_10:
  specialized static Base64.encodeComputeCapacity(bytes:options:)(result, a3);
  result = specialized Data.withContiguousStorageIfAvailable<A>(_:)(v5, a2);
  if (!v9)
  {
    v10 = specialized _copyCollectionToContiguousArray<A>(_:)(v5, a2)[2];
    v11 = specialized static Base64.encodeComputeCapacity(bytes:options:)(v10, a3);
    MEMORY[0x1EEE9AC00](v11);
    v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

    return v12;
  }

  return result;
}

uint64_t specialized static Base64.encodeComputeCapacity(bytes:options:)(uint64_t result, unint64_t a2)
{
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = (result + 2) / 3;
  if ((v2 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  result = 4 * v2;
  if ((a2 & 3) != 0)
  {
    v3 = 1;
    if (((a2 >> 4) & 1) == ((a2 >> 5) & 1))
    {
      v3 = 2;
    }

    v4 = 64;
    if ((a2 & 1) == 0)
    {
      v4 = 76;
    }

    if (result % v4 || v3 >= result)
    {
      v3 = 0;
    }

    v6 = ((result / v4) << (((a2 & 0x10) != 0) == ((a2 & 0x20) != 0))) - v3;
    v7 = __OFADD__(result, v6);
    result += v6;
    if (v7)
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t specialized Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFSSSg_Tg5015_s10Foundation4b17V32withContiguousC50IfAvailableyxSgxSRys5UInt8VGKXEKlFAESWKXEfU_SS_TG5SRys0Q0VGxs5Error_pRi_zRi0_zlySSIsgyrzo_Tf1ncn_n0i88Foundation6Base64O14encodeToString5bytes7optionsSSx_So06NSDataB15EncodingOptionsVtSlRzs5Q28V7ElementRtzlFZSSSRyAJGXEfU_SiSo06NSDataX15EncodingOptionsVTf1nnc_n(v3, v4, a2 & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFSSSg_Tg5015_s10Foundation4b17V32withContiguousC50IfAvailableyxSgxSRys5UInt8VGKXEKlFAESWKXEfU_SS_TG5SRys0Q0VGxs5Error_pRi_zRi0_zlySSIsgyrzo_Tf1ncn_n0i88Foundation6Base64O14encodeToString5bytes7optionsSSx_So06NSDataB15EncodingOptionsVtSlRzs5Q28V7ElementRtzlFZSSSRyAJGXEfU_SiSo06NSDataX15EncodingOptionsVTf1nnc_n(v3, v4, a2 & 0x3FFFFFFFFFFFFFFFLL);
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](a1);
  return String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
}

{
  v24[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v24, 0, 14);
      result = specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of makeString #2 <A>(buffer:) in String.init<A>(bytes:encoding:), v24, 0);
      if (result)
      {
        __break(1u);
      }

      else
      {
        result = static String._tryFromUTF8(_:)();
        if (!v23)
        {
          return _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v24, 0);
        }
      }

      return result;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v10)
    {
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v12 = __OFSUB__(v8, v11);
      v13 = v8 - v11;
      if (v12)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v14 = v13 + v10;
      v12 = __OFSUB__(v9, v8);
      v15 = v9 - v8;
      if (!v12)
      {
LABEL_14:
        v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v16 >= v15)
        {
          v16 = v15;
        }

        v17 = v16 + v14;
        if (v14)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v14, v18);
      }
    }

    else
    {
      v14 = 0;
      v12 = __OFSUB__(v9, v8);
      v15 = v9 - v8;
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    v19 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v20 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v20)
      {
        goto LABEL_30;
      }

      v21 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v22 = a1 - v21;
      if (!__OFSUB__(a1, v21))
      {
        if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v19)
        {
          v19 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v14 = v22 + v20;
        if (v22 + v20)
        {
          v18 = v19 + v14;
          return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v14, v18);
        }

LABEL_30:
        v14 = 0;
        v18 = 0;
        return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(v14, v18);
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v24[0] = a1;
  v3 = v24;
  LOWORD(v24[1]) = a2;
  BYTE2(v24[1]) = BYTE2(a2);
  BYTE3(v24[1]) = BYTE3(a2);
  BYTE4(v24[1]) = BYTE4(a2);
  v4 = BYTE6(a2);
  BYTE5(v24[1]) = BYTE5(a2);
  if (specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of makeString #2 <A>(buffer:) in String.init<A>(bytes:encoding:), v24, BYTE6(a2)))
  {
    v5 = v4 >= 3;
    v4 -= 3;
    if (!v5)
    {
LABEL_39:
      __break(1u);
    }

    v3 = v24 + 3;
  }

  result = static String._tryFromUTF8(_:)();
  if (!v7)
  {
    return _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v3, v4);
  }

  return result;
}

{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v18[0] = a1;
      LOWORD(v18[1]) = a2;
      BYTE2(v18[1]) = BYTE2(a2);
      BYTE3(v18[1]) = BYTE3(a2);
      v3 = a2 >> 40;
      BYTE4(v18[1]) = BYTE4(a2);
      v4 = BYTE6(a2);
      BYTE5(v18[1]) = v3;
      v5 = v18;
      return _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(v5, v4);
    }

    v13 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v14 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (v14)
      {
        v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v16 = a1 - v15;
        if (!__OFSUB__(a1, v15))
        {
          v5 = (v16 + v14);
          if (v16 + v14)
          {
            if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= v13)
            {
              v4 = v13;
            }

            else
            {
              v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            }

            return _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(v5, v4);
          }

          goto LABEL_21;
        }

LABEL_27:
        __break(1u);
      }

LABEL_21:
      v5 = 0;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v2 != 2)
  {
    memset(v18, 0, 14);
    v5 = v18;
LABEL_22:
    v4 = 0;
    return _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(v5, v4);
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v8)
  {
    if (!__OFSUB__(v7, v6))
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v10 = __OFSUB__(v6, v9);
  v11 = v6 - v9;
  if (v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = __OFSUB__(v7, v6);
  v12 = v7 - v6;
  if (v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = (v11 + v8);
  if (!(v11 + v8))
  {
    goto LABEL_21;
  }

  if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= v12)
  {
    v4 = v12;
  }

  else
  {
    v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  }

  return _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O5ASCIIO_SRys5UInt8VGTt0t1g5(v5, v4);
}

uint64_t _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFSSSg_Tg5015_s10Foundation4b17V32withContiguousC50IfAvailableyxSgxSRys5UInt8VGKXEKlFAESWKXEfU_SS_TG5SRys0Q0VGxs5Error_pRi_zRi0_zlySSIsgyrzo_Tf1ncn_n0i88Foundation6Base64O14encodeToString5bytes7optionsSSx_So06NSDataB15EncodingOptionsVtSlRzs5Q28V7ElementRtzlFZSSSRyAJGXEfU_SiSo06NSDataX15EncodingOptionsVTf1nnc_n(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(a3 + 16);
  if (!v4)
  {
    result = 0;
    if (!__OFSUB__(a2, v3))
    {
      return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(result);
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(a3 + 40);
  v6 = __OFSUB__(result, v5);
  v7 = result - v5;
  if (!v6)
  {
    result = v7 + v4;
    if (!__OFSUB__(a2, v3))
    {
      return specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(result);
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
  }

  return String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
}

uint64_t closure #1 in closure #1 in static Base64.encodeToString<A>(bytes:options:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    v18 = 48;
    if ((a6 & 0x10) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((a6 & 2) != 0)
  {
    v18 = 57;
    if ((a6 & 0x10) != 0)
    {
LABEL_17:
      if ((a6 & 0x20) == 0)
      {
        v19 = 0;
        v20 = 13;
LABEL_19:
        v21 = 1;
        if (a5 >= v18)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_14:
    if ((a6 & 0x20) != 0)
    {
      v19 = 0;
      v20 = 10;
      goto LABEL_19;
    }

LABEL_28:
    v21 = 0;
    v20 = 13;
    v19 = 10;
    if (a5 >= v18)
    {
LABEL_20:
      v22 = 0;
      v23 = 0;
      v24 = (result + 3);
      while (1)
      {
        v25 = __OFADD__(v23, 3) ? 0x7FFFFFFFFFFFFFFFLL : v23 + 3;
        v26 = v23 + 2;
        if (__OFADD__(v23, 2))
        {
          break;
        }

        v27 = (a4 + v23);
        v28 = v27[1];
        v29 = *v27;
        v30 = *(a4 + v26);
        *(v24 - 3) = outlined read-only object #0 of one-time initialization function for encoding0[v29 + 32];
        *(v24 - 2) = byte_1EEED2F38[(v28 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v29 & 3))];
        *(v24 - 1) = byte_1EEED2F38[(v30 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v28 & 0xF))];
        *v24 = byte_1EEED2F38[v30];
        v17 = v22 + 4;
        if (__OFADD__(v22, 4))
        {
          goto LABEL_119;
        }

        v24 += 4;
        v22 += 4;
        v23 = v25;
        if (v25 >= v18)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

LABEL_29:
    v17 = 0;
LABEL_30:
    v31 = a5 / v18 * v18;
    if ((a5 / v18 * v18) >> 64 != v31 >> 63)
    {
      goto LABEL_130;
    }

    if (v18 < v31)
    {
      v32 = v18;
      do
      {
        v33 = v32 + v18;
        v34 = __OFADD__(v32, v18);
        v35 = __OFADD__(v32, v18) ? 0x7FFFFFFFFFFFFFFFLL : v32 + v18;
        *(result + v17) = v20;
        v36 = __OFADD__(v17++, 1);
        if (v36)
        {
          goto LABEL_125;
        }

        if ((v21 & 1) == 0)
        {
          *(result + v17) = v19;
          v36 = __OFADD__(v17++, 1);
          if (v36)
          {
            goto LABEL_129;
          }
        }

        if (v34)
        {
          goto LABEL_126;
        }

        if (v32 < v33)
        {
          while (1)
          {
            v37 = v32 + 3;
            if (__OFADD__(v32, 3))
            {
              v37 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (__OFADD__(v32, 2))
            {
              break;
            }

            v38 = a4 + v32;
            v39 = *(a4 + v32);
            v40 = *(a4 + v32 + 2);
            v41 = *(v38 + 1);
            *(result + v17) = outlined read-only object #0 of one-time initialization function for encoding0[v39 + 32];
            if (__OFADD__(v17, 1))
            {
              goto LABEL_110;
            }

            *(result + v17 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v41 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v39 & 3))) + 32);
            if (__OFADD__(v17, 2))
            {
              goto LABEL_111;
            }

            *(result + v17 + 2) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v40 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v41 & 0xF))) + 32);
            if (__OFADD__(v17, 3))
            {
              goto LABEL_112;
            }

            *(result + v17 + 3) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + v40 + 32);
            v42 = v17 + 4;
            if (__OFADD__(v17, 4))
            {
              goto LABEL_113;
            }

            v17 += 4;
            v32 = v37;
            if (v37 >= v33)
            {
              v17 = v42;
              v33 = v35;
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

LABEL_33:
        v32 = v33;
      }

      while (v33 < v31);
    }

    if (a5 / v18 >= 1 && v31 < a5)
    {
      *(result + v17) = v20;
      v36 = __OFADD__(v17++, 1);
      if (v36)
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      if ((v21 & 1) == 0)
      {
        *(result + v17) = v19;
        v36 = __OFADD__(v17++, 1);
        if (v36)
        {
          goto LABEL_136;
        }
      }
    }

    v43 = 3 * (a5 / 3);
    if (v31 < v43)
    {
      while (1)
      {
        v44 = v31 + 3;
        if (__OFADD__(v31, 3))
        {
          v44 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (__OFADD__(v31, 2))
        {
          break;
        }

        v45 = a4 + v31;
        v46 = *(a4 + v31);
        v47 = *(a4 + v31 + 2);
        v48 = *(v45 + 1);
        *(result + v17) = outlined read-only object #0 of one-time initialization function for encoding0[v46 + 32];
        if (__OFADD__(v17, 1))
        {
          goto LABEL_121;
        }

        *(result + v17 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v48 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v46 & 3))) + 32);
        if (__OFADD__(v17, 2))
        {
          goto LABEL_122;
        }

        *(result + v17 + 2) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v47 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v48 & 0xF))) + 32);
        if (__OFADD__(v17, 3))
        {
          goto LABEL_123;
        }

        *(result + v17 + 3) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + v47 + 32);
        v49 = v17 + 4;
        if (__OFADD__(v17, 4))
        {
          goto LABEL_124;
        }

        v17 += 4;
        v31 = v44;
        if (v44 >= v43)
        {
          v17 = v49;
          goto LABEL_69;
        }
      }

LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

LABEL_69:
    if (a5 % 3 < 1)
    {
      return v17;
    }

    v50 = (v43 + 1);
    if (v43 + 1 >= a5)
    {
      v51 = 0;
    }

    else
    {
      v51 = v50[a4];
    }

    v52 = v43 + 2;
    if (__OFADD__(v43, 2))
    {
      goto LABEL_131;
    }

    v53 = *(a4 + v43);
    if (v52 < a5)
    {
      v54 = *(a4 + v52);
      *(result + v17) = outlined read-only object #0 of one-time initialization function for encoding0[v53 + 32];
      if (v50 >= a5)
      {
LABEL_89:
        if (__OFADD__(v17, 1))
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        *(result + v17 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + 16 * (v53 & 3) + 32);
        v36 = __OFADD__(v17, 2);
        v56 = v17 + 2;
        if (v36)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v6 = 61;
        *(result + v56) = 61;
        v7 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        *(result + v7) = 61;
        v36 = __OFADD__(v56, 2);
        v17 = v56 + 2;
        if (v36)
        {
          __break(1u);
          goto LABEL_95;
        }

        return v17;
      }

      if (__OFADD__(v17, 1))
      {
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }

      v50 = &outlined read-only object #0 of one-time initialization function for encoding1;
      *(result + v17 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v51 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v53 & 3))) + 32);
      if (__OFADD__(v17, 2))
      {
LABEL_139:
        __break(1u);
        goto LABEL_140;
      }

      *(result + v17 + 2) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v54 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v51 & 0xF))) + 32);
      v53 = v17 + 3;
      if (__OFADD__(v17, 3))
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v51 = *(&outlined read-only object #0 of one-time initialization function for encoding1 + v54 + 32);
      *(result + v53) = v51;
      v36 = __OFADD__(v17, 4);
      v17 += 4;
      if (!v36)
      {
        return v17;
      }

      __break(1u);
    }

    *(result + v17) = outlined read-only object #0 of one-time initialization function for encoding0[v53 + 32];
    if (v50 < a5)
    {
      if (__OFADD__(v17, 1))
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      *(result + v17 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + ((v51 >> 4) & 0xFFFFFFCF | (16 * (v53 & 3))) + 32);
      if (__OFADD__(v17, 2))
      {
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      *(result + v17 + 2) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + 4 * (v51 & 0xF) + 32);
      v36 = __OFADD__(v17, 3);
      v55 = v17 + 3;
      if (v36)
      {
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      LOBYTE(v53) = 61;
      *(result + v55) = 61;
      v36 = __OFADD__(v55, 1);
      v17 = v55 + 1;
      if (!v36)
      {
        return v17;
      }

      __break(1u);
    }

    goto LABEL_89;
  }

  v6 = 3 * (a5 / 3);
  v7 = a5 % 3;
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = (result + 3);
    while (1)
    {
      v11 = __OFADD__(v9, 3) ? 0x7FFFFFFFFFFFFFFFLL : v9 + 3;
      v12 = v9 + 2;
      if (__OFADD__(v9, 2))
      {
        goto LABEL_127;
      }

      v13 = (a4 + v9);
      v14 = v13[1];
      v15 = *v13;
      v16 = *(a4 + v12);
      *(v10 - 3) = outlined read-only object #0 of one-time initialization function for encoding0[v15 + 32];
      *(v10 - 2) = byte_1EEED2F38[(v14 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v15 & 3))];
      *(v10 - 1) = byte_1EEED2F38[(v16 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v14 & 0xF))];
      *v10 = byte_1EEED2F38[v16];
      v17 = v8 + 4;
      if (__OFADD__(v8, 4))
      {
        goto LABEL_128;
      }

      v10 += 4;
      v8 += 4;
      v9 = v11;
      if (v11 >= v6)
      {
        if (v7 >= 1)
        {
          goto LABEL_97;
        }

        return v17;
      }
    }
  }

LABEL_95:
  if (v7 < 1)
  {
    return 0;
  }

  v17 = 0;
LABEL_97:
  v57 = *(a4 + v6);
  v58 = v6 + 1;
  if (v6 + 1 >= a5)
  {
    v59 = 0;
  }

  else
  {
    v59 = *(a4 + v58);
  }

  v60 = v6 + 2;
  if (v6 + 2 >= a5)
  {
    v61 = 0u;
  }

  else
  {
    v61 = *(a4 + v60);
  }

  v62 = v57;
  v63 = outlined read-only object #0 of one-time initialization function for encoding0[v57 + 32];
  v31 = result + v17;
  *(result + v17) = v63;
  v64 = 16 * (v62 & 3);
  if (v58 >= a5)
  {
    goto LABEL_108;
  }

  v21 = &outlined read-only object #0 of one-time initialization function for encoding1;
  v64 = *(&outlined read-only object #0 of one-time initialization function for encoding1 + (v64 | (v59 >> 4)) + 32);
  *(v31 + 1) = v64;
  v19 = 4 * (v59 & 0xF);
  if (v60 < a5)
  {
    *(v31 + 2) = byte_1EEED2F38[v19 | (v61 >> 6)];
    *(v31 + 3) = byte_1EEED2F38[v61];
    v36 = __OFADD__(v17, 4);
    v17 += 4;
    if (!v36)
    {
      return v17;
    }

    __break(1u);
LABEL_108:
    *(v31 + 1) = *(&outlined read-only object #0 of one-time initialization function for encoding1 + v64 + 32);
    *(v31 + 2) = 15677;
    v17 += 4;
    return v17;
  }

LABEL_114:
  *(v31 + 2) = *(v21 + v19 + 32);
  v36 = __OFADD__(v17, 3);
  v65 = v17 + 3;
  if (!v36)
  {
    *(result + v65) = 61;
    return v65 + 1;
  }

LABEL_143:
  __break(1u);
  return result;
}

unint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v147 = a1;
  v10 = v3;
  v8 = *v3;
  v9 = v10[1];
  v11 = v6[2];
  v13 = *(a3 + 24);
  v155 = *(a3 + 16);
  v12 = v155;
  v156 = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v154);
  v15 = *(v12 - 8);
  (*(v15 + 16))(boxed_opaque_existential_0, a2, v12);
  v16 = *(v8 + 152);
  if (!v16)
  {
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v28;
    goto LABEL_84;
  }

  if (v16 != 1)
  {
    v29 = *(v8 + 160);

    v30 = __JSONEncoder.codingPath.getter();
    v31 = _CodingPathNode.path.getter(v11);
    v151 = v30;
    specialized Array.append<A>(contentsOf:)(v31);
    v11 = v30;
    outlined init with copy of Hashable & Sendable(v154, &v151);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
    }

    v34 = *(v11 + 16);
    v33 = *(v11 + 24);
    v142 = v9;
    v143 = v4;
    v146 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v11);
    }

    v35 = __swift_mutable_project_boxed_opaque_existential_1(&v151, v153);
    v36 = MEMORY[0x1EEE9AC00](v35);
    v38 = &v136 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v38, v36);
    v149 = v12;
    v150 = v13;
    v40 = __swift_allocate_boxed_opaque_existential_0(&v148);
    (*(v15 + 32))(v40, v38, v12);
    *(v11 + 16) = v146;
    outlined init with take of Equatable(&v148, v11 + 40 * v34 + 32);
    __swift_destroy_boxed_opaque_existential_1(&v151);
    v16(&v151, v11);

    __swift_project_boxed_opaque_existential_1(&v151, v153);
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v41;
    sub_1807A5C7C(v16);
    __swift_destroy_boxed_opaque_existential_1(&v151);
    goto LABEL_83;
  }

  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = v17;
  v20 = v18;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v142 = v9;
    v143 = v4;
    v22 = String.index(after:)();
    v23 = 7;
    if (((v20 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
    {
      v23 = 11;
    }

    v140 = 4 * v21;
    if (4 * v21 < v22 >> 14)
    {
      __break(1u);
    }

    else
    {
      v139 = v23 | (v21 << 16);
      v141 = v20;
      v24 = String.subscript.getter();
      v9 = v26;
      v11 = MEMORY[0x1E69E7CC0];
      v157 = v19;
      if ((v24 ^ v27) >= 0x4000)
      {
        v42 = v24;
        v43 = v25;
        v20 = 0x700030001;
        v5 = 15;
        while (1)
        {
          v138 = v5;
          v144 = v11;
          v5 = Substring.UnicodeScalarView.index(before:)();
          v44 = Substring.UnicodeScalarView.subscript.getter();
          v45 = v44;
          v46 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v44), 1u);
          v19 = v42;
          if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v45, v46, 0x700030001))
          {
            break;
          }

LABEL_20:
          v47 = Substring.UnicodeScalarView.index(after:)();

          v49 = v19 >> 14;
          v50 = v138;
          if (v19 >> 14 < v138 >> 14 || v47 >> 14 < v49)
          {
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
            goto LABEL_122;
          }

          v11 = v144;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v144 + 2) + 1, 1, v144);
            v11 = result;
          }

          v52 = *(v11 + 16);
          v51 = *(v11 + 24);
          if (v52 >= v51 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v11);
            v11 = result;
          }

          *(v11 + 16) = v52 + 1;
          v53 = v11 + 16 * v52;
          *(v53 + 32) = v50;
          *(v53 + 40) = v19;
          v136 = v19 >> 14;
          if (v140 < v49)
          {
            goto LABEL_118;
          }

          v54 = String.subscript.getter();
          v9 = v56;
          if ((v54 ^ v57) < 0x4000)
          {
            v5 = v19;
            goto LABEL_74;
          }

          v5 = v54;
          v58 = v55;
          v144 = v11;
          v146 = Substring.UnicodeScalarView.index(before:)();
          v59 = Substring.UnicodeScalarView.subscript.getter();
          v60 = v59;
          LOBYTE(v11) = 0;
          v61 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v59), 0);
          v62 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v60, v61, 0x700030000);
          v63 = v5;
          v20 = v141;
          if (!v62)
          {
            v74 = HIBYTE(v9) & 0xF;
            if ((v9 & 0x2000000000000000) == 0)
            {
              v74 = v58 & 0xFFFFFFFFFFFFLL;
            }

            v145 = v74;
            v138 = v9 & 0xFFFFFFFFFFFFFFLL;
            v137 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v63 = v5;
            while ((v63 ^ v146) >= 0x4000)
            {
              v68 = _StringGuts.validateInclusiveScalarIndex(_:)(v63, v58, v9);
              v42 = v68 >> 16;
              if (v68 >> 16 >= v145)
              {
                goto LABEL_96;
              }

              if ((v9 & 0x1000000000000000) != 0)
              {
                v63 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v9 & 0x2000000000000000) != 0)
                {
                  v151 = v58;
                  v152 = v138;
                  v79 = *(&v151 + v42);
                }

                else
                {
                  v78 = v137;
                  if ((v58 & 0x1000000000000000) == 0)
                  {
                    v78 = _StringObject.sharedUTF8.getter();
                  }

                  v79 = *(v78 + v42);
                }

                v80 = v79;
                v81 = __clz(v79 ^ 0xFF) - 24;
                if (v80 >= 0)
                {
                  LOBYTE(v81) = 1;
                }

                v63 = ((v42 + v81) << 16) | 5;
              }

              v75 = Substring.UnicodeScalarView.subscript.getter();
              v76 = v75;
              v77 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v75), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v76, v77, 0x700030000))
              {
                goto LABEL_29;
              }
            }

            v5 = v19;
            v11 = v144;
            goto LABEL_74;
          }

LABEL_29:
          v64 = Substring.UnicodeScalarView.index(after:)();

          if (v64 >> 14 < v63 >> 14)
          {
            goto LABEL_119;
          }

          result = String.index(after:)();
          if (v63 >> 14 == result >> 14)
          {
            v5 = v19;
            v11 = v144;
          }

          else
          {
            result = String.index(before:)();
            if (v136 > result >> 14)
            {
              goto LABEL_121;
            }

            v5 = result;
            v11 = v144;
            v83 = *(v144 + 2);
            v82 = *(v144 + 3);
            if (v83 >= v82 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v144);
              v11 = result;
            }

            *(v11 + 16) = v83 + 1;
            v84 = v11 + 16 * v83;
            *(v84 + 32) = v19;
            *(v84 + 40) = v5;
          }

          v20 = 0x700030001;
          if (v140 < v64 >> 14)
          {
            goto LABEL_120;
          }

          v42 = String.subscript.getter();
          v43 = v85;
          v9 = v86;
          if ((v42 ^ v87) < 0x4000)
          {
            goto LABEL_74;
          }
        }

        if ((v9 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v9) & 0xF;
        }

        else
        {
          v11 = v43 & 0xFFFFFFFFFFFFLL;
        }

        v145 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v146 = v9 & 0xFFFFFFFFFFFFFFLL;
        v19 = v42;
        while (1)
        {
          if ((v19 ^ v5) < 0x4000)
          {
            v11 = v144;
            v5 = v138;
            goto LABEL_74;
          }

          v68 = _StringGuts.validateInclusiveScalarIndex(_:)(v19, v43, v9);
          v69 = v68 >> 16;
          if (v68 >> 16 >= v11)
          {
            break;
          }

          if ((v9 & 0x1000000000000000) != 0)
          {
            v19 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v9 & 0x2000000000000000) != 0)
            {
              v151 = v43;
              v152 = v146;
              v71 = *(&v151 + v69);
            }

            else
            {
              v70 = v145;
              if ((v43 & 0x1000000000000000) == 0)
              {
                v70 = _StringObject.sharedUTF8.getter();
              }

              v71 = *(v70 + v69);
            }

            v72 = v71;
            v73 = __clz(v71 ^ 0xFF) - 24;
            if (v72 >= 0)
            {
              LOBYTE(v73) = 1;
            }

            v19 = ((v69 + v73) << 16) | 5;
          }

          v65 = Substring.UnicodeScalarView.subscript.getter();
          v66 = v65;
          v20 = 0x700030001;
          v67 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v65), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v66, v67, 0x700030001))
          {
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v5 = 15;
LABEL_74:

      if (v140 >= v5 >> 14)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_76:
          v89 = *(v11 + 16);
          v88 = *(v11 + 24);
          v90 = v89 + 1;
          if (v89 >= v88 >> 1)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v11);
          }

          *(v11 + 16) = v90;
          v91 = v11 + 16 * v89;
          v92 = v139;
          *(v91 + 32) = v5;
          *(v91 + 40) = v92;
          v151 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v90, 0);
          v93 = v151;
          v144 = v11;
          v94 = v11 + 40;
          do
          {
            String.subscript.getter();
            v95 = Substring.lowercased()();
            LOBYTE(v11) = v95._countAndFlagsBits;

            v151 = v93;
            v97 = v93[2];
            v96 = v93[3];
            if (v97 >= v96 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1);
              v93 = v151;
            }

            v94 += 16;
            v93[2] = v97 + 1;
            *&v93[2 * v97 + 4] = v95;
            --v90;
          }

          while (v90);

          v151 = v93;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v19 = BidirectionalCollection<>.joined(separator:)();
          v99 = v98;

          v20 = v99;
LABEL_83:
          v9 = v142;
          v5 = v143;
          goto LABEL_84;
        }

LABEL_116:
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
        goto LABEL_76;
      }
    }

    __break(1u);
    goto LABEL_116;
  }

LABEL_84:
  __swift_destroy_boxed_opaque_existential_1(v154);
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v154[0] = *(v9 + 16);
  v42 = v154[0];
  *(v9 + 16) = 0x8000000000000000;
  v68 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  v102 = *(v42 + 16);
  v103 = (v101 & 1) == 0;
  v104 = __OFADD__(v102, v103);
  v105 = v102 + v103;
  if (v104)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  LOBYTE(v11) = v101;
  if (*(v42 + 24) < v105)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, v100);
    v106 = v154[0];
    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
    if ((v11 & 1) == (v107 & 1))
    {
LABEL_90:
      v108 = v147 & 1;
      if (v11)
      {
        v109 = v68;

        v110 = *(v106 + 56) + 24 * v109;
        v111 = *v110;
        v112 = *(v110 + 8);
        *v110 = v108;
        *(v110 + 8) = 0;
        v113 = *(v110 + 16);
        *(v110 + 16) = 2;
        result = outlined consume of JSONFuture(v111, v112, v113);
      }

      else
      {
        result = specialized _NativeDictionary._insert(at:key:value:)(v68, v19, v20, v147 & 1, 0, 2, v106);
      }

      *(v9 + 16) = v106;
      return result;
    }

    v68 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v100)
  {
    v106 = v42;
    goto LABEL_90;
  }

LABEL_98:
  v157 = v19;
  v145 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
  v114 = static _DictionaryStorage.copy(original:)();
  v106 = v114;
  if (!*(v42 + 16))
  {
LABEL_113:

    v68 = v145;
    v19 = v157;
    goto LABEL_90;
  }

  result = v114 + 64;
  v115 = v42 + 64;
  v116 = ((1 << *(v106 + 32)) + 63) >> 6;
  if (v106 != v42 || result >= v115 + 8 * v116)
  {
    result = memmove(result, (v42 + 64), 8 * v116);
  }

  v117 = 0;
  *(v106 + 16) = *(v42 + 16);
  v118 = 1 << *(v42 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & *(v42 + 64);
  v121 = (v118 + 63) >> 6;
  v142 = v9;
  v143 = v5;
  if (v120)
  {
    do
    {
      v122 = __clz(__rbit64(v120));
      v146 = (v120 - 1) & v120;
LABEL_111:
      v125 = v122 | (v117 << 6);
      v126 = 16 * v125;
      v127 = (*(v42 + 48) + 16 * v125);
      v129 = *v127;
      v128 = v127[1];
      v125 *= 24;
      v130 = *(v42 + 56) + v125;
      v131 = *v130;
      v132 = *(v130 + 8);
      v133 = (*(v106 + 48) + v126);
      v134 = *(v130 + 16);
      *v133 = v129;
      v133[1] = v128;
      v135 = *(v106 + 56) + v125;
      *v135 = v131;
      *(v135 + 8) = v132;
      *(v135 + 16) = v134;

      result = outlined copy of JSONFuture(v131, v132, v134);
      v9 = v142;
      v120 = v146;
    }

    while (v146);
  }

  v123 = v117;
  while (1)
  {
    v117 = v123 + 1;
    if (__OFADD__(v123, 1))
    {
      break;
    }

    if (v117 >= v121)
    {
      goto LABEL_113;
    }

    v124 = *(v115 + 8 * v117);
    ++v123;
    if (v124)
    {
      v122 = __clz(__rbit64(v124));
      v146 = (v124 - 1) & v124;
      goto LABEL_111;
    }
  }

LABEL_122:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v6 = v3;
  v155 = v3[1];
  v162[0] = a1;
  v153 = dispatch thunk of CustomStringConvertible.description.getter();
  v154 = v9;
  v10 = *v3;
  v11 = v6[2];
  v13 = *(a3 + 24);
  v163 = *(a3 + 16);
  v12 = v163;
  v164 = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v162);
  v15 = *(v12 - 1);
  (*(v15 + 16))(boxed_opaque_existential_0, a2, v12);
  v16 = *(v10 + 152);
  if (!v16)
  {
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v28;
    goto LABEL_83;
  }

  if (v16 != 1)
  {
    v29 = *(v10 + 160);

    v30 = __JSONEncoder.codingPath.getter();
    v31 = _CodingPathNode.path.getter(v11);
    v159 = v30;
    specialized Array.append<A>(contentsOf:)(v31);
    v32 = v30;
    outlined init with copy of Hashable & Sendable(v162, &v159);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v165 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
    }

    v35 = v32[2];
    v34 = v32[3];
    v149 = v4;
    v152 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
    }

    v36 = __swift_mutable_project_boxed_opaque_existential_1(&v159, v161);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v39 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39, v37);
    v157 = v12;
    v158 = v13;
    v41 = __swift_allocate_boxed_opaque_existential_0(&v156);
    (*(v15 + 32))(v41, v39, v12);
    v32[2] = v152;
    outlined init with take of Equatable(&v156, &v32[5 * v35 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    (v16)(&v159, v32);

    __swift_project_boxed_opaque_existential_1(&v159, v161);
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = v42;
    sub_1807A5C7C(v16);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    goto LABEL_82;
  }

  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = v17;
  v20 = v18;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v16 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v21 = String.index(after:)();
    v22 = 7;
    if (((v20 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v147 = 4 * v16;
    if (4 * v16 < v21 >> 14)
    {
      __break(1u);
    }

    else
    {
      v146 = v22 | (v16 << 16);
      v148 = v20;
      v23 = String.subscript.getter();
      v27 = v26;
      v165 = v19;
      v149 = v4;
      if ((v23 ^ v24) >= 0x4000)
      {
        v43 = v23;
        v12 = v24;
        v16 = v25;
        v150 = MEMORY[0x1E69E7CC0];
        v20 = 0x700030001;
        v152 = 15;
        while (1)
        {
          v5 = Substring.UnicodeScalarView.index(before:)();
          v44 = Substring.UnicodeScalarView.subscript.getter();
          v45 = v44;
          v46 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v44), 1u);
          v47 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v45, v46, 0x700030001);
          v48 = v43;
          if (!v47)
          {
            break;
          }

LABEL_20:
          v49 = Substring.UnicodeScalarView.index(after:)();

          v50 = v48 >> 14;
          v51 = v152;
          if (v48 >> 14 < v152 >> 14 || v49 >> 14 < v50)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v12 = v150;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v150 + 2) + 1, 1, v150);
          }

          v53 = *(v12 + 2);
          v52 = *(v12 + 3);
          if (v53 >= v52 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v12);
          }

          *(v12 + 2) = v53 + 1;
          v150 = v12;
          v54 = &v12[16 * v53];
          *(v54 + 4) = v51;
          *(v54 + 5) = v48;
          v143 = v48 >> 14;
          if (v147 < v50)
          {
            goto LABEL_117;
          }

          v55 = String.subscript.getter();
          v59 = v58;
          if ((v55 ^ v56) < 0x4000)
          {
            v152 = v48;
            goto LABEL_73;
          }

          v5 = v55;
          v43 = v56;
          v12 = v57;
          v152 = Substring.UnicodeScalarView.index(before:)();
          v60 = Substring.UnicodeScalarView.subscript.getter();
          v61 = v60;
          v19 = 0x700030000;
          v62 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v60), 0);
          v63 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v61, v62, 0x700030000);
          v64 = v5;
          v20 = v148;
          if (!v63)
          {
            v76 = HIBYTE(v59) & 0xF;
            if ((v59 & 0x2000000000000000) == 0)
            {
              v76 = v12 & 0xFFFFFFFFFFFFLL;
            }

            v151 = v76;
            v145 = v59 & 0xFFFFFFFFFFFFFFLL;
            v144 = (v59 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v64 = v5;
            while ((v64 ^ v152) >= 0x4000)
            {
              v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v64, v12, v59);
              v16 = v70 >> 16;
              if (v70 >> 16 >= v151)
              {
                goto LABEL_94;
              }

              if ((v59 & 0x1000000000000000) != 0)
              {
                v64 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v59 & 0x2000000000000000) != 0)
                {
                  v159 = v12;
                  v160 = v145;
                  v81 = *(&v159 + v16);
                }

                else
                {
                  v80 = v144;
                  if ((v12 & 0x1000000000000000) == 0)
                  {
                    v80 = _StringObject.sharedUTF8.getter();
                  }

                  v81 = *(v80 + v16);
                }

                v82 = v81;
                v83 = __clz(v81 ^ 0xFF) - 24;
                if (v82 >= 0)
                {
                  LOBYTE(v83) = 1;
                }

                v64 = ((v16 + v83) << 16) | 5;
              }

              v77 = Substring.UnicodeScalarView.subscript.getter();
              v78 = v77;
              v79 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v77), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v78, v79, 0x700030000))
              {
                goto LABEL_29;
              }
            }

            v152 = v48;
            goto LABEL_73;
          }

LABEL_29:
          v65 = Substring.UnicodeScalarView.index(after:)();

          if (v65 >> 14 < v64 >> 14)
          {
            goto LABEL_118;
          }

          if (v64 >> 14 == String.index(after:)() >> 14)
          {
            v66 = v48;
          }

          else
          {
            v66 = String.index(before:)();
            if (v143 > v66 >> 14)
            {
              goto LABEL_120;
            }

            v85 = *(v150 + 2);
            v84 = *(v150 + 3);
            if (v85 >= v84 >> 1)
            {
              v91 = v66;
              v150 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v150);
              v66 = v91;
            }

            v86 = v150;
            *(v150 + 2) = v85 + 1;
            v87 = &v86[16 * v85];
            *(v87 + 4) = v48;
            *(v87 + 5) = v66;
          }

          v20 = 0x700030001;
          v152 = v66;
          if (v147 < v65 >> 14)
          {
            goto LABEL_119;
          }

          v43 = String.subscript.getter();
          v12 = v88;
          v16 = v89;
          v27 = v90;
          if ((v43 ^ v88) < 0x4000)
          {
            goto LABEL_73;
          }
        }

        if ((v27 & 0x2000000000000000) != 0)
        {
          v19 = HIBYTE(v27) & 0xF;
        }

        else
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        v151 = v27 & 0xFFFFFFFFFFFFFFLL;
        v145 = (v27 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v48 = v43;
        while ((v48 ^ v5) >= 0x4000)
        {
          v70 = _StringGuts.validateInclusiveScalarIndex(_:)(v48, v16, v27);
          v71 = v70 >> 16;
          if (v70 >> 16 >= v19)
          {
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          if ((v27 & 0x1000000000000000) != 0)
          {
            v48 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v27 & 0x2000000000000000) != 0)
            {
              v159 = v16;
              v160 = v151;
              v73 = *(&v159 + v71);
            }

            else
            {
              v72 = v145;
              if ((v16 & 0x1000000000000000) == 0)
              {
                v72 = _StringObject.sharedUTF8.getter();
              }

              v73 = *(v72 + v71);
            }

            v74 = v73;
            v75 = __clz(v73 ^ 0xFF) - 24;
            if (v74 >= 0)
            {
              LOBYTE(v75) = 1;
            }

            v48 = ((v71 + v75) << 16) | 5;
          }

          v67 = Substring.UnicodeScalarView.subscript.getter();
          v68 = v67;
          v20 = 0x700030001;
          v69 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v67), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v68, v69, 0x700030001))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v152 = 15;
        v150 = MEMORY[0x1E69E7CC0];
      }

LABEL_73:

      boxed_opaque_existential_0 = v152;
      if (v147 >= v152 >> 14)
      {
        v12 = v150;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_75:
          v93 = *(v12 + 2);
          v92 = *(v12 + 3);
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v12);
          }

          *(v12 + 2) = v94;
          v95 = &v12[16 * v93];
          v96 = v146;
          *(v95 + 4) = boxed_opaque_existential_0;
          *(v95 + 5) = v96;
          v159 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94, 0);
          v97 = v159;
          v150 = v12;
          v98 = v12 + 40;
          do
          {
            String.subscript.getter();
            v99 = Substring.lowercased()();

            v159 = v97;
            v101 = *(v97 + 2);
            v100 = *(v97 + 3);
            if (v101 >= v100 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
              v97 = v159;
            }

            v98 += 16;
            *(v97 + 2) = v101 + 1;
            *&v97[16 * v101 + 32] = v99;
            --v94;
          }

          while (v94);

          v159 = v97;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v19 = BidirectionalCollection<>.joined(separator:)();
          v16 = v102;

          v20 = v16;
LABEL_82:
          v5 = v149;
          goto LABEL_83;
        }

LABEL_115:
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_115;
  }

LABEL_83:
  v103 = v155;
  __swift_destroy_boxed_opaque_existential_1(v162);
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v162[0] = *(v103 + 16);
  v43 = v162[0];
  *(v103 + 16) = 0x8000000000000000;
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  v106 = *(v43 + 16);
  v107 = (v105 & 1) == 0;
  v108 = __OFADD__(v106, v107);
  v109 = v106 + v107;
  if (v108)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    v151 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
    v119 = static _DictionaryStorage.copy(original:)();
    v110 = v119;
    if (!*(v43 + 16))
    {
LABEL_111:

      v70 = v151;
      v103 = v155;
      if (v16)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v120 = (v119 + 64);
    v121 = v43 + 64;
    v122 = ((1 << *(v110 + 32)) + 63) >> 6;
    if (v110 != v43 || v120 >= v121 + 8 * v122)
    {
      memmove(v120, (v43 + 64), 8 * v122);
    }

    v123 = 0;
    *(v110 + 16) = *(v43 + 16);
    v124 = 1 << *(v43 + 32);
    v125 = -1;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    v126 = v125 & *(v43 + 64);
    v127 = (v124 + 63) >> 6;
    v165 = v19;
    v149 = v5;
    if (v126)
    {
      do
      {
        v128 = __clz(__rbit64(v126));
        v152 = (v126 - 1) & v126;
LABEL_109:
        v131 = v128 | (v123 << 6);
        v132 = 16 * v131;
        v133 = (*(v43 + 48) + 16 * v131);
        v135 = *v133;
        v134 = v133[1];
        v131 *= 24;
        v136 = *(v43 + 56) + v131;
        v137 = *v136;
        v138 = *(v136 + 8);
        v139 = (*(v110 + 48) + v132);
        v140 = *(v136 + 16);
        *v139 = v135;
        v139[1] = v134;
        v141 = *(v110 + 56) + v131;
        *v141 = v137;
        *(v141 + 8) = v138;
        *(v141 + 16) = v140;

        outlined copy of JSONFuture(v137, v138, v140);
        v19 = v165;
        v126 = v152;
      }

      while (v152);
    }

    v129 = v123;
    while (1)
    {
      v123 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        break;
      }

      if (v123 >= v127)
      {
        goto LABEL_111;
      }

      v130 = *(v121 + 8 * v123);
      ++v129;
      if (v130)
      {
        v128 = __clz(__rbit64(v130));
        v152 = (v130 - 1) & v130;
        goto LABEL_109;
      }
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  LOBYTE(v16) = v105;
  if (*(v43 + 24) >= v109)
  {
    if (v104)
    {
      v110 = v43;
      if (v105)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    goto LABEL_96;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v109, v104);
  v110 = v162[0];
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  if ((v16 & 1) == (v111 & 1))
  {
    if (v16)
    {
LABEL_87:
      v112 = v70;

      v113 = *(v110 + 56) + 24 * v112;
      v114 = *v113;
      v115 = *(v113 + 8);
      v116 = v154;
      *v113 = v153;
      *(v113 + 8) = v116;
      v117 = *(v113 + 16);
      *(v113 + 16) = 1;
      result = outlined consume of JSONFuture(v114, v115, v117);
LABEL_91:
      *(v103 + 16) = v110;
      return result;
    }

LABEL_90:
    result = specialized _NativeDictionary._insert(at:key:value:)(v70, v19, v20, v153, v154, 1, v110);
    goto LABEL_91;
  }

LABEL_122:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}