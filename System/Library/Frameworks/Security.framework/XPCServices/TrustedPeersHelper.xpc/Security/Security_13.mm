void sub_100179334(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  isa = sub_100216204().super.isa;
  v10 = sub_100216204().super.isa;
  v11 = [objc_opt_self() voucherInfoWithData:isa sig:v10];

  v40 = v11;
  if (v11)
  {
    v12 = [a2 vouchers];
    if (v12)
    {
      v13 = v12;
      v41 = 0;
      type metadata accessor for VoucherMO();
      sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO);
      sub_100216BA4();
    }

    v14 = &_swiftEmptySetSingleton;
    v39 = a2;
    if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_100216E84();
      type metadata accessor for VoucherMO();
      sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO);
      sub_100216C04();
      v14 = v41;
      v15 = v42;
      v16 = v43;
      v17 = v44;
      v18 = v45;
    }

    else
    {
      v19 = -1 << *(&_swiftEmptySetSingleton + 32);
      v15 = &_swiftEmptySetSingleton + 56;
      v16 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v18 = v21 & *(&_swiftEmptySetSingleton + 7);

      v17 = 0;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v22 = v17;
    v23 = v18;
    v24 = v17;
    if (v18)
    {
LABEL_15:
      v25 = (v23 - 1) & v23;
      v26 = *(*(v14 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
      if (v26)
      {
        while (1)
        {
          v46 = v26;
          v27 = sub_100179798(&v46, v40);

          if (v27)
          {
            break;
          }

          v17 = v24;
          v18 = v25;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_11;
          }

LABEL_17:
          if (sub_100216F14())
          {
            type metadata accessor for VoucherMO();
            swift_dynamicCast();
            v26 = v46;
            v24 = v17;
            v25 = v18;
            if (v46)
            {
              continue;
            }
          }

          goto LABEL_22;
        }

        sub_10000D778();
      }

      else
      {
LABEL_22:
        sub_10000D778();

        type metadata accessor for VoucherMO();
        v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
        v29 = [v40 data];
        v30 = sub_100216224();
        v32 = v31;

        v33 = sub_100216204().super.isa;
        sub_100002BF0(v30, v32);
        [v28 setVoucherInfo:v33];

        v34 = [v40 sig];
        v35 = sub_100216224();
        v37 = v36;

        v38 = sub_100216204().super.isa;
        sub_100002BF0(v35, v37);
        [v28 setVoucherInfoSig:v38];

        [v39 addVouchersObject:v28];
      }
    }

    else
    {
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= ((v16 + 64) >> 6))
        {
          goto LABEL_22;
        }

        v23 = *&v15[8 * v24];
        ++v22;
        if (v23)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_100179798(id *a1, void *a2)
{
  v3 = *a1;
  v4 = [*a1 voucherInfo];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100216224();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = [a2 data];
  v10 = sub_100216224();
  v12 = v11;

  if (v8 >> 60 == 15)
  {
    if (v12 >> 60 == 15)
    {
      sub_10004CD18(v6, v8);
      goto LABEL_10;
    }

LABEL_8:
    sub_10004CD18(v6, v8);
    v13 = v10;
    v14 = v12;
LABEL_18:
    sub_10004CD18(v13, v14);
    return 0;
  }

  if (v12 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_1000602D0(v6, v8);
  sub_100012558(v10, v12);
  v15 = sub_100052F18(v6, v8, v10, v12);
  sub_10004CD18(v10, v12);
  sub_100002BF0(v10, v12);
  sub_10004CD18(v6, v8);
  sub_10004CD18(v6, v8);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v16 = [v3 voucherInfoSig];
  if (v16)
  {
    v17 = v16;
    v18 = sub_100216224();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v21 = [a2 sig];
  v22 = sub_100216224();
  v24 = v23;

  if (v20 >> 60 == 15)
  {
    if (v24 >> 60 == 15)
    {
      sub_10004CD18(v18, v20);
      return 1;
    }

    goto LABEL_17;
  }

  if (v24 >> 60 == 15)
  {
LABEL_17:
    sub_10004CD18(v18, v20);
    v13 = v22;
    v14 = v24;
    goto LABEL_18;
  }

  sub_1000602D0(v18, v20);
  sub_100012558(v22, v24);
  v26 = sub_100052F18(v18, v20, v22, v24);
  sub_10004CD18(v22, v24);
  sub_100002BF0(v22, v24);
  sub_10004CD18(v18, v20);
  sub_10004CD18(v18, v20);
  return v26 & 1;
}

void *sub_100179A18(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v8 = 0;
  v4 = [v3 policyWithVersion:a1 error:&v8];
  v5 = v4;
  if (v8)
  {
    v8;

LABEL_3:
    swift_willThrow();
    return v5;
  }

  if (!v4)
  {
    sub_1000561D0();
    swift_allocError();
    *v7 = a1;
    *(v7 + 8) = 0;
    *(v7 + 16) = 1;
    goto LABEL_3;
  }

  if (qword_100297228 != -1)
  {
    swift_once();
  }

  [qword_1002B0318 versionNumber];
  return v5;
}

__CFString *sub_100179B48(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v224 = a6;
  v211 = a5;
  v10 = *a1;
  v220 = a1[1];
  v218 = a1;
  v212 = a1[10];
  v213 = v10;
  v11 = type metadata accessor for SignedVoucher(0);
  v223 = *(v11 - 8);
  v12 = v223[8];
  __chkstk_darwin(v11 - 8, v13);
  v15 = (&v208 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = v6;
  v217 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v16 = *(v6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v17 = [a4 includedPeerIDs];
  sub_100216BB4();

  v18.super.isa = sub_100216B94().super.isa;

  v225 = a2;
  v19 = [a2 peerID];
  if (!v19)
  {
    sub_100216974();
    v19 = sub_100216964();
  }

  v226 = 0;
  v219 = a3;
  v20 = [v16 policyForPeerIDs:v18.super.isa candidatePeerID:v19 candidateStableInfo:a3 error:&v226];

  v21 = v226;
  v216 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v23 = v21;
    sub_100216154();

    swift_willThrow();

    v22 = 0;
    v215 = 0;
  }

  v24 = v224;
  if (v220 != 1 && (v218[7] & 1) == 0)
  {
    v214 = v218[6];
    if (!v224)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v25 = *(v221 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride);
  if (!v25)
  {
    if (v219)
    {
      v19 = [v219 bestPolicyVersion];
      v27 = [v19 versionNumber];

      if (v22)
      {
LABEL_13:
        v19 = [v22 version];
        v28 = [v19 versionNumber];

        goto LABEL_22;
      }
    }

    else
    {
      if (qword_100297228 != -1)
      {
        swift_once();
      }

      v27 = [qword_1002B0318 versionNumber];
      if (v22)
      {
        goto LABEL_13;
      }
    }

    if (qword_100297228 != -1)
    {
      swift_once();
    }

    v28 = [qword_1002B0318 versionNumber];
LABEL_22:
    if (qword_100297228 != -1)
    {
      swift_once();
    }

    v29 = [qword_1002B0318 versionNumber];
    if (v28 <= v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = v28;
    }

    if (v29 > v30)
    {
      v30 = v29;
    }

    v214 = v30;
    if (!v24)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v214 = [v25 versionNumber];
  if (!v24)
  {
LABEL_10:
    v26 = *&v217[v221];
    goto LABEL_59;
  }

LABEL_30:
  v31 = &_swiftEmptyArrayStorage;
  v226 = &_swiftEmptyArrayStorage;
  v32 = v24[2];
  if (v32)
  {
    v33 = objc_opt_self();
    v34 = v24 + ((*(v223 + 80) + 32) & ~*(v223 + 80));
    v35 = v223[9];
    do
    {
      sub_1001AC0A0(v34, v15, type metadata accessor for SignedVoucher);
      v36 = *v15;
      v37 = v15[1];
      v38 = v15[2];
      v39 = v15[3];
      isa = sub_100216204().super.isa;
      v41 = sub_100216204().super.isa;
      v19 = [v33 voucherInfoWithData:isa sig:v41];

      sub_1001AC1E4(v15, type metadata accessor for SignedVoucher);
      if (v19)
      {
        sub_100216B04();
        if (*((v226 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v226 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v31 = v226;
      }

      v34 += v35;
      --v32;
    }

    while (v32);
  }

  v226 = &_swiftEmptyArrayStorage;
  if (v31 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1002170F4())
  {
    v44 = 0;
    v223 = (v31 & 0xFFFFFFFFFFFFFF8);
    v224 = (v31 & 0xC000000000000001);
    v222 = v31;
    while (1)
    {
      if (v224)
      {
        v46 = sub_100217014();
      }

      else
      {
        if (v44 >= v223[2])
        {
          goto LABEL_55;
        }

        v46 = *(v31 + 8 * v44 + 32);
      }

      v47 = v46;
      v48 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v49 = i;
      v50 = [v46 beneficiaryID];
      v51 = sub_100216974();
      v53 = v52;

      v54 = [v225 peerID];
      v55 = sub_100216974();
      v19 = v56;

      v57 = v51 == v55 && v53 == v19;
      if (v57)
      {
      }

      else
      {
        v58 = sub_1002171A4();

        if ((v58 & 1) == 0)
        {

          goto LABEL_42;
        }
      }

      sub_100217044();
      v45 = *(v226 + 16);
      sub_100217074();
      sub_100217084();
      sub_100217054();
LABEL_42:
      i = v49;
      ++v44;
      v57 = v48 == v49;
      v31 = v222;
      if (v57)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_57:

  v26 = *&v217[v221];
  if (v226)
  {
    sub_10000200C(0, &qword_10029D640, TPVoucher_ptr);
    v59 = v26;
    v60.super.isa = sub_100216B14().super.isa;

    v61 = v219;
    goto LABEL_60;
  }

LABEL_59:
  v61 = v219;
  v59 = v26;
  v60.super.isa = 0;
LABEL_60:
  v226 = 0;
  v62 = [v59 bestRecoveryKeyForStableInfo:v61 vouchers:v60.super.isa error:&v226];

  if (v226)
  {
    v226;

    swift_willThrow();
LABEL_62:
    v63 = v216;
LABEL_169:

    return v19;
  }

  v64 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_testDontSetAccountSetting;
  v65 = *(v221 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_testDontSetAccountSetting);
  if (v65 == 2)
  {
    v63 = 0;
    goto LABEL_76;
  }

  if (v65)
  {
    v63 = 0;
  }

  else
  {
    v68 = *&v217[v221];
    if (v220 == 1)
    {
      v69 = 0;
    }

    else
    {
      v69 = v218[11];
    }

    v226 = 0;
    v63 = [v68 bestWalrusForStableInfo:v61 walrusStableChanges:v69 error:&v226];
    if (v226)
    {
      v226;

      swift_willThrow();
      goto LABEL_62;
    }

    v65 = *(v221 + v64);
    if (v65 == 2)
    {
      goto LABEL_76;
    }
  }

  if (v65)
  {
LABEL_76:
    v70 = 0;
    goto LABEL_77;
  }

  v66 = *&v217[v221];
  if (v220 == 1)
  {
    v67 = 0;
  }

  else
  {
    v67 = v218[12];
  }

  v226 = 0;
  v70 = [v66 bestWebAccessForStableInfo:v61 webAccessStableChanges:v67 error:&v226];
  if (v226)
  {
    v226;

    swift_willThrow();
    goto LABEL_169;
  }

LABEL_77:
  v223 = v70;
  v224 = v63;
  if (v220 == 1)
  {
    v71 = 0;
    v72 = 0;
    v222 = 0;
    LODWORD(v73) = 1;
LABEL_92:
    v78 = [v61 secureElementIdentity];
    goto LABEL_93;
  }

  v74 = *(v218 + 18);
  LODWORD(v73) = *(v218 + 76);
  if ((v73 & 1) != 0 || !v74)
  {
    v76 = v212;
    goto LABEL_89;
  }

  v75 = [v225 modelID];
  sub_100216974();

  v227._countAndFlagsBits = 0x5654656C707041;
  v227._object = 0xE700000000000000;
  if (sub_100216A94(v227))
  {

    v76 = v212;
  }

  else
  {
    v228._countAndFlagsBits = 0x6363416F69647541;
    v228._object = 0xEE0079726F737365;
    v77 = sub_100216A94(v228);

    v76 = v212;
    if (!v77)
    {
      goto LABEL_89;
    }
  }

  v74 = 3;
LABEL_89:
  v222 = v74;
  if (!v76)
  {
    v71 = v220;
    v72 = v213;
    goto LABEL_92;
  }

  v78 = [v76 secureElementIdentity];
  v72 = v213;
  v71 = v220;
LABEL_93:
  v225 = v78;
  if (v61 && (v79 = [v61 deviceName]) != 0)
  {
    v19 = v79;
    v80 = sub_100216974();
    v82 = v81;

    if (!v71)
    {
      goto LABEL_101;
    }
  }

  else
  {
    v80 = 0;
    v82 = 0;
    if (!v71)
    {
LABEL_101:

      goto LABEL_102;
    }
  }

  if (!v82)
  {
    goto LABEL_166;
  }

  if (v72 == v80 && v71 == v82)
  {
    goto LABEL_101;
  }

  v97 = sub_1002171A4();

  if ((v97 & 1) == 0)
  {
    goto LABEL_166;
  }

LABEL_102:
  if (v220 == 1)
  {
    v83 = 0;
    v84 = 0;
    if (!v61)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v83 = v218[2];
    v84 = v218[3];
    if (!v61)
    {
      goto LABEL_109;
    }
  }

  v85 = [v61 serialNumber];
  if (v85)
  {
    v19 = v85;
    v86 = sub_100216974();
    v88 = v87;

    if (v84)
    {
      goto LABEL_110;
    }

LABEL_113:

    goto LABEL_114;
  }

LABEL_109:
  v86 = 0;
  v88 = 0;
  if (!v84)
  {
    goto LABEL_113;
  }

LABEL_110:
  if (!v88)
  {
    goto LABEL_166;
  }

  if (v83 == v86 && v84 == v88)
  {
    goto LABEL_113;
  }

  v98 = sub_1002171A4();

  if ((v98 & 1) == 0)
  {
    goto LABEL_166;
  }

LABEL_114:
  if (v220 != 1)
  {
    v89 = v218[5];
    if (v61)
    {
      v90 = v218[4];
      goto LABEL_119;
    }

    if (v89)
    {
      goto LABEL_166;
    }

LABEL_132:
    v99 = v225;

    goto LABEL_167;
  }

  if (!v61)
  {
    goto LABEL_132;
  }

  v89 = 0;
  v90 = 0;
LABEL_119:
  v19 = [v61 osVersion];
  v91 = sub_100216974();
  v93 = v92;

  if (!v89)
  {
    goto LABEL_123;
  }

  if (!v93)
  {
    goto LABEL_166;
  }

  if (v90 == v91 && v89 == v93)
  {
LABEL_123:
  }

  else
  {
    v100 = sub_1002171A4();

    if ((v100 & 1) == 0)
    {
      goto LABEL_166;
    }
  }

  v94 = [v61 bestPolicyVersion];
  v95 = [v94 versionNumber];

  if (v214 != v95)
  {
    goto LABEL_166;
  }

  if (v220 == 1)
  {
    v96 = 0;
  }

  else
  {
    v96 = v218[8];
  }

  v101 = [v61 policySecrets];
  if (!v101)
  {
    if (!v96)
    {
      goto LABEL_142;
    }

LABEL_166:
    v99 = v225;

    goto LABEL_167;
  }

  v102 = v101;
  v103 = sub_1002168D4();

  if (!v96)
  {
LABEL_142:

    goto LABEL_143;
  }

  if (!v103)
  {
    goto LABEL_166;
  }

  v104 = sub_100190100(v96, v103);

  if ((v104 & 1) == 0)
  {
    goto LABEL_166;
  }

LABEL_143:
  if (v62)
  {
    v105 = [v62 signingKeyData];
    v106 = sub_100216224();
    v108 = v107;
  }

  else
  {
    v106 = 0;
    v108 = 0xF000000000000000;
  }

  v109 = [v61 recoverySigningPublicKey];
  if (v109)
  {
    v110 = v109;
    v111 = sub_100216224();
    v113 = v112;
  }

  else
  {
    v111 = 0;
    v113 = 0xF000000000000000;
  }

  v19 = sub_10017B28C(v106, v108, v111, v113);
  sub_10004CD18(v106, v108);
  sub_10004CD18(v111, v113);
  if ((v19 & 1) == 0)
  {
    goto LABEL_166;
  }

  if (v62)
  {
    v114 = [v62 encryptionKeyData];
    v115 = sub_100216224();
    v117 = v116;
  }

  else
  {
    v115 = 0;
    v117 = 0xF000000000000000;
  }

  v118 = [v61 recoveryEncryptionPublicKey];
  if (v118)
  {
    v119 = v118;
    v120 = sub_100216224();
    v122 = v121;
  }

  else
  {
    v120 = 0;
    v122 = 0xF000000000000000;
  }

  v19 = sub_10017B28C(v115, v117, v120, v122);
  sub_10004CD18(v115, v117);
  sub_10004CD18(v120, v122);
  if ((v19 & 1) == 0)
  {
    goto LABEL_166;
  }

  v123 = [v61 syncUserControllableViews];
  if (!(v73 & 1 | (v222 == v123)))
  {
    goto LABEL_166;
  }

  v124 = [v61 walrusSetting];
  v125 = v124;
  if (v224)
  {
    if (!v124)
    {
      goto LABEL_166;
    }

    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    v126 = v224;
    v127 = v125;
    v128 = sub_100216DC4();

    if ((v128 & 1) == 0)
    {
      goto LABEL_166;
    }
  }

  else
  {
  }

  v129 = [v61 webAccess];
  v130 = v129;
  if (v223)
  {
    if (!v129)
    {
      goto LABEL_166;
    }

    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    v131 = v223;
    v132 = v130;
    v133 = sub_100216DC4();

    if ((v133 & 1) == 0)
    {
      goto LABEL_166;
    }
  }

  else
  {
  }

  v199 = v225;
  v200 = [v61 secureElementIdentity];
  v201 = v200;
  if (!v199)
  {
    if (!v200)
    {

      goto LABEL_248;
    }

    goto LABEL_246;
  }

  if (!v200)
  {

LABEL_246:
    v99 = v225;
    goto LABEL_167;
  }

  sub_10000200C(0, &qword_10029D9F8, TPPBSecureElementIdentity_ptr);
  v202 = sub_100216DC4();

  v99 = v225;
  if (v202)
  {

LABEL_248:
    v19 = 0;
    v197 = v224;
    goto LABEL_235;
  }

LABEL_167:
  v134 = v215;
  v135 = sub_100179A18(v214);
  if (v134)
  {

    v63 = v224;
    goto LABEL_169;
  }

  v214 = v62;
  v137 = v135;
  v138 = [v135 version];

  v139 = [v138 versionNumber];
  if (qword_100297230 != -1)
  {
    swift_once();
  }

  v215 = 0;
  v140 = qword_1002B0320;
  v141 = [qword_1002B0320 versionNumber];
  if (v73)
  {
LABEL_191:
    v155 = *&v217[v221];
    if (v139 >= v141)
    {
      v217 = v140;
      v212 = v138;
    }

    else
    {
      v212 = 0;
      v217 = v138;
    }

    v156 = v219;
    v157 = v220;
    if (v220 == 1 || (v158 = v218[8]) == 0)
    {
      v162 = v155;
      v163 = v138;
      if (!v156)
      {

        v221 = 0;
        v169 = v222;
        if (v73)
        {
          v169 = 0;
        }

        LODWORD(v222) = v169;
        if (v157 < 2)
        {
LABEL_213:

          goto LABEL_215;
        }

LABEL_214:

LABEL_215:
        v170 = sub_100216964();

        if (v157 == 1 || !v218[3])
        {
          if (v219 && (v172 = [v219 serialNumber]) != 0)
          {
            v173 = v170;
            v174 = v172;
            sub_100216974();

            v170 = v173;
          }

          else
          {
          }
        }

        else
        {
          v171 = v218[2];
        }

        v175 = sub_100216964();

        if (v220 == 1 || !v218[5])
        {
          if (v219)
          {
            v177 = [v219 osVersion];
            sub_100216974();
          }

          else
          {
          }
        }

        else
        {
          v176 = v218[4];
        }

        v220 = v138;
        v178 = sub_100216964();

        v179 = v214;
        if (v214)
        {
          v180 = [(objc_class *)v214 signingKeyData];
          v181 = sub_100216224();
          v183 = v182;

          v184.super.isa = sub_100216204().super.isa;
          sub_100002BF0(v181, v183);
          v185 = [(objc_class *)v179 encryptionKeyData];
          v186 = sub_100216224();
          v188 = v187;

          v179 = sub_100216204().super.isa;
          sub_100002BF0(v186, v188);
        }

        else
        {
          v184.super.isa = 0;
        }

        v189 = v223;
        v190 = v219;
        if (v219)
        {
          v190 = [v219 isInheritedAccount];
        }

        v226 = 0;
        LOBYTE(v207) = v190;
        v205 = v184.super.isa;
        v206 = v179;
        v204 = v178;
        v203 = v189;
        v191 = v178;
        v192 = v217;
        v193 = v221;
        v222 = v179;
        v194 = v184.super.isa;
        v195 = v212;
        v19 = [v155 createStableInfoWithFrozenPolicyVersion:v217 flexiblePolicyVersion:v203 policySecrets:v170 syncUserControllableViews:v175 secureElementIdentity:v204 walrusSetting:v211 webAccess:v205 deviceName:v206 serialNumber:v207 osVersion:&v226 signingKeyPair:? recoverySigningPubKey:? recoveryEncryptionPubKey:? isInheritedAccount:? error:?];

        v196 = v226;
        if (!v19)
        {
          v198 = v196;
          sub_100216154();

          swift_willThrow();
          v63 = v223;
          goto LABEL_169;
        }

        v197 = v223;
LABEL_235:

        return v19;
      }

      v164 = [v156 policySecrets];
      if (!v164)
      {
        v221 = 0;
LABEL_201:

        if (v73)
        {
          v166 = 0;
        }

        else
        {
          v166 = v222;
        }

        if (v156 != 0 && (v73 & 1) != 0)
        {
          v166 = [v156 syncUserControllableViews];
        }

        LODWORD(v222) = v166;
        if (v157 < 2)
        {
          if (v156)
          {
            v167 = [v156 deviceName];
            if (v167)
            {
              v168 = v167;
              sub_100216974();

              goto LABEL_215;
            }
          }

          goto LABEL_213;
        }

        goto LABEL_214;
      }

      v165 = v164;
      v158 = sub_1002168D4();
    }

    else
    {
      v159 = v218[8];

      v160 = v155;
      v161 = v138;
    }

    sub_1001AD500(v158);

    v221 = sub_1002168C4().super.isa;
    goto LABEL_201;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v142 = sub_100216774();
  sub_100002648(v142, qword_10029D160);
  v143 = sub_100216754();
  v144 = sub_100216C54();
  if (!os_log_type_enabled(v143, v144))
  {

    goto LABEL_191;
  }

  v145 = swift_slowAlloc();
  v146 = swift_slowAlloc();
  v226 = v146;
  *v145 = 136446210;
  v210 = v73;
  v212 = v145;
  v209 = v146;
  if (v222 > 1)
  {
    if (v222 == 2)
    {
      v147 = @"ENABLED";
      goto LABEL_188;
    }

    if (v222 == 3)
    {
      v147 = @"FOLLOWING";
      goto LABEL_188;
    }

LABEL_185:
    v147 = [NSString stringWithFormat:@"(unknown: %i)", v222];
    goto LABEL_189;
  }

  if (!v222)
  {
    v147 = @"UNKNOWN";
    goto LABEL_188;
  }

  if (v222 != 1)
  {
    goto LABEL_185;
  }

  v147 = @"DISABLED";
LABEL_188:
  v148 = v147;
LABEL_189:
  v73 = v138;
  result = v147;
  if (result)
  {
    v149 = result;
    v150 = sub_100216974();
    v152 = v151;

    v153 = sub_100005FB0(v150, v152, &v226);

    v154 = v212;
    *(v212 + 1) = v153;
    _os_log_impl(&_mh_execute_header, v143, v144, "Intending to set user-controllable views to %{public}s", v154, 0xCu);
    sub_100006128(v209);

    v138 = v73;
    LOBYTE(v73) = v210;
    goto LABEL_191;
  }

  __break(1u);
  return result;
}

uint64_t sub_10017B28C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    if (a4 >> 60 == 15)
    {
      sub_1000602D0(a1, a2);
      sub_1000602D0(a3, a4);
      sub_10004CD18(a1, a2);
      return 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 == 15)
  {
LABEL_5:
    sub_1000602D0(a1, a2);
    sub_1000602D0(a3, a4);
    sub_10004CD18(a1, a2);
    sub_10004CD18(a3, a4);
    return 0;
  }

  sub_1000602D0(a1, a2);
  sub_1000602D0(a3, a4);
  v9 = sub_100052F18(a1, a2, a3, a4);
  sub_10004CD18(a3, a4);
  sub_10004CD18(a1, a2);
  return v9 & 1;
}

uint64_t sub_10017B39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v9 = type metadata accessor for Bottle(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [*(v3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) bottles];
  if (!v14 || (v15 = v14, v27 = 0, type metadata accessor for BottleMO(), sub_1001A13C4(&qword_10029D9F0, type metadata accessor for BottleMO), sub_100216BA4(), v15, (v16 = v27) == 0))
  {
    v27 = 0;
    sub_1000561D0();
    swift_allocError();
    v20 = xmmword_100226110;
    goto LABEL_7;
  }

  v17 = sub_1001A5A5C(v16, a1, a2);

  v27 = v17;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = sub_100216ED4();
    if (v18 >= 2)
    {
LABEL_5:
      sub_1000561D0();
      swift_allocError();
      v20 = xmmword_100226100;
LABEL_7:
      *v19 = v20;
      *(v19 + 16) = 13;
      swift_willThrow();
    }
  }

  else
  {
    v18 = *(v17 + 16);
    if (v18 >= 2)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    sub_1000561D0();
    swift_allocError();
    v20 = xmmword_100226080;
    goto LABEL_7;
  }

  sub_10017B690();
  v23 = v22;
  v25 = __chkstk_darwin(v22, v24);
  *(&v26 - 4) = a1;
  *(&v26 - 3) = a2;
  *(&v26 - 2) = v25;
  sub_1001A13C4(&qword_100298C58, type metadata accessor for Bottle);
  sub_100216654();

  if (!v5)
  {
    sub_1001AC038(v13, a3, type metadata accessor for Bottle);
  }
}

void sub_10017B690()
{
  v1 = *v0;
  v2 = *v0 & 0xC000000000000001;
  if (v2)
  {
    if (sub_100216ED4())
    {
      v3 = sub_100216E74();
      v5 = v4;
LABEL_6:
      v7 = v2 != 0;
      v8 = v3;
      sub_10018F54C(v3, v5, v7);
      sub_1001A9594(v8, v5, v7);
      return;
    }

    __break(1u);
  }

  else if (*(v1 + 16))
  {
    v6 = -1 << *(v1 + 32);
    v3 = sub_100216E44();
    v5 = *(v1 + 36);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_10017B744(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a1[9];

  a1[8] = a2;
  a1[9] = a3;
  if (!a4)
  {
    goto LABEL_8;
  }

  v9 = [a4 contents];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v11 = sub_100216224();
  v13 = v12;

  sub_100002BF0(*a1, a1[1]);
  *a1 = v11;
  a1[1] = v13;
  v14 = [a4 escrowedSigningSPKI];
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = sub_100216224();
  v18 = v17;

  sub_100002BF0(a1[2], a1[3]);
  a1[2] = v16;
  a1[3] = v18;
  v19 = [a4 signatureUsingEscrowKey];
  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = v19;
  v21 = sub_100216224();
  v23 = v22;

  sub_100002BF0(a1[4], a1[5]);
  a1[4] = v21;
  a1[5] = v23;
  v24 = [a4 signatureUsingPeerKey];
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = v24;
  v26 = sub_100216224();
  v28 = v27;

  sub_100002BF0(a1[6], a1[7]);
  a1[6] = v26;
  a1[7] = v28;
  v29 = [a4 bottleID];
  if (v29)
  {
    v30 = v29;
    v31 = sub_100216974();
    v33 = v32;

    v34 = a1[11];

    a1[10] = v31;
    a1[11] = v33;
  }

  else
  {
LABEL_8:
    sub_1000561D0();
    swift_allocError();
    *v36 = xmmword_100226110;
    *(v36 + 16) = 13;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10017B910(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "isRecoveryKeySet complete %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000018, 0x800000010023C160);
  return a4(a1 & 1, a2);
}

uint64_t sub_10017BB50(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    return a2(0, a1);
  }

  v7 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1001A92B8;
  *(v10 + 24) = v9;
  v13[4] = sub_1001ACCC0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100109050;
  v13[3] = &unk_100282630;
  v11 = _Block_copy(v13);
  v12 = a4;

  [v7 performBlockAndWait:v11];
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_10017BCE8(uint64_t a1, void (*a2)(id, void *), int8x8_t a3, uint64_t a4, SEL *a5, const char *a6, const char *a7)
{
  v11 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v31 = 0;
  v12 = [v11 *a5];
  v13 = v31;
  if (v31)
  {
    swift_willThrow();
    v14 = qword_100297520;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    v17 = v15;
    v18 = sub_100216754();
    v19 = sub_100216C74();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = v17;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&_mh_execute_header, v18, v19, a7, v20, 0xCu);
      sub_1000114D4(v21, &qword_10029D580, &unk_10021CCC0);
    }

    v24 = v17;
    a2(0, v13);
  }

  else
  {
    v25 = v12;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);
    v27 = sub_100216754();
    v28 = sub_100216C54();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = vuzp1_s8(a3, v30).u32[0];
      *(v29 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v27, v28, a6, v29, 8u);
    }

    a2(v25, 0);
  }
}

uint64_t sub_10017BFB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v5 = v2;
  v6 = sub_10019C8E0(v5, 0xD000000000000019, 0x800000010023CEC0);

  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a1;
  v7[4] = a2;
  v8 = qword_100297520;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  v10 = sub_100216754();
  v11 = sub_100216C54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "beginning a removeRecoveryKey", v12, 2u);
  }

  v13 = swift_allocObject();
  v13[2] = sub_1001AB54C;
  v13[3] = v7;
  v13[4] = v5;
  v14 = *&v5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = v5;
  *(v15 + 32) = sub_1001AB558;
  *(v15 + 40) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1001ACE7C;
  *(v16 + 24) = v15;
  v21[4] = sub_1001ACCC0;
  v21[5] = v16;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_100109050;
  v21[3] = &unk_1002848B8;
  v17 = _Block_copy(v21);
  v18 = v5;

  [v14 performBlockAndWait:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10017C2C0(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "removeRecoveryKey complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023CEC0);
  return a4(a1 & 1, a2);
}

uint64_t sub_10017C500(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    return a2(0, a1);
  }

  v7 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1001AB564;
  *(v10 + 24) = v9;
  v13[4] = sub_1001ACCC0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100109050;
  v13[3] = &unk_100284930;
  v11 = _Block_copy(v13);
  v12 = a4;

  [v7 performBlockAndWait:v11];
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_10017C698(char *a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  v6 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v7 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (!v7)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v68 = sub_100216774();
    sub_100002648(v68, qword_10029D160);
    v69 = sub_100216754();
    v70 = sub_100216C54();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "no prepared identity, cannot remove recovery key", v71, 2u);
    }

    sub_1000561D0();
    v73 = swift_allocError();
    v74 = xmmword_10021DA90;
    goto LABEL_25;
  }

  v8 = v7;
  v9 = sub_100216974();
  v11 = v10;

  v12 = [*&a1[v6] egoPeerStableInfo];
  if (!v12)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v75 = sub_100216774();
    sub_100002648(v75, qword_10029D160);
    v76 = sub_100216754();
    v77 = sub_100216C54();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "stableInfo does not exist", v78, 2u);
    }

    sub_1000561D0();
    v73 = swift_allocError();
    v74 = xmmword_100225FD0;
LABEL_25:
    *v72 = v74;
    *(v72 + 16) = 13;
    a2(0, v73);

    return;
  }

  v13 = v12;
  v14 = sub_100216224();
  v16 = v15;

  v17 = [*&a1[v6] egoPeerStableInfoSig];
  if (!v17)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v79 = sub_100216774();
    sub_100002648(v79, qword_10029D160);
    v80 = sub_100216754();
    v81 = sub_100216C54();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "stableInfoSig does not exist", v82, 2u);
    }

    sub_1000561D0();
    v83 = swift_allocError();
    *v84 = xmmword_100225FD0;
    *(v84 + 16) = 13;
    a2(0, v83);

    goto LABEL_50;
  }

  v141 = v9;
  v145 = a2;
  v18 = a3;
  v19 = v17;
  v20 = sub_100216224();
  v21 = v14;
  v23 = v22;

  v24 = objc_allocWithZone(TPPeerStableInfo);
  sub_100012558(v21, v16);
  sub_100012558(v20, v23);
  isa = sub_100216204().super.isa;
  v146 = v16;
  v26 = sub_100216204().super.isa;
  v27 = [v24 initWithData:isa sig:v26];

  v16 = v146;
  v143 = v20;
  v144 = v23;
  v28 = v23;
  v14 = v21;
  sub_100002BF0(v20, v28);

  sub_100002BF0(v21, v146);
  if (!v27)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v85 = sub_100216774();
    sub_100002648(v85, qword_10029D160);
    v86 = sub_100216754();
    v87 = sub_100216C54();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&_mh_execute_header, v86, v87, "cannot create TPPeerStableInfo", v88, 2u);
    }

    sub_1000561D0();
    v89 = swift_allocError();
    *v90 = xmmword_10021DC20;
    *(v90 + 16) = 13;
    v145(0, v89);

    goto LABEL_49;
  }

  v29 = [*&a1[v6] egoPeerPermanentInfo];
  v30 = v18;
  v142 = v27;
  if (!v29)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v91 = sub_100216774();
    sub_100002648(v91, qword_10029D160);
    v92 = sub_100216754();
    v93 = sub_100216C54();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "permanentInfo does not exist", v94, 2u);
    }

    sub_1000561D0();
    v95 = swift_allocError();
    *v96 = xmmword_100225FD0;
    *(v96 + 16) = 13;
    v145(0, v95);

    goto LABEL_48;
  }

  v31 = v29;
  v32 = sub_100216224();
  v34 = v33;

  v35 = [*&a1[v6] egoPeerPermanentInfoSig];
  v140 = v34;
  if (!v35)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v97 = sub_100216774();
    sub_100002648(v97, qword_10029D160);
    v98 = sub_100216754();
    v99 = sub_100216C54();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&_mh_execute_header, v98, v99, "permInfoSig does not exist", v100, 2u);
    }

    sub_1000561D0();
    v101 = swift_allocError();
    *v102 = xmmword_100225FD0;
    *(v102 + 16) = 13;
    v145(0, v101);

    sub_100002BF0(v32, v140);
LABEL_48:

LABEL_49:
    sub_100002BF0(v143, v144);
LABEL_50:
    v103 = v14;
    v104 = v16;
LABEL_51:

    sub_100002BF0(v103, v104);
    return;
  }

  v139 = v21;
  v36 = v35;
  v37 = sub_100216224();
  v39 = v38;

  v40 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v32, v34);
  sub_100012558(v37, v39);
  v41 = sub_100216964();

  v42 = sub_100216204().super.isa;
  v43 = sub_100216204().super.isa;
  v135 = v40;
  v44 = [objc_opt_self() permanentInfoWithPeerID:v41 data:v42 sig:v43 keyFactory:v40];

  v136 = v37;
  v137 = v39;
  v45 = v37;
  v46 = v44;
  sub_100002BF0(v45, v39);

  v138 = v32;
  sub_100002BF0(v32, v140);

  if (!v44)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v105 = sub_100216774();
    sub_100002648(v105, qword_10029D160);
    v106 = sub_100216754();
    v107 = sub_100216C54();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "cannot create TPPeerPermanentInfo", v108, 2u);
    }

    sub_1000561D0();
    v109 = swift_allocError();
    *v110 = xmmword_10021DC20;
    *(v110 + 16) = 13;
    v145(0, v109);

    sub_100002BF0(v136, v39);
    sub_100002BF0(v32, v140);

    sub_100002BF0(v143, v144);
    v103 = v139;
    v104 = v146;
    goto LABEL_51;
  }

  v47 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v48 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v147[0] = 0;
  v49 = [v48 getViewsForPeer:v44 stableInfo:v142 error:v147];
  v51 = v146;
  v50 = v147[0];
  if (v49)
  {
    v52 = v49;
    sub_100216BB4();
    v53 = v50;

    v54 = *&a1[v47];
    v147[0] = 0;
    v55 = [v54 isRecoveryKeyEnrolledWithError:v147];
    v56 = v147[0];
    if (v147[0])
    {
      v57 = v147[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v58 = sub_100216774();
      sub_100002648(v58, qword_10029D160);
      v59 = v57;
      v60 = sub_100216754();
      v61 = sub_100216C74();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138543362;
        v64 = v59;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v62 + 4) = v65;
        *v63 = v65;
        _os_log_impl(&_mh_execute_header, v60, v61, "error determining whether Recovery Key is enrolled: %{public}@", v62, 0xCu);
        sub_1000114D4(v63, &qword_10029D580, &unk_10021CCC0);

        v51 = v146;
      }

      v66 = v59;
      v145(0, v56);

      sub_100002BF0(v136, v137);
      v67 = v138;
    }

    else
    {
      if (v55)
      {
        v122 = [objc_allocWithZone(TPRecoveryKeyPair) initWithStableInfo:v142];
        v128 = sub_100013E34(v122);

        strcpy(v147, "signing-key ");
        BYTE5(v147[1]) = 0;
        HIWORD(v147[1]) = -5120;
        v129 = v128;
        v149._countAndFlagsBits = v141;
        v149._object = v11;
        sub_100216A14(v149);
        v131 = v147[0];
        v130 = v147[1];

        v132 = v129;

        v133 = a1;
        v134 = v142;
        sub_10019BE14(v131, v130, v145, v30, v133, v134, v132, v141, v11);

        sub_100002BF0(v139, v146);
        sub_100002BF0(v143, v144);
        sub_100002BF0(v138, v140);
        sub_100002BF0(v136, v137);

        return;
      }

      v123 = v145;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v124 = sub_100216774();
      sub_100002648(v124, qword_10029D160);
      v125 = sub_100216754();
      v126 = sub_100216C54();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&_mh_execute_header, v125, v126, "recovery key is not registered, nothing to remove.", v127, 2u);
        v123 = v145;
      }

      v123(1, 0);
      sub_100002BF0(v136, v137);
      v67 = v138;
    }

    sub_100002BF0(v67, v140);

    sub_100002BF0(v143, v144);
    v121 = v139;
  }

  else
  {
    v111 = v147[0];

    v112 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v113 = sub_100216774();
    sub_100002648(v113, qword_10029D160);
    swift_errorRetain();
    v114 = sub_100216754();
    v115 = sub_100216C74();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v116 = 138412290;
      swift_errorRetain();
      v118 = _swift_stdlib_bridgeErrorToNSError();
      *(v116 + 4) = v118;
      *v117 = v118;
      _os_log_impl(&_mh_execute_header, v114, v115, "cannot create peerViews: %@)", v116, 0xCu);
      sub_1000114D4(v117, &qword_10029D580, &unk_10021CCC0);

      v51 = v146;
    }

    sub_1000561D0();
    v119 = swift_allocError();
    *v120 = v112;
    *(v120 + 8) = 0;
    *(v120 + 16) = 10;
    swift_errorRetain();
    v145(0, v119);

    sub_100002BF0(v136, v137);
    sub_100002BF0(v32, v140);

    sub_100002BF0(v143, v144);
    v121 = v139;
  }

  sub_100002BF0(v121, v51);
}

uint64_t sub_10017DA48(void *a1, char *a2, void *a3, void *a4, uint64_t a5, void (*a6)(void, uint64_t), uint64_t a7, uint64_t a8)
{
  v164 = a4;
  v165 = a8;
  v167 = a6;
  v168 = a7;
  v163 = a5;
  v166 = a3;
  v10 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SignedPeerDynamicInfo(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = (&v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for SignedPeerStableInfo(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a1 bestPolicyVersion];
  v26 = sub_100179A18([v25 versionNumber]);
  v154 = v20;
  v148 = v15;
  v149 = v10;
  v152 = a2;
  v150 = v19;
  v29 = v26;
  v30 = [a1 clock];
  if (v30 == -1)
  {
    __break(1u);
  }

  else
  {
    *&v161 = v30 + 1;
    if (qword_100297230 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v151 = 0;
  v160 = qword_1002B0320;
  v155 = v29;
  v31 = [v29 version];
  v32 = [a1 policySecrets];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1002168D4();
  }

  else
  {
    v34 = 0;
  }

  v156 = v25;
  v162 = v24;
  v157 = [a1 syncUserControllableViews];
  v35 = [a1 secureElementIdentity];
  v36 = [a1 walrusSetting];
  v37 = [a1 webAccess];
  v38 = [a1 deviceName];
  v159 = v36;
  if (v38)
  {
    v39 = v38;
    sub_100216974();
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = v37;
  v158 = v35;
  v153 = v14;
  v43 = [a1 serialNumber];
  v44 = v31;
  if (v43)
  {
    v45 = v43;
    sub_100216974();
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v48 = [a1 osVersion];
  if (!v48)
  {
    sub_100216974();
    v48 = sub_100216964();
  }

  v49 = [a1 isInheritedAccount];
  if (v34)
  {
    v50.super.isa = sub_1002168C4().super.isa;

    if (v41)
    {
      goto LABEL_16;
    }

LABEL_19:
    v51 = 0;
    if (v47)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v50.super.isa = 0;
  if (!v41)
  {
    goto LABEL_19;
  }

LABEL_16:
  v51 = sub_100216964();

  if (v47)
  {
LABEL_17:
    v52 = sub_100216964();

    goto LABEL_21;
  }

LABEL_20:
  v52 = 0;
LABEL_21:
  v53 = objc_allocWithZone(TPPeerStableInfo);
  v170 = 0;
  LOBYTE(v146) = v49;
  v54 = v42;
  v55 = v159;
  v56 = v44;
  v57 = v44;
  v58 = v158;
  v59 = [v53 initWithClock:v161 frozenPolicyVersion:v160 flexiblePolicyVersion:v57 policySecrets:v50.super.isa syncUserControllableViews:v157 secureElementIdentity:v158 walrusSetting:v159 webAccess:v42 deviceName:v51 serialNumber:v52 osVersion:v48 signingKeyPair:v166 recoverySigningPubKey:0 recoveryEncryptionPubKey:0 isInheritedAccount:v146 error:&v170];

  if (v59)
  {
    v60 = v170;

    v61 = v162;
    *v162 = xmmword_10021D470;
    v61[1] = xmmword_10021D470;
    v161 = xmmword_10021D470;
    v62 = *(v154 + 24);
    v63 = v59;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v64 = [v63 data];
    v65 = sub_100216224();
    v67 = v66;

    sub_100002BF0(*v61, *(v61 + 1));
    *v61 = v65;
    *(v61 + 1) = v67;
    v68 = [v63 sig];
    v69 = sub_100216224();
    v71 = v70;

    sub_100002BF0(*(v61 + 2), *(v61 + 3));
    *(v61 + 2) = v69;
    *(v61 + 3) = v71;
    v72 = [v164 peerID];
    if (v72)
    {
      v164 = v63;
      v73 = v72;
      v74 = sub_100216974();
      v76 = v75;

      v77 = v152;
      v78 = *&v152[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
      v79 = sub_100216964();
      sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_10021D600;
      *(v80 + 32) = v74;
      *(v80 + 40) = v76;
      v81.super.isa = sub_100216B14().super.isa;

      v82 = [*&v77[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
      v83 = _swiftEmptySetSingleton;
      if (v82)
      {
        v84 = v82;
        v170 = 0;
        type metadata accessor for MachineMO();
        sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO);
        sub_100216BA4();

        if (v170)
        {
          v83 = v170;
        }
      }

      sub_100108644(v83);

      v85 = objc_allocWithZone(TPMachineIDList);
      sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
      isa = sub_100216B14().super.isa;

      v87 = [v85 initWithEntries:isa];

      v170 = 0;
      v88 = [v78 calculateDynamicInfoForPeerWithID:v79 addingPeerIDs:0 removingPeerIDs:v81.super.isa preapprovedKeys:0 signingKeyPair:v166 currentMachineIDs:v87 error:&v170];

      v89 = v170;
      if (v88)
      {
        v90 = v77;
        v91 = v150;
        v92 = v161;
        *v150 = v161;
        *(v91 + 16) = v92;
        v93 = *(v148 + 24);
        v94 = v89;
        v95 = v88;
        _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
        v166 = v95;
        v96 = [v95 data];
        v97 = sub_100216224();
        v99 = v98;

        sub_100002BF0(*v91, *(v91 + 8));
        *v91 = v97;
        *(v91 + 8) = v99;
        v100 = [v95 sig];
        v101 = sub_100216224();
        v103 = v102;

        v104 = sub_100002BF0(*(v91 + 16), *(v91 + 24));
        *(v91 + 16) = v101;
        *(v91 + 24) = v103;
        __chkstk_darwin(v104, v105);
        sub_1001A13C4(&unk_10029D9E0, type metadata accessor for RemoveRecoveryKeyRequest);
        sub_100216654();
        v106 = *&v90[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
        v107 = *&v90[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
        sub_100006484(&v90[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v106);
        v108 = swift_allocObject();
        v109 = v164;
        v108[2] = v90;
        v108[3] = v109;
        v110 = v168;
        v108[4] = v167;
        v108[5] = v110;
        v111 = *(v107 + 16);
        v112 = *(v111 + 120);
        v113 = v109;
        v114 = v90;

        v115 = v153;
        v112(v153, sub_1001AB5EC, v108, v106, v111);

        sub_1001AC1E4(v115, type metadata accessor for RemoveRecoveryKeyRequest);
        sub_1001AC1E4(v91, type metadata accessor for SignedPeerDynamicInfo);
        v116 = v162;
      }

      else
      {
        v131 = v170;
        v132 = sub_100216154();

        swift_willThrow();
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v133 = sub_100216774();
        sub_100002648(v133, qword_10029D160);
        swift_errorRetain();
        v134 = sub_100216754();
        v135 = sub_100216C74();

        v136 = os_log_type_enabled(v134, v135);
        v137 = v156;
        if (v136)
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v169 = v132;
          v170 = v139;
          *v138 = 136446210;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v140 = sub_100216994();
          v142 = sub_100005FB0(v140, v141, &v170);

          *(v138 + 4) = v142;
          _os_log_impl(&_mh_execute_header, v134, v135, "Error preparing dynamic info: %{public}s", v138, 0xCu);
          sub_100006128(v139);
        }

        v143 = v167;
        v144 = v162;
        v145 = v164;
        swift_errorRetain();
        v143(0, v132);

        v116 = v144;
      }
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v120 = sub_100216774();
      sub_100002648(v120, qword_10029D160);
      v121 = v163;
      swift_errorRetain();
      v122 = sub_100216754();
      v123 = sub_100216C74();

      v124 = os_log_type_enabled(v122, v123);
      v125 = v156;
      if (v124)
      {
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v169 = v121;
        v170 = v127;
        *v126 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v128 = sub_100216994();
        v130 = sub_100005FB0(v128, v129, &v170);

        *(v126 + 4) = v130;
        _os_log_impl(&_mh_execute_header, v122, v123, "Error creating recovery key peerid: %{public}s", v126, 0xCu);
        sub_100006128(v127);
      }

      v167(0, v121);
      v116 = v61;
    }

    return sub_1001AC1E4(v116, type metadata accessor for SignedPeerStableInfo);
  }

  else
  {
    v117 = v170;
    v118 = sub_100216154();

    swift_willThrow();
    v119 = v118;

    v27 = v167;
    swift_errorRetain();
    v27(0, v119);
  }
}

uint64_t sub_10017E820(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v33 = a5;
  v34 = type metadata accessor for SignedPeerDynamicInfo(0);
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v34, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SignedPeerStableInfo(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];

  a1[2] = a2;
  a1[3] = a3;
  sub_1001AC0A0(a4, v20, type metadata accessor for SignedPeerStableInfo);
  v22 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v23 = *(v22 + 28);
  sub_1000114D4(a1 + v23, &qword_1002985A8, &unk_100226650);
  sub_1001AC038(v20, a1 + v23, type metadata accessor for SignedPeerStableInfo);
  (*(v16 + 56))(a1 + v23, 0, 1, v15);
  sub_1001AC0A0(v33, v14, type metadata accessor for SignedPeerDynamicInfo);
  v24 = *(v22 + 32);
  sub_1000114D4(a1 + v24, &unk_10029D760, &qword_10021E810);
  sub_1001AC038(v14, a1 + v24, type metadata accessor for SignedPeerDynamicInfo);
  (*(v10 + 56))(a1 + v24, 0, 1, v34);
  v25 = [*(v35 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
  if (v25)
  {
    v26 = v25;
    v27 = sub_100216974();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v30 = a1[1];

  *a1 = v27;
  a1[1] = v29;
  return result;
}

uint64_t sub_10017EAE4(uint64_t a1, char *a2, void *a3, void (*a4)(void, uint64_t), uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v7 = type metadata accessor for RemoveRecoveryKeyResponse(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7 - 8, v10);
  v12 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v44 - v14;
  v16 = sub_10001148C(&qword_100298430, &unk_10021DEA0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  v20 = (&v44 - v19);
  sub_100019C6C(a1, &v44 - v19, &qword_100298430, &unk_10021DEA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v45;
    v22 = *v20;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v23 = sub_100216774();
    sub_100002648(v23, qword_10029D160);
    swift_errorRetain();
    v24 = sub_100216754();
    v25 = sub_100216C74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      aBlock[6] = v22;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v28 = sub_100216994();
      v30 = sub_100005FB0(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "removeRecoveryKey failed: %{public}s", v26, 0xCu);
      sub_100006128(v27);
    }

    swift_errorRetain();
    v21(0, v22);
  }

  else
  {
    sub_1001AC038(v20, v15, type metadata accessor for RemoveRecoveryKeyResponse);
    v32 = a2;
    v33 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v15, v12, type metadata accessor for RemoveRecoveryKeyResponse);
    v34 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v35 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v44;
    *(v36 + 16) = a2;
    *(v36 + 24) = v37;
    sub_1001AC038(v12, v36 + v34, type metadata accessor for RemoveRecoveryKeyResponse);
    v38 = (v36 + v35);
    v39 = v46;
    *v38 = v45;
    v38[1] = v39;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1001AB5F8;
    *(v40 + 24) = v36;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284A48;
    v41 = _Block_copy(aBlock);
    v42 = v32;
    v43 = v37;

    [v33 performBlockAndWait:v41];
    _Block_release(v41);
    sub_1001AC1E4(v15, type metadata accessor for RemoveRecoveryKeyResponse);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10017EF94(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v56 = a5;
  v57 = a4;
  v54 = a3;
  v7 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v52 - v10;
  v12 = type metadata accessor for Changes(0);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v18 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v19 = [a2 data];
  v20 = sub_100216224();
  v22 = v21;

  isa = sub_100216204().super.isa;
  sub_100002BF0(v20, v22);
  [v18 setEgoPeerStableInfo:isa];

  v55 = a1;
  v24 = *(a1 + v17);
  v25 = [a2 sig];
  v26 = sub_100216224();
  v28 = v27;

  v29 = sub_100216204().super.isa;
  sub_100002BF0(v26, v28);
  [v24 setEgoPeerStableInfoSig:v29];

  v30 = v53;
  v31 = type metadata accessor for RemoveRecoveryKeyResponse(0);
  sub_100019C6C(v54 + *(v31 + 20), v11, &unk_10029D750, &qword_10021E850);
  v32 = *(v30 + 48);
  if (v32(v11, 1, v12) == 1)
  {
    *v16 = 0;
    *(v16 + 1) = 0xE000000000000000;
    *(v16 + 2) = _swiftEmptyArrayStorage;
    *(v16 + 24) = xmmword_10021D470;
    *(v16 + 40) = xmmword_10021D470;
    v16[56] = 0;
    v33 = &v16[*(v12 + 36)];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v32(v11, 1, v12) != 1)
    {
      sub_1000114D4(v11, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v11, v16, type metadata accessor for Changes);
  }

  v34 = v55;
  sub_100174C2C(v16, 0);
  sub_1001AC1E4(v16, type metadata accessor for Changes);
  [*(v34 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model) removeRecoveryKey];
  [*(v34 + v17) setRecoveryKeySigningSPKI:0];
  [*(v34 + v17) setRecoveryKeyEncryptionSPKI:0];
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v35 = sub_100216774();
  sub_100002648(v35, qword_10029D160);
  v36 = sub_100216754();
  v37 = sub_100216C54();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "removeRecoveryKey succeeded", v38, 2u);
  }

  v39 = *(v34 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v59 = 0;
  if ([v39 save:&v59])
  {
    v40 = v59;
    return v57(1, 0);
  }

  else
  {
    v42 = v59;
    v43 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v44 = sub_100216774();
    sub_100002648(v44, qword_10029D160);
    swift_errorRetain();
    v45 = sub_100216754();
    v46 = sub_100216C74();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v59 = v48;
      *v47 = 136446210;
      v58 = v43;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v49 = sub_100216994();
      v51 = sub_100005FB0(v49, v50, &v59);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "removeRecoveryKey handling failed: %{public}s", v47, 0xCu);
      sub_100006128(v48);
    }

    swift_errorRetain();
    v57(0, v43);
  }
}

uint64_t sub_10017F5C8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PerformATOPRVActionsRequest(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v26[-v13];
  v15 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v26[-v18];
  v20 = sub_100006484((v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), *(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24));
  v21 = type metadata accessor for Metrics(0);
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  v22 = type metadata accessor for AccountInfo(0);
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v24 = *v20;
  v27 = v19;
  v28 = v14;
  sub_1001A13C4(&unk_10029D9D0, type metadata accessor for PerformATOPRVActionsRequest);

  sub_100216654();
  RetryingCKCodeService.performAtoprvactions(_:completion:)(v9, sub_1001AB528, v23);

  sub_1001AC1E4(v9, type metadata accessor for PerformATOPRVActionsRequest);
  sub_1000114D4(v14, &unk_10029D6F0, &qword_100226B40);
  return sub_1000114D4(v19, &qword_100297FE0, &unk_10021E7F0);
}

uint64_t sub_10017F89C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_10001148C(&qword_100298420, &qword_10021DE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = (&v19 - v7);
  sub_100019C6C(a1, &v19 - v7, &qword_100298420, &qword_10021DE90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v10 = sub_100216774();
    sub_100002648(v10, qword_10029D160);
    swift_errorRetain();
    v11 = sub_100216754();
    v12 = sub_100216C74();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v9;
      v20 = v14;
      *v13 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15 = sub_100216994();
      v17 = sub_100005FB0(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "performATOPRVActions failed: %{public}s", v13, 0xCu);
      sub_100006128(v14);
    }

    swift_errorRetain();
    a2(v9);
  }

  else
  {
    a2(0);
    return sub_1000114D4(v8, &qword_100298420, &qword_10021DE90);
  }
}

uint64_t sub_10017FB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C64();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15._countAndFlagsBits = sub_100216994();
      sub_100216A14(v15);

      v11 = 0x203A726F727265;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    v12 = sub_100005FB0(v11, 0xE700000000000000, &v14);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "testSemaphore complete: %{public}s", v9, 0xCu);
    sub_100006128(v10);
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023C120);
  return a3(a1);
}

size_t sub_10017FD2C(unint64_t a1, void *a2, uint64_t a3)
{
  v60 = a2;
  v61 = a1;
  v5 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = &v54 - v12;
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  v15 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request, v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v19 = v3;
  v20 = sub_10019C8E0(v19, 0xD00000000000001ELL, 0x800000010023CEA0);
  v57 = v19;

  v21 = swift_allocObject();
  v22 = v60;
  v21[2] = v20;
  v21[3] = v22;
  v60 = v21;
  v21[4] = a3;
  v23 = qword_100297520;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_100216774();
  sub_100002648(v24, qword_10029D160);
  v25 = sub_100216754();
  v26 = sub_100216C54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "starting fetchCurrentItem", v27, 2u);
  }

  v30 = v61;
  v58 = Request;
  if (v61 >> 62)
  {
    v53 = v61;
    v28 = sub_1002170F4();
    v30 = v53;
    v31 = v28;
  }

  else
  {
    v31 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = _swiftEmptyArrayStorage;
  v59 = v20;
  if (!v31)
  {
    goto LABEL_21;
  }

  v33 = v30;
  v62 = _swiftEmptyArrayStorage;
  result = sub_1001878F0(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v56 = v18;
    v32 = v62;
    if ((v33 & 0xC000000000000001) != 0)
    {
      v35 = 0;
      do
      {
        v36 = sub_100217014();
        *(&v54 - 2) = __chkstk_darwin(v36, v37);
        sub_1001A13C4(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier);
        sub_100216654();
        swift_unknownObjectRelease();
        v62 = v32;
        v39 = v32[2];
        v38 = v32[3];
        if (v39 >= v38 >> 1)
        {
          sub_1001878F0(v38 > 1, v39 + 1, 1);
          v32 = v62;
        }

        ++v35;
        v32[2] = v39 + 1;
        v28 = sub_1001AC038(v13, v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v39, type metadata accessor for CurrentCKKSItemSpecifier);
        v29 = v61;
      }

      while (v31 != v35);
    }

    else
    {
      v40 = (v33 + 32);
      v28 = sub_1001A13C4(&unk_10029D9B0, type metadata accessor for CurrentCKKSItemSpecifier);
      v61 = v28;
      v41 = v55;
      do
      {
        v42 = *v40;
        __chkstk_darwin(v28, v29);
        *(&v54 - 2) = v43;
        v44 = v43;
        sub_100216654();

        v62 = v32;
        v46 = v32[2];
        v45 = v32[3];
        if (v46 >= v45 >> 1)
        {
          sub_1001878F0(v45 > 1, v46 + 1, 1);
          v32 = v62;
        }

        v32[2] = v46 + 1;
        v28 = sub_1001AC038(v41, v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v46, type metadata accessor for CurrentCKKSItemSpecifier);
        ++v40;
        --v31;
      }

      while (v31);
    }

    v18 = v56;
LABEL_21:
    __chkstk_darwin(v28, v29);
    *(&v54 - 2) = v32;
    sub_1001A13C4(&qword_100299090, type metadata accessor for CurrentItemFetchRequest);
    sub_100216654();

    v47 = *&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v48 = *&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    sub_100006484(&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v47);
    v49 = swift_allocObject();
    v50 = v60;
    *(v49 + 16) = sub_1001AB494;
    *(v49 + 24) = v50;
    v51 = *(v48 + 16);
    v52 = *(v51 + 144);

    v52(v18, sub_1001AB520, v49, v47, v51);

    return sub_1001AC1E4(v18, type metadata accessor for CurrentItemFetchRequest);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001803C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  if (a3)
  {
    v9 = sub_100216C74();
  }

  else
  {
    v9 = sub_100216C54();
  }

  v10 = v9;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029D160);
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v10))
  {
    v18 = a5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v20._countAndFlagsBits = sub_100216994();
      sub_100216A14(v20);

      v15 = 0x203A726F727265;
    }

    else
    {
      v15 = 0x73736563637573;
    }

    v16 = sub_100005FB0(v15, 0xE700000000000000, &v19);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v10, "fetchCurrentItem complete: %{public}s", v13, 0xCu);
    sub_100006128(v14);

    a5 = v18;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000001ELL, 0x800000010023CEA0);
  return a5(a1, a2, a3);
}

uint64_t sub_100180610(uint64_t *a1, id a2)
{
  v4 = [a2 itemPtrName];
  v5 = sub_100216974();
  v7 = v6;

  v8 = a1[3];

  a1[2] = v5;
  a1[3] = v7;
  v9 = [a2 zoneID];
  v10 = sub_100216974();
  v12 = v11;

  v13 = a1[1];

  *a1 = v10;
  a1[1] = v12;
  return result;
}

uint64_t sub_1001806BC(uint64_t a1, void (*a2)(void *, void *, uint64_t), uint64_t a3)
{
  v6 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v100 = &v86 - v9;
  v10 = sub_10001148C(&qword_100298588, &unk_10021E7E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v99 = &v86 - v13;
  v98 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v92 = *(v98 - 8);
  v14 = *(v92 + 64);
  __chkstk_darwin(v98, v15);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for CurrentCKKSItem(0);
  v91 = *(v103 - 8);
  v18 = *(v91 + 64);
  __chkstk_darwin(v103, v19);
  v102 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100216424();
  v93 = *(v104 - 8);
  v21 = *(v93 + 64);
  v23 = __chkstk_darwin(v104, v22);
  v97 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23, v25);
  v101 = &v86 - v27;
  __chkstk_darwin(v26, v28);
  v30 = &v86 - v29;
  Response = type metadata accessor for CurrentItemFetchResponse(0);
  v32 = *(*(Response - 8) + 64);
  __chkstk_darwin(Response - 8, v33);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10001148C(&qword_100298410, &unk_10021DE80);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36, v38);
  v40 = (&v86 - v39);
  sub_100019C6C(a1, &v86 - v39, &qword_100298410, &unk_10021DE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = *v40;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v42 = sub_100216774();
    sub_100002648(v42, qword_10029D160);
    swift_errorRetain();
    v43 = sub_100216754();
    v44 = sub_100216C74();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v105 = v41;
      v106 = v46;
      *v45 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v47 = sub_100216994();
      v49 = sub_100005FB0(v47, v48, &v106);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "fetchCurrentItem failed: %{public}s", v45, 0xCu);
      sub_100006128(v46);
    }

    swift_errorRetain();
    a2(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v41);
  }

  else
  {
    v87 = v17;
    v88 = a2;
    v90 = a3;
    sub_1001AC038(v40, v35, type metadata accessor for CurrentItemFetchResponse);
    v89 = v35;
    v51 = *(v35 + 1);
    v106 = _swiftEmptyArrayStorage;
    v52 = *(v51 + 16);
    if (v52)
    {
      v53 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v54 = *(v93 + 16);
      v55 = v51 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
      v95 = *(v93 + 72);
      v96 = v53;
      v56 = (v93 + 8);
      v94 = _swiftEmptyArrayStorage;
      v57 = v102;
      do
      {
        v58 = v104;
        v54(v30, v55, v104);
        v54(v101, v30, v58);
        v59 = sub_100216D94();
        (*v56)(v30, v58);
        if (v59)
        {
          sub_100216B04();
          if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100216B44();
          }

          sub_100216B64();
          v94 = v106;
          v57 = v102;
        }

        v55 += v95;
        --v52;
      }

      while (v52);
    }

    else
    {
      v94 = _swiftEmptyArrayStorage;
      v57 = v102;
    }

    v60 = v89;
    v61 = *v89;
    v62 = *(*v89 + 16);
    v63 = _swiftEmptyArrayStorage;
    if (v62)
    {
      v106 = _swiftEmptyArrayStorage;
      sub_100217064();
      v64 = v91;
      v65 = v61 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v66 = (v92 + 48);
      v96 = *(v64 + 72);
      v101 = (v93 + 48);
      v93 += 32;
      v67 = v87;
      while (1)
      {
        sub_1001AC0A0(v65, v57, type metadata accessor for CurrentCKKSItem);
        v68 = v99;
        sub_100019C6C(v57 + *(v103 + 24), v99, &qword_100298588, &unk_10021E7E0);
        v69 = *v66;
        v70 = v98;
        if ((*v66)(v68, 1, v98) == 1)
        {
          *v67 = 0;
          v67[1] = 0xE000000000000000;
          v67[2] = 0;
          v67[3] = 0xE000000000000000;
          v71 = v67 + *(v70 + 24);
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v69(v68, 1, v70) != 1)
          {
            sub_1000114D4(v68, &qword_100298588, &unk_10021E7E0);
          }
        }

        else
        {
          sub_1001AC038(v68, v67, type metadata accessor for CurrentCKKSItemSpecifier);
        }

        v72 = v67[2];
        v73 = v67[3];
        v74 = *v67;
        v75 = v67[1];
        v76 = objc_allocWithZone(CuttlefishCurrentItemSpecifier);
        v77 = sub_100216964();
        v78 = sub_100216964();
        v79 = [v76 init:v77 zoneID:v78];

        sub_1001AC1E4(v67, type metadata accessor for CurrentCKKSItemSpecifier);
        v57 = v102;
        v80 = v100;
        sub_100019C6C(&v102[*(v103 + 20)], v100, &qword_10029D9C0, &qword_100226740);
        v81 = *v101;
        v82 = v104;
        if ((*v101)(v80, 1, v104) == 1)
        {
          v95 = v79;
          sub_100216414();
          v83 = v81(v80, 1, v82);
          v79 = v95;
          if (v83 != 1)
          {
            sub_1000114D4(v80, &qword_10029D9C0, &qword_100226740);
          }
        }

        else
        {
          (*v93)(v97, v80, v82);
        }

        result = sub_100216D94();
        if (!result)
        {
          break;
        }

        v84 = result;
        [objc_allocWithZone(CuttlefishCurrentItem) init:v79 item:result];

        sub_1001AC1E4(v57, type metadata accessor for CurrentCKKSItem);
        sub_100217044();
        v85 = v106[2];
        sub_100217074();
        sub_100217084();
        sub_100217054();
        v65 += v96;
        if (!--v62)
        {
          v63 = v106;
          v60 = v89;
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_28:
      v88(v63, v94, 0);

      return sub_1001AC1E4(v60, type metadata accessor for CurrentItemFetchResponse);
    }
  }

  return result;
}

size_t sub_1001810B8(unint64_t a1, void *a2, uint64_t a3)
{
  v60 = a2;
  v61 = a1;
  v5 = type metadata accessor for PCSService(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = &v54 - v12;
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  v15 = *(*(Request - 8) + 64);
  __chkstk_darwin(Request, v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v19 = v3;
  v20 = sub_10019C8E0(v19, 0xD000000000000026, 0x800000010023CE70);
  v57 = v19;

  v21 = swift_allocObject();
  v22 = v60;
  v21[2] = v20;
  v21[3] = v22;
  v60 = v21;
  v21[4] = a3;
  v23 = qword_100297520;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_100216774();
  sub_100002648(v24, qword_10029D160);
  v25 = sub_100216754();
  v26 = sub_100216C54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "starting fetchPCSIdentityByKey", v27, 2u);
  }

  v30 = v61;
  v58 = Request;
  if (v61 >> 62)
  {
    v53 = v61;
    v28 = sub_1002170F4();
    v30 = v53;
    v31 = v28;
  }

  else
  {
    v31 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = _swiftEmptyArrayStorage;
  v59 = v20;
  if (!v31)
  {
    goto LABEL_21;
  }

  v33 = v30;
  v62 = _swiftEmptyArrayStorage;
  result = sub_100187934(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v56 = v18;
    v32 = v62;
    if ((v33 & 0xC000000000000001) != 0)
    {
      v35 = 0;
      do
      {
        v36 = sub_100217014();
        *(&v54 - 2) = __chkstk_darwin(v36, v37);
        sub_1001A13C4(&qword_10029D9A0, type metadata accessor for PCSService);
        sub_100216654();
        swift_unknownObjectRelease();
        v62 = v32;
        v39 = v32[2];
        v38 = v32[3];
        if (v39 >= v38 >> 1)
        {
          sub_100187934(v38 > 1, v39 + 1, 1);
          v32 = v62;
        }

        ++v35;
        v32[2] = v39 + 1;
        v28 = sub_1001AC038(v13, v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v39, type metadata accessor for PCSService);
        v29 = v61;
      }

      while (v31 != v35);
    }

    else
    {
      v40 = (v33 + 32);
      v28 = sub_1001A13C4(&qword_10029D9A0, type metadata accessor for PCSService);
      v61 = v28;
      v41 = v55;
      do
      {
        v42 = *v40;
        __chkstk_darwin(v28, v29);
        *(&v54 - 2) = v43;
        v44 = v43;
        sub_100216654();

        v62 = v32;
        v46 = v32[2];
        v45 = v32[3];
        if (v46 >= v45 >> 1)
        {
          sub_100187934(v45 > 1, v46 + 1, 1);
          v32 = v62;
        }

        v32[2] = v46 + 1;
        v28 = sub_1001AC038(v41, v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v46, type metadata accessor for PCSService);
        ++v40;
        --v31;
      }

      while (v31);
    }

    v18 = v56;
LABEL_21:
    __chkstk_darwin(v28, v29);
    *(&v54 - 2) = v32;
    sub_1001A13C4(&qword_100299040, type metadata accessor for DirectPCSIdentityFetchRequest);
    sub_100216654();

    v47 = *&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v48 = *&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    sub_100006484(&v57[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v47);
    v49 = swift_allocObject();
    v50 = v60;
    *(v49 + 16) = sub_1001AB464;
    *(v49 + 24) = v50;
    v51 = *(v48 + 16);
    v52 = *(v51 + 136);

    v52(v18, sub_1001AB48C, v49, v47, v51);

    return sub_1001AC1E4(v18, type metadata accessor for DirectPCSIdentityFetchRequest);
  }

  __break(1u);
  return result;
}

uint64_t sub_100181754(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void))
{
  if (a3)
  {
    v9 = sub_100216C74();
  }

  else
  {
    v9 = sub_100216C54();
  }

  v10 = v9;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029D160);
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v10))
  {
    v20 = a5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v22._countAndFlagsBits = sub_100216994();
      sub_100216A14(v22);

      v15 = 0x203A726F727265;
    }

    else
    {
      v15 = 0x73736563637573;
    }

    v16 = sub_100005FB0(v15, 0xE700000000000000, &v21);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v10, "fetchPCSIdentityByKey complete: %{public}s", v13, 0xCu);
    sub_100006128(v14);

    a5 = v20;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000026, 0x800000010023CE70);
  if (a1)
  {
    v17 = a1;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  a5(v17, v18, a3);
}

uint64_t sub_1001819D4(uint64_t a1, id a2)
{
  isa = [a2 PCSServiceID];
  if (!isa)
  {
    sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
    isa = sub_100216DA4(-1).super.super.isa;
  }

  v5 = isa;
  v6 = sub_100217234();

  *a1 = v6;
  v7 = [a2 PCSPublicKey];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216224();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xC000000000000000;
  }

  sub_100002BF0(*(a1 + 8), *(a1 + 16));
  *(a1 + 8) = v9;
  *(a1 + 16) = v11;
  v12 = [a2 zoneID];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100216974();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = *(a1 + 32);

  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_100181AF0(uint64_t a1, void (*a2)(void *, void *, uint64_t), uint64_t a3)
{
  v57 = a3;
  v58 = a2;
  v4 = type metadata accessor for DirectPCSIdentity(0);
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  __chkstk_darwin(v4 - 8, v6);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100216424();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v54 - v16;
  Response = type metadata accessor for DirectPCSIdentityFetchResponse(0);
  v19 = *(*(Response - 8) + 64);
  __chkstk_darwin(Response - 8, v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10001148C(&qword_100298400, &qword_10021DE70);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v25);
  v27 = (&v54 - v26);
  sub_100019C6C(a1, &v54 - v26, &qword_100298400, &qword_10021DE70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v29 = sub_100216774();
    sub_100002648(v29, qword_10029D160);
    swift_errorRetain();
    v30 = sub_100216754();
    v31 = sub_100216C74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v62 = v28;
      v63 = v33;
      *v32 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, &v63);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "fetchPCSIdentityByKey failed: %{public}s", v32, 0xCu);
      sub_100006128(v33);
    }

    v37 = v58;
    swift_errorRetain();
    v37(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v28);
  }

  else
  {
    sub_1001AC038(v27, v22, type metadata accessor for DirectPCSIdentityFetchResponse);
    v56 = v22;
    v39 = *(v22 + 1);
    v63 = _swiftEmptyArrayStorage;
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      v44 = *(v9 + 16);
      v43 = v9 + 16;
      v42 = v44;
      v45 = (v39 + ((*(v43 + 64) + 32) & ~*(v43 + 64)));
      v60 = *(v43 + 56);
      v61 = v41;
      v59 = _swiftEmptyArrayStorage;
      v44(v17, v45, v8);
      while (1)
      {
        v42(v14, v17, v8);
        v46 = sub_100216D94();
        (*(v43 - 8))(v17, v8);
        if (v46)
        {
          sub_100216B04();
          if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v59 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100216B44();
          }

          sub_100216B64();
          v59 = v63;
        }

        v45 += v60;
        if (!--v40)
        {
          break;
        }

        v42(v17, v45, v8);
      }
    }

    else
    {
      v59 = _swiftEmptyArrayStorage;
    }

    v47 = *v56;
    v48 = *(*v56 + 16);
    v49 = _swiftEmptyArrayStorage;
    if (v48)
    {
      v63 = _swiftEmptyArrayStorage;
      sub_100217064();
      v50 = v55;
      v51 = v47 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
      v52 = *(v54 + 72);
      do
      {
        sub_1001AC0A0(v51, v50, type metadata accessor for DirectPCSIdentity);
        sub_100059518();
        sub_1001AC1E4(v50, type metadata accessor for DirectPCSIdentity);
        sub_100217044();
        v53 = v63[2];
        sub_100217074();
        sub_100217084();
        sub_100217054();
        v51 += v52;
        --v48;
      }

      while (v48);
      v49 = v63;
    }

    v58(v49, v59, 0);

    return sub_1001AC1E4(v56, type metadata accessor for DirectPCSIdentityFetchResponse);
  }
}

void sub_10018210C(Swift::Int a1, unint64_t a2, SEL *a3, SEL *a4, const char *a5)
{
  v8 = v5;
  v11 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v12 = [*(v5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) *a3];
  if (v12)
  {
    v24[0] = 0;
    v13 = v12;
    sub_100216BA4();
  }

  v24[2] = &_swiftEmptySetSingleton;

  sub_10018B000(v24, a1, a2);

  v14 = *(v8 + v11);

  isa = sub_100216B94().super.isa;

  [v14 *a4];

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);

  oslog = sub_100216754();
  v17 = sub_100216C54();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_100005FB0(a1, a2, v24);
    *(v18 + 12) = 2080;

    v19 = sub_100216BC4();
    v21 = v20;

    v22 = sub_100005FB0(v19, v21, v24);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, oslog, v17, a5, v18, 0x16u);
    swift_arrayDestroy();
  }
}

id sub_1001823DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Container();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100182510(uint64_t a1)
{
  v3 = (*v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish);
  v4 = v3[3];
  v5 = v3[4];
  sub_100006484(v3, v4);
  return (*(*(v5 + 8) + 8))(a1, v4) & 1;
}

uint64_t sub_10018257C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_100216034();
    if (v10)
    {
      v11 = sub_100216064();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_100216054();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_100216034();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_100216064();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_100216054();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001827AC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_100217264();

    sub_1002169C4();
    v17 = sub_100217284();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

size_t sub_100182964(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001148C(&qword_10029D7C0, &unk_1002265E8);
  v10 = *(type metadata accessor for TLKShare(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TLKShare(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100182B3C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D8D0, &unk_100226680);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001148C(&unk_10029D560, qword_10021D450);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100182C70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D8B0, &qword_100226670);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100182D90(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100182E9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D980, &qword_100226708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100182FA0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D890, &qword_100226660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001830AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100183130(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

Swift::Int sub_1001831B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10001148C(&qword_10029D830, &qword_10021D778);
    v2 = sub_100217134();
    v19 = v2;
    sub_1002170A4();
    v3 = sub_1002170D4();
    if (v3)
    {
      v4 = v3;
      sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10000200C(0, &unk_10029D810, TPPolicyDocument_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100184588(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100216DB4(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1002170D4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_100183404(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001148C(&qword_10029D690, &qword_10021D750);
  result = sub_100217124();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1000125AC(v22, v34);
      }

      else
      {
        sub_1000060A0(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_100217264();
      type metadata accessor for CFString(0);
      sub_1001A13C4(&qword_100297D40, type metadata accessor for CFString);
      sub_100216454();
      result = sub_100217284();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1000125AC(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1001836E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
  v36 = a2;
  result = sub_100217124();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1000125AC(v25, v37);
      }

      else
      {
        sub_1000060A0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_100217264();
      sub_1002169C4();
      result = sub_100217284();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1000125AC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10018399C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001148C(&qword_100297D90, &qword_10021D7A8);
  v40 = a2;
  result = sub_100217124();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v42 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_100217264();
      sub_1002169C4();
      sub_1002169C4();
      result = sub_100217284();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v13 = v41;
      v17[2] = v42;
      v17[3] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v39;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100183C74(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_100216194();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  sub_10001148C(&qword_100297D10, &qword_10021D718);
  v44 = a2;
  result = sub_100217124();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v12;
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_1001A13C4(&unk_10029D660, &type metadata accessor for URL);
      result = sub_1002168F4();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v12 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_100184050(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001148C(&qword_100297D88, &qword_10021D7A0);
  v40 = a2;
  result = sub_100217124();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_100217264();
      sub_1002169C4();
      result = sub_100217284();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100184310(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001148C(&unk_10029D800, &unk_100226620);
  result = sub_100217124();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
        sub_100012558(v32, *(&v32 + 1));
      }

      result = sub_100216DB4(*(v8 + 40));
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_100184588(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10001148C(&qword_10029D830, &qword_10021D778);
  result = sub_100217124();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_100216DB4(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1001847F0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10001148C(a3, a4);
  v41 = a2;
  result = sub_100217124();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_100217264();
      sub_1002169C4();
      result = sub_100217284();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100184A8C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10001148C(a3, a4);
  v40 = a2;
  result = sub_100217124();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_100217264();
      sub_1002169C4();
      result = sub_100217284();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void sub_100184D2C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100216E54() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_100217264();
      type metadata accessor for CFString(0);
      sub_1001A13C4(&qword_100297D40, type metadata accessor for CFString);
      v12 = v11;
      sub_100216454();
      v13 = sub_100217284();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100184F24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100216E54() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_100217264();

      sub_1002169C4();
      v14 = sub_100217284();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1001850D4(int64_t a1, uint64_t a2)
{
  v44 = sub_100216194();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v44, v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v45 = v8;
    v14 = sub_100216E54();
    v15 = v44;
    v8 = v45;
    v16 = v13;
    v42 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v40 = a2 + 64;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v43;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v41(v43, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_1001A13C4(&unk_10029D660, &type metadata accessor for URL);
      v27 = sub_1002168F4();
      result = (*v39)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v42)
      {
        if (v28 >= v42 && a1 >= v28)
        {
LABEL_15:
          v8 = v45;
          v31 = *(v45 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v45;
            v19 = v20;
            v16 = v23;
            v10 = v40;
          }

          else
          {
            v10 = v40;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v45;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + 8 * a1);
          v34 = (v32 + 8 * v12);
          if (a1 != v12 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v42 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v40;
      v19 = v20;
      v8 = v45;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_1001853F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100216E54() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100217264();

      sub_1002169C4();
      v13 = sub_100217284();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1001855A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100216E54() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100217264();

      sub_1002169C4();
      v13 = sub_100217284();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_100185754(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100015974(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_10018676C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100183404(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_100015974(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1002171C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_100006128(v20);

    return sub_1000125AC(a1, v20);
  }

  else
  {
    sub_1001865E0(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_100185894(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100015A28(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1001868EC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1001836E4(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100015A28(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1002171C4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100006128(v23);

    return sub_1000125AC(a1, v23);
  }

  else
  {
    sub_100186648(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1001859E4(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xC)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 13);
  }
}

uint64_t sub_100185A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 17))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xD)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100185A48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 16) = 0;
    *result = a2 - 243;
    *(result + 8) = 0;
    if (a3 >= 0xF3)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100185A8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xD)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    LOBYTE(a2) = 13;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_100185B20(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100185B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100185B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100185BC8()
{
  result = qword_10029D530;
  if (!qword_10029D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D530);
  }

  return result;
}

uint64_t sub_100185C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1000158D4(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_10018399C(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_1000158D4(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_1002171C4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_100186A90();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 32 * v15);
  *v29 = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

void sub_100185DC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_100216194();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_100015B28(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_100186CCC();
      goto LABEL_7;
    }

    sub_100183C74(v19, a3 & 1);
    v25 = *v4;
    v26 = sub_100015B28(a2);
    if ((v20 & 1) == (v27 & 1))
    {
      v16 = v26;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      sub_1001866B4(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    sub_1002171C4();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_100185F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100015A28(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100184050(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100015A28(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1002171C4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100186F40();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

id sub_100186118(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100015AE4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_100184588(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_100015AE4(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
        sub_1002171C4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1001870B8();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return _objc_release_x1();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return a2;
}

uint64_t sub_100186290(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100015A28(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_1001847F0(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_100015A28(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_1002171C4();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      sub_100187218(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

uint64_t sub_100186440(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100015A28(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_100184A8C(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_100015A28(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1002171C4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_100187374(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

_OWORD *sub_1001865E0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1000125AC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_100186648(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000125AC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1001866B4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_100216194();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

id sub_10018676C()
{
  v1 = v0;
  sub_10001148C(&qword_10029D690, &qword_10021D750);
  v2 = *v0;
  v3 = sub_100217114();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1000060A0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000125AC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1001868EC()
{
  v1 = v0;
  sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
  v2 = *v0;
  v3 = sub_100217114();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000060A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000125AC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_100186A90()
{
  v1 = v0;
  sub_10001148C(&qword_100297D90, &qword_10021D7A8);
  v2 = *v0;
  v3 = sub_100217114();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100186C30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100186C6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100186C88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

char *sub_100186CCC()
{
  v1 = v0;
  v33 = sub_100216194();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v33, v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001148C(&qword_100297D10, &qword_10021D718);
  v5 = *v0;
  v6 = sub_100217114();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;
        result = v25;
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_100186F40()
{
  v1 = v0;
  sub_10001148C(&qword_100297D88, &qword_10021D7A0);
  v2 = *v0;
  v3 = sub_100217114();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1001870B8()
{
  v1 = v0;
  sub_10001148C(&qword_10029D830, &qword_10021D778);
  v2 = *v0;
  v3 = sub_100217114();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100187218(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10001148C(a1, a2);
  v4 = *v2;
  v5 = sub_100217114();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_100187374(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10001148C(a1, a2);
  v4 = *v2;
  v5 = sub_100217114();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1001874D4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_100216ED4();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100183130(v2, 0);

    v1 = sub_10018FD34(&v5, v3 + 4, v2, v1);
    sub_10000D778();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

void sub_100187584(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10001148C(&qword_10029D7C0, &unk_1002265E8);
      v7 = *(type metadata accessor for TLKShare(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for TLKShare(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_100187724(void *a1, int64_t a2, char a3)
{
  result = sub_100187978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187744(char *a1, int64_t a2, char a3)
{
  result = sub_100187AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100187764(char *a1, int64_t a2, char a3)
{
  result = sub_100187BCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100187784(void *a1, int64_t a2, char a3)
{
  result = sub_100187CDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001877A4(char *a1, int64_t a2, char a3)
{
  result = sub_100187E10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001877C4(void *a1, int64_t a2, char a3)
{
  result = sub_100187F1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001877E4(char *a1, int64_t a2, char a3)
{
  result = sub_100188050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100187804(size_t a1, int64_t a2, char a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D7C0, &unk_1002265E8, type metadata accessor for TLKShare);
  *v3 = result;
  return result;
}

size_t sub_100187848(size_t a1, int64_t a2, char a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D950, &qword_1002266F8, type metadata accessor for ViewKeys);
  *v3 = result;
  return result;
}

size_t sub_10018788C(size_t a1, int64_t a2, char a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D850, &qword_100226640, type metadata accessor for PolicyDocumentKey);
  *v3 = result;
  return result;
}

char *sub_1001878D0(char *a1, int64_t a2, char a3)
{
  result = sub_100188154(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001878F0(size_t a1, int64_t a2, char a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D9C8, &qword_100226748, type metadata accessor for CurrentCKKSItemSpecifier);
  *v3 = result;
  return result;
}

size_t sub_100187934(size_t a1, int64_t a2, char a3)
{
  result = sub_100188260(a1, a2, a3, *v3, &qword_10029D9A8, &qword_100226738, type metadata accessor for PCSService);
  *v3 = result;
  return result;
}

void *sub_100187978(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D5D8, &qword_100226518);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001148C(&unk_10029D5E0, &unk_100226520);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187AAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_100297D98, &unk_10021D9B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187BCC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D150, &qword_100226560);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100187CDC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D5C8, &qword_100226508);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001148C(&qword_10029D5D0, &qword_100226510);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100187E10(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D5A0, &qword_1002264F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100187F1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029DB80, &qword_100226810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001148C(&qword_10029DB38, &qword_1002267C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100188050(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&unk_10029D7F0, &qword_100226618);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100188154(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001148C(&qword_10029D890, &qword_100226660);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100188260(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10001148C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_10018843C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void *, uint64_t, uint64_t), void (*a7)(void))
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v8 = _swiftEmptySetSingleton;
    v29 = _swiftEmptySetSingleton;
    sub_100216E84();
    if (sub_100216F14())
    {
      a7(0);
      while (1)
      {
        swift_dynamicCast();
        v13 = a1(&v28);
        if (v7)
        {
          break;
        }

        v14 = v28;
        if (v13)
        {
          v15 = *(v8 + 2);
          if (*(v8 + 3) <= v15)
          {
            sub_100188D90(v15 + 1, a4, a5);
          }

          v8 = v29;
          result = sub_100216DB4(*(v29 + 5));
          v17 = v8 + 56;
          v18 = -1 << v8[32];
          v19 = result & ~v18;
          v20 = v19 >> 6;
          if (((-1 << v19) & ~*&v8[8 * (v19 >> 6) + 56]) != 0)
          {
            v21 = __clz(__rbit64((-1 << v19) & ~*&v8[8 * (v19 >> 6) + 56])) | v19 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = 0;
            v23 = (63 - v18) >> 6;
            do
            {
              if (++v20 == v23 && (v22 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v24 = v20 == v23;
              if (v20 == v23)
              {
                v20 = 0;
              }

              v22 |= v24;
              v25 = *&v17[8 * v20];
            }

            while (v25 == -1);
            v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          }

          *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          *(*(v8 + 6) + 8 * v21) = v14;
          ++*(v8 + 2);
        }

        else
        {
        }

        if (!sub_100216F14())
        {
          goto LABEL_21;
        }
      }

      v27 = v28;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v26 = sub_100189EA0(a1, a2, a3, a4, a5, a6);
    if (!v7)
    {
      return v26;
    }
  }

  return v8;
}

uint64_t sub_100188698(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
  result = sub_100216F94();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_100217264();
      sub_1002169C4();
      result = sub_100217284();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1001888F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001148C(&qword_10029D8F8, &qword_100226698);
  result = sub_100216F94();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v29 = *v19;
      v30 = *(v19 + 16);
      v31 = *(v19 + 32);
      result = sub_100216F54(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v29;
      *(v15 + 16) = v30;
      *(v15 + 32) = v31;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100188B6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001148C(&qword_10029D5F8, &qword_100226538);
  result = sub_100216F94();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_100217254();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100188D90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_10001148C(a2, a3);
  result = sub_100216F94();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = sub_100216DB4(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}