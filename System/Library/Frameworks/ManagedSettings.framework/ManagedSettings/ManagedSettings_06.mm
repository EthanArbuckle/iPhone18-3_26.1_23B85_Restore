uint64_t sub_20E486078(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_20E4C69C0();

      sub_20E4C6530();
      v27 = sub_20E4C69F0();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_20E4C6910() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_20E488320(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_20E4C69C0();

      sub_20E4C6530();
      v41 = sub_20E4C69F0();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_20E4C6910() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E486454(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v69 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v73 = 0;
    v35 = 0;
    v36 = a3 + 56;
    v37 = 1 << *(a3 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(a3 + 56);
    v67 = (v37 + 63) >> 6;
    v40 = a4 + 56;
LABEL_121:
    if (v39)
    {
      v41 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      goto LABEL_128;
    }

    v42 = v35;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_237;
      }

      if (v35 >= v67)
      {
        break;
      }

      v43 = *(v36 + 8 * v35);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v39 = (v43 - 1) & v43;
LABEL_128:
        v75 = v41 | (v35 << 6);
        v44 = *(*(v5 + 48) + v75);
        v45 = *(v4 + 40);
        sub_20E4C69C0();
        sub_20E4C6530();

        result = sub_20E4C69F0();
        v46 = -1 << *(v4 + 32);
        v47 = result & ~v46;
        if (((*(v40 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
        {
          goto LABEL_121;
        }

        v71 = v39;
        v48 = ~v46;
        while (2)
        {
          v49 = 0xE700000000000000;
          v50 = 0x746E756F636361;
          switch(*(*(v4 + 48) + v47))
          {
            case 1:
              v50 = 0x706F7244726961;
              break;
            case 2:
              v50 = 0x436465776F6C6C61;
              v49 = 0xED0000746E65696CLL;
              break;
            case 3:
              v50 = 0x746163696C707061;
              v49 = 0xEB000000006E6F69;
              break;
            case 4:
              v49 = 0xE800000000000000;
              v50 = 0x65726F7453707061;
              break;
            case 5:
              v50 = 0x6363416F69647561;
              v49 = 0xEE0079726F737365;
              break;
            case 6:
              v49 = 0xEA0000000000726FLL;
              v50 = 0x74616C75636C6163;
              break;
            case 7:
              v49 = 0xE600000000000000;
              v50 = 0x6172656D6163;
              break;
            case 8:
              v50 = 0x79616C50726163;
              break;
            case 9:
              v49 = 0xE800000000000000;
              v50 = 0x72616C756C6C6563;
              break;
            case 0xA:
              v50 = 0x54646E4165746164;
              v49 = 0xEB00000000656D69;
              break;
            case 0xB:
              v50 = 0x6341656369766564;
              v49 = 0xEE00797469766974;
              break;
            case 0xC:
              v50 = 0x65696C6552657965;
              v49 = 0xE900000000000066;
              break;
            case 0xD:
              v49 = 0xE800000000000000;
              v50 = 0x656D695465636166;
              break;
            case 0xE:
              v49 = 0xE600000000000000;
              v50 = 0x794D646E6966;
              break;
            case 0xF:
              v49 = 0xEA00000000007265;
              v50 = 0x746E6543656D6167;
              break;
            case 0x10:
              v50 = 0x67696C6C65746E69;
              v49 = 0xEC00000065636E65;
              break;
            case 0x11:
              v49 = 0xE800000000000000;
              v50 = 0x6472616F6279656BLL;
              break;
            case 0x12:
              v50 = 0x53646567616E616DLL;
              v49 = 0xEF73676E69747465;
              break;
            case 0x13:
              v49 = 0xE500000000000000;
              v50 = 0x616964656DLL;
              break;
            case 0x14:
              v49 = 0xE800000000000000;
              v50 = 0x736567617373656DLL;
              break;
            case 0x15:
              v49 = 0xE400000000000000;
              v50 = 1937204590;
              break;
            case 0x16:
              v50 = 0x6163696669746F6ELL;
              v49 = 0xEC0000006E6F6974;
              break;
            case 0x17:
              v49 = 0xE800000000000000;
              v50 = 0x65646F6373736170;
              break;
            case 0x18:
              v50 = 0x79636176697270;
              break;
            case 0x19:
              v49 = 0xE600000000000000;
              v50 = 0x697261666173;
              break;
            case 0x1A:
              v50 = 0x69546E6565726373;
              v51 = 25965;
              goto LABEL_162;
            case 0x1B:
              v49 = 0xE600000000000000;
              v50 = 0x646C65696873;
              break;
            case 0x1C:
              v49 = 0xE400000000000000;
              v50 = 1769105779;
              break;
            case 0x1D:
              v49 = 0xE400000000000000;
              v50 = 1919251317;
              break;
            case 0x1E:
              v50 = 0x6566615372657375;
              v51 = 31092;
LABEL_162:
              v49 = v51 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
              break;
            case 0x1F:
              v49 = 0xEA0000000000746ELL;
              v50 = 0x65746E6F43626577;
              break;
            default:
              break;
          }

          v52 = 0xE700000000000000;
          v53 = 0x746E756F636361;
          switch(v44)
          {
            case 1:
              if (v50 == 0x706F7244726961)
              {
                goto LABEL_223;
              }

              goto LABEL_224;
            case 2:
              v52 = 0xED0000746E65696CLL;
              if (v50 != 0x436465776F6C6C61)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 3:
              v59 = 0x746163696C707061;
              v60 = 7237481;
              goto LABEL_206;
            case 4:
              v52 = 0xE800000000000000;
              if (v50 != 0x65726F7453707061)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 5:
              v56 = 0x6363416F69647561;
              v57 = 0x79726F737365;
              goto LABEL_195;
            case 6:
              v52 = 0xEA0000000000726FLL;
              if (v50 != 0x74616C75636C6163)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 7:
              v52 = 0xE600000000000000;
              if (v50 != 0x6172656D6163)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 8:
              v58 = 0x616C50726163;
              goto LABEL_209;
            case 9:
              v52 = 0xE800000000000000;
              if (v50 != 0x72616C756C6C6563)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 10:
              v59 = 0x54646E4165746164;
              v60 = 6647145;
LABEL_206:
              v52 = v60 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v50 != v59)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 11:
              v56 = 0x6341656369766564;
              v57 = 0x797469766974;
LABEL_195:
              v52 = v57 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v50 != v56)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 12:
              v52 = 0xE900000000000066;
              if (v50 != 0x65696C6552657965)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 13:
              v52 = 0xE800000000000000;
              if (v50 != 0x656D695465636166)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 14:
              v52 = 0xE600000000000000;
              if (v50 != 0x794D646E6966)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 15:
              v52 = 0xEA00000000007265;
              if (v50 != 0x746E6543656D6167)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 16:
              v54 = 0x67696C6C65746E69;
              v55 = 1701015141;
              goto LABEL_213;
            case 17:
              v52 = 0xE800000000000000;
              if (v50 != 0x6472616F6279656BLL)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 18:
              v52 = 0xEF73676E69747465;
              if (v50 != 0x53646567616E616DLL)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 19:
              v52 = 0xE500000000000000;
              if (v50 != 0x616964656DLL)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 20:
              v52 = 0xE800000000000000;
              if (v50 != 0x736567617373656DLL)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 21:
              v52 = 0xE400000000000000;
              if (v50 != 1937204590)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 22:
              v54 = 0x6163696669746F6ELL;
              v55 = 1852795252;
LABEL_213:
              v52 = v55 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v50 != v54)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 23:
              v52 = 0xE800000000000000;
              if (v50 != 0x65646F6373736170)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 24:
              v58 = 0x636176697270;
LABEL_209:
              if (v50 != (v58 & 0xFFFFFFFFFFFFLL | 0x79000000000000))
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 25:
              v52 = 0xE600000000000000;
              if (v50 != 0x697261666173)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 26:
              v61 = 0x69546E6565726373;
              v62 = 25965;
              goto LABEL_228;
            case 27:
              v52 = 0xE600000000000000;
              if (v50 != 0x646C65696873)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 28:
              v52 = 0xE400000000000000;
              if (v50 != 1769105779)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 29:
              v52 = 0xE400000000000000;
              v53 = 1919251317;
              goto LABEL_222;
            case 30:
              v61 = 0x6566615372657375;
              v62 = 31092;
LABEL_228:
              v52 = v62 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
              if (v50 != v61)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            case 31:
              v52 = 0xEA0000000000746ELL;
              if (v50 != 0x65746E6F43626577)
              {
                goto LABEL_224;
              }

              goto LABEL_223;
            default:
LABEL_222:
              if (v50 != v53)
              {
                goto LABEL_224;
              }

LABEL_223:
              if (v49 != v52)
              {
LABEL_224:
                v63 = sub_20E4C6910();

                if (v63)
                {
                  goto LABEL_231;
                }

                v47 = (v47 + 1) & v48;
                v4 = a4;
                if (((*(v40 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
                {
                  v5 = a3;
                  v39 = v71;
                  goto LABEL_121;
                }

                continue;
              }

LABEL_231:
              v4 = a4;
              v39 = v71;
              *(v69 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
              v64 = __OFADD__(v73++, 1);
              v5 = a3;
              if (!v64)
              {
                goto LABEL_121;
              }

              goto LABEL_239;
          }
        }
      }
    }

    v6 = v73;
LABEL_235:

    return sub_20E488544(v69, a2, v6, v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v66 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v70 = v9 & *(a4 + 56);
    v65 = (v8 + 63) >> 6;
    v74 = a3 + 56;
LABEL_5:
    if (v70)
    {
      v10 = __clz(__rbit64(v70));
      v70 &= v70 - 1;
      goto LABEL_12;
    }

    v11 = v7;
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 >= v65)
      {
        goto LABEL_235;
      }

      v12 = *(v66 + 8 * v7);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v70 = (v12 - 1) & v12;
LABEL_12:
        v13 = *(*(v4 + 48) + (v10 | (v7 << 6)));
        v14 = *(v5 + 40);
        sub_20E4C69C0();
        sub_20E4C6530();

        result = sub_20E4C69F0();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v74 + 8 * (v16 >> 6))) == 0)
        {
          goto LABEL_5;
        }

        v72 = v6;
        v19 = ~v15;
        while (2)
        {
          v20 = 0xE700000000000000;
          v21 = 0x746E756F636361;
          switch(*(*(v5 + 48) + v16))
          {
            case 1:
              v21 = 0x706F7244726961;
              break;
            case 2:
              v21 = 0x436465776F6C6C61;
              v20 = 0xED0000746E65696CLL;
              break;
            case 3:
              v21 = 0x746163696C707061;
              v20 = 0xEB000000006E6F69;
              break;
            case 4:
              v20 = 0xE800000000000000;
              v21 = 0x65726F7453707061;
              break;
            case 5:
              v21 = 0x6363416F69647561;
              v20 = 0xEE0079726F737365;
              break;
            case 6:
              v20 = 0xEA0000000000726FLL;
              v21 = 0x74616C75636C6163;
              break;
            case 7:
              v20 = 0xE600000000000000;
              v21 = 0x6172656D6163;
              break;
            case 8:
              v21 = 0x79616C50726163;
              break;
            case 9:
              v20 = 0xE800000000000000;
              v21 = 0x72616C756C6C6563;
              break;
            case 0xA:
              v21 = 0x54646E4165746164;
              v20 = 0xEB00000000656D69;
              break;
            case 0xB:
              v21 = 0x6341656369766564;
              v20 = 0xEE00797469766974;
              break;
            case 0xC:
              v21 = 0x65696C6552657965;
              v20 = 0xE900000000000066;
              break;
            case 0xD:
              v20 = 0xE800000000000000;
              v21 = 0x656D695465636166;
              break;
            case 0xE:
              v20 = 0xE600000000000000;
              v21 = 0x794D646E6966;
              break;
            case 0xF:
              v20 = 0xEA00000000007265;
              v21 = 0x746E6543656D6167;
              break;
            case 0x10:
              v21 = 0x67696C6C65746E69;
              v20 = 0xEC00000065636E65;
              break;
            case 0x11:
              v20 = 0xE800000000000000;
              v21 = 0x6472616F6279656BLL;
              break;
            case 0x12:
              v21 = 0x53646567616E616DLL;
              v20 = 0xEF73676E69747465;
              break;
            case 0x13:
              v20 = 0xE500000000000000;
              v21 = 0x616964656DLL;
              break;
            case 0x14:
              v20 = 0xE800000000000000;
              v21 = 0x736567617373656DLL;
              break;
            case 0x15:
              v20 = 0xE400000000000000;
              v21 = 1937204590;
              break;
            case 0x16:
              v21 = 0x6163696669746F6ELL;
              v20 = 0xEC0000006E6F6974;
              break;
            case 0x17:
              v20 = 0xE800000000000000;
              v21 = 0x65646F6373736170;
              break;
            case 0x18:
              v21 = 0x79636176697270;
              break;
            case 0x19:
              v20 = 0xE600000000000000;
              v21 = 0x697261666173;
              break;
            case 0x1A:
              v21 = 0x69546E6565726373;
              v22 = 25965;
              goto LABEL_46;
            case 0x1B:
              v20 = 0xE600000000000000;
              v21 = 0x646C65696873;
              break;
            case 0x1C:
              v20 = 0xE400000000000000;
              v21 = 1769105779;
              break;
            case 0x1D:
              v20 = 0xE400000000000000;
              v21 = 1919251317;
              break;
            case 0x1E:
              v21 = 0x6566615372657375;
              v22 = 31092;
LABEL_46:
              v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
              break;
            case 0x1F:
              v20 = 0xEA0000000000746ELL;
              v21 = 0x65746E6F43626577;
              break;
            default:
              break;
          }

          v23 = 0xE700000000000000;
          v24 = 0x746E756F636361;
          switch(v13)
          {
            case 1:
              if (v21 == 0x706F7244726961)
              {
                goto LABEL_107;
              }

              goto LABEL_108;
            case 2:
              v23 = 0xED0000746E65696CLL;
              if (v21 != 0x436465776F6C6C61)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 3:
              v30 = 0x746163696C707061;
              v31 = 7237481;
              goto LABEL_90;
            case 4:
              v23 = 0xE800000000000000;
              if (v21 != 0x65726F7453707061)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 5:
              v27 = 0x6363416F69647561;
              v28 = 0x79726F737365;
              goto LABEL_79;
            case 6:
              v23 = 0xEA0000000000726FLL;
              if (v21 != 0x74616C75636C6163)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 7:
              v23 = 0xE600000000000000;
              if (v21 != 0x6172656D6163)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 8:
              v29 = 0x616C50726163;
              goto LABEL_93;
            case 9:
              v23 = 0xE800000000000000;
              if (v21 != 0x72616C756C6C6563)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 10:
              v30 = 0x54646E4165746164;
              v31 = 6647145;
LABEL_90:
              v23 = v31 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
              if (v21 != v30)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 11:
              v27 = 0x6341656369766564;
              v28 = 0x797469766974;
LABEL_79:
              v23 = v28 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v21 != v27)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 12:
              v23 = 0xE900000000000066;
              if (v21 != 0x65696C6552657965)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 13:
              v23 = 0xE800000000000000;
              if (v21 != 0x656D695465636166)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 14:
              v23 = 0xE600000000000000;
              if (v21 != 0x794D646E6966)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 15:
              v23 = 0xEA00000000007265;
              if (v21 != 0x746E6543656D6167)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 16:
              v25 = 0x67696C6C65746E69;
              v26 = 1701015141;
              goto LABEL_97;
            case 17:
              v23 = 0xE800000000000000;
              if (v21 != 0x6472616F6279656BLL)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 18:
              v23 = 0xEF73676E69747465;
              if (v21 != 0x53646567616E616DLL)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 19:
              v23 = 0xE500000000000000;
              if (v21 != 0x616964656DLL)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 20:
              v23 = 0xE800000000000000;
              if (v21 != 0x736567617373656DLL)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 21:
              v23 = 0xE400000000000000;
              if (v21 != 1937204590)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 22:
              v25 = 0x6163696669746F6ELL;
              v26 = 1852795252;
LABEL_97:
              v23 = v26 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v21 != v25)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 23:
              v23 = 0xE800000000000000;
              if (v21 != 0x65646F6373736170)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 24:
              v29 = 0x636176697270;
LABEL_93:
              if (v21 != (v29 & 0xFFFFFFFFFFFFLL | 0x79000000000000))
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 25:
              v23 = 0xE600000000000000;
              if (v21 != 0x697261666173)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 26:
              v32 = 0x69546E6565726373;
              v33 = 25965;
              goto LABEL_112;
            case 27:
              v23 = 0xE600000000000000;
              if (v21 != 0x646C65696873)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 28:
              v23 = 0xE400000000000000;
              if (v21 != 1769105779)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 29:
              v23 = 0xE400000000000000;
              v24 = 1919251317;
              goto LABEL_106;
            case 30:
              v32 = 0x6566615372657375;
              v33 = 31092;
LABEL_112:
              v23 = v33 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
              if (v21 != v32)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            case 31:
              v23 = 0xEA0000000000746ELL;
              if (v21 != 0x65746E6F43626577)
              {
                goto LABEL_108;
              }

              goto LABEL_107;
            default:
LABEL_106:
              if (v21 != v24)
              {
                goto LABEL_108;
              }

LABEL_107:
              if (v20 != v23)
              {
LABEL_108:
                v34 = sub_20E4C6910();

                if (v34)
                {
                  goto LABEL_115;
                }

                v16 = (v16 + 1) & v19;
                v17 = v16 >> 6;
                v18 = 1 << v16;
                v5 = a3;
                if ((*(v74 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
                {
                  v6 = v72;
                  v4 = a4;
                  goto LABEL_5;
                }

                continue;
              }

LABEL_115:
              v69[v17] |= v18;
              v6 = v72 + 1;
              v5 = a3;
              v4 = a4;
              if (!__OFADD__(v72, 1))
              {
                goto LABEL_5;
              }

              goto LABEL_238;
          }
        }
      }
    }

    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
  }

  return result;
}

uint64_t sub_20E487DBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, unint64_t))
{
  v7 = a4;
  if (!a3)
  {
    v12 = MEMORY[0x277D84FA0];
LABEL_6:

    return v12;
  }

  v8 = a3;
  if (*(a4 + 16) == a3)
  {
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_20E4C6800();
  v11 = a2;
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v39 = v11;
  v40 = v7;
  v41 = result;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v43 = (v13 - 1) & v13;
    v44 = v8;
LABEL_17:
    v19 = (*(v7 + 48) + 48 * (v16 | (v14 << 6)));
    v20 = *v19;
    v21 = v19[1];
    v23 = v19[2];
    v22 = v19[3];
    v24 = v19[5];
    v45 = v19[4];
    v25 = *(v12 + 40);
    sub_20E4C69C0();
    sub_20E4C69E0();
    if (v21)
    {

      v26 = v23;
      a7(v23, v22);
      v27 = v24;

      sub_20E4C6530();
    }

    else
    {
      v26 = v23;
      a7(v23, v22);
      v27 = v24;
    }

    if (v22 >> 60 == 15)
    {
      sub_20E4C69E0();
      if (v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_20E4C69E0();
      sub_20E4C6130();
      if (v27)
      {
LABEL_23:
        sub_20E4C69E0();
        sub_20E4C6530();
        goto LABEL_26;
      }
    }

    sub_20E4C69E0();
LABEL_26:
    result = sub_20E4C69F0();
    v12 = v41;
    v28 = -1 << *(v41 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v28) >> 6;
      v32 = v20;
      while (++v30 != v34 || (v33 & 1) == 0)
      {
        v35 = v30 == v34;
        if (v30 == v34)
        {
          v30 = 0;
        }

        v33 |= v35;
        v36 = *(v15 + 8 * v30);
        if (v36 != -1)
        {
          v31 = __clz(__rbit64(~v36)) + (v30 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_40;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v32 = v20;
LABEL_36:
    *(v15 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v37 = (*(v41 + 48) + 48 * v31);
    *v37 = v32;
    v37[1] = v21;
    v37[2] = v26;
    v37[3] = v22;
    v37[4] = v45;
    v37[5] = v27;
    ++*(v41 + 16);
    v8 = v44 - 1;
    if (__OFSUB__(v44, 1))
    {
      goto LABEL_41;
    }

    v11 = v39;
    v7 = v40;
    v13 = v43;
    if (v44 == 1)
    {
      goto LABEL_6;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_6;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v43 = (v18 - 1) & v18;
      v44 = v8;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_20E4880F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF2F0, &qword_20E4CA6F0);
  result = sub_20E4C6800();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_20E4C69C0();
    sub_20E424B50(v17, v18);
    sub_20E4C6130();
    result = sub_20E4C69F0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20E488320(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF278, &qword_20E4C95B8);
  result = sub_20E4C6800();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_20E4C69C0();

    sub_20E4C6530();
    result = sub_20E4C69F0();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20E488544(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF270, &unk_20E4CA6E0);
  result = sub_20E4C6800();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_20E4C69C0();
    SettingsGroupName.rawValue.getter();
    sub_20E4C6530();

    result = sub_20E4C69F0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_20E48876C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v140 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_20E4C69C0();
  v6 = *a1;
  v7 = a1[1];
  sub_20E4C69E0();
  if (v7)
  {
    sub_20E4C6530();
  }

  v9 = a1[2];
  v8 = a1[3];
  v128 = v8 >> 60;
  sub_20E4C69E0();
  if (v8 >> 60 != 15)
  {
    sub_20E4C6130();
  }

  v129 = v9;
  v130 = v8;
  v125 = a1[4];
  v127 = a1[5];
  v131 = v6;
  sub_20E4C69E0();
  if (v127)
  {
    sub_20E4C6530();
  }

  result = sub_20E4C69F0();
  v11 = -1 << *(v4 + 32);
  v12 = result & ~v11;
  if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_180:
    *a2 = xmmword_20E4C76F0;
    a2[1] = 0u;
    a2[2] = 0u;
LABEL_181:
    v88 = *MEMORY[0x277D85DE8];
    return result;
  }

  v132 = ~v11;
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8 == 0xC000000000000000;
  }

  v126 = v8 >> 62;
  v14 = !v13;
  v123 = v14;
  v120 = HIDWORD(v9);
  v15 = __OFSUB__(HIDWORD(v9), v9);
  v121 = v15;
  v118 = (v9 >> 32) - v9;
  v119 = v9 >> 32;
  while (1)
  {
    v16 = (*(v4 + 48) + 48 * v12);
    v18 = v16[1];
    v17 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[5];
    if (v18)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      if (*v16 != v131 || v18 != v7)
      {
        result = sub_20E4C6910();
        if ((result & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else if (v7)
    {
      goto LABEL_19;
    }

    if (v19 >> 60 != 15)
    {
      break;
    }

    if (v128 <= 0xE)
    {
      goto LABEL_18;
    }

    sub_20E41B8A8(v17, v19);

    sub_20E41B8A8(v17, v19);
    sub_20E41B8A8(v129, v130);
LABEL_74:
    sub_20E4167F8(v17, v19);
    if (v21)
    {
      if (!v127)
      {
        goto LABEL_82;
      }

      if (v20 == v125 && v21 == v127)
      {

        sub_20E4167F8(v17, v19);

LABEL_183:
        v19 = v122;
        v89 = *v122;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v91 = *v122;
        *__s1 = *v122;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_184;
        }

        goto LABEL_188;
      }

      v41 = sub_20E4C6910();

      sub_20E4167F8(v17, v19);

      if (v41)
      {
        goto LABEL_183;
      }
    }

    else
    {

      sub_20E4167F8(v17, v19);

      if (!v127)
      {
        goto LABEL_183;
      }
    }

LABEL_19:
    v12 = (v12 + 1) & v132;
    if (((*(v4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_180;
    }
  }

  if (v128 > 0xE)
  {
LABEL_18:
    sub_20E41B8A8(v17, v19);
    sub_20E41B8A8(v129, v130);
    sub_20E4167F8(v17, v19);
    result = sub_20E4167F8(v129, v130);
    goto LABEL_19;
  }

  v23 = v19 >> 62;
  if (v19 >> 62 != 3)
  {
    v25 = v126;
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_55;
      }

      v32 = *(v17 + 16);
      v31 = *(v17 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_186;
      }

      if (v126 > 1)
      {
        goto LABEL_56;
      }
    }

    else if (v23)
    {
      LODWORD(v30) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_187;
      }

      v30 = v30;
      if (v126 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v30 = BYTE6(v19);
      if (v126 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_52:
    v34 = BYTE6(v130);
    if (v25)
    {
      v34 = HIDWORD(v129) - v129;
      if (v121)
      {
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        sub_20E45AA88();
        v91 = *__s1;
LABEL_184:
        v92 = (*(v91 + 48) + 48 * v12);
        v93 = v92[1];
        *a2 = *v92;
        a2[1] = v93;
        a2[2] = v92[2];
        result = sub_20E48A3D0(v12);
        *v19 = *__s1;
        goto LABEL_181;
      }
    }

    goto LABEL_58;
  }

  if (v17)
  {
    v24 = 0;
  }

  else
  {
    v24 = v19 == 0xC000000000000000;
  }

  v25 = v126;
  v27 = !v24 || v126 < 3;
  if (((v27 | v123) & 1) == 0)
  {

    sub_20E41B8A8(0, 0xC000000000000000);

    sub_20E41B8A8(0, 0xC000000000000000);
    sub_20E41B8A8(0, 0xC000000000000000);
    v28 = 0;
    v29 = 0xC000000000000000;
    goto LABEL_73;
  }

LABEL_55:
  v30 = 0;
  if (v25 <= 1)
  {
    goto LABEL_52;
  }

LABEL_56:
  if (v25 != 2)
  {
    if (v30)
    {
LABEL_70:

      sub_20E41B8A8(v17, v19);

      sub_20E41B8A8(v17, v19);
      sub_20E41B8A8(v129, v130);
      sub_20E4167F8(v129, v130);
LABEL_71:
      sub_20E4167F8(v17, v19);
LABEL_82:

      sub_20E4167F8(v17, v19);

      goto LABEL_19;
    }

LABEL_72:

    sub_20E41B8A8(v17, v19);

    sub_20E41B8A8(v17, v19);
    sub_20E41B8A8(v129, v130);
    v28 = v129;
    v29 = v130;
LABEL_73:
    sub_20E4167F8(v28, v29);
    goto LABEL_74;
  }

  v36 = *(v129 + 16);
  v35 = *(v129 + 24);
  v33 = __OFSUB__(v35, v36);
  v34 = v35 - v36;
  if (v33)
  {
    goto LABEL_185;
  }

LABEL_58:
  if (v30 != v34)
  {
    goto LABEL_70;
  }

  if (v30 < 1)
  {
    goto LABEL_72;
  }

  if (v23 <= 1)
  {
    if (!v23)
    {
      *__s1 = v17;
      *&__s1[8] = v19;
      __s1[10] = BYTE2(v19);
      __s1[11] = BYTE3(v19);
      __s1[12] = BYTE4(v19);
      __s1[13] = BYTE5(v19);
      if (!v25)
      {
        goto LABEL_101;
      }

      if (v25 != 1)
      {
        v103 = *(v129 + 24);
        v114 = *(v129 + 16);

        sub_20E41B8A8(v17, v19);

        sub_20E41B8A8(v17, v19);
        sub_20E41B8A8(v129, v130);
        v59 = sub_20E4C5FC0();
        if (v59)
        {
          v60 = v59;
          v61 = sub_20E4C5FE0();
          v62 = v114;
          if (__OFSUB__(v114, v61))
          {
            goto LABEL_202;
          }

          v63 = &v114[v60 - v61];
        }

        else
        {
          v63 = 0;
          v62 = v114;
        }

        v117 = v63;
        v33 = __OFSUB__(v103, v62);
        v106 = (v103 - v62);
        if (v33)
        {
          goto LABEL_195;
        }

        v39 = sub_20E4C5FD0();
        v65 = v117;
        if (!v117)
        {
          goto LABEL_221;
        }

        v66 = v106;
        goto LABEL_144;
      }

      if (v119 < v129)
      {
        goto LABEL_192;
      }

      sub_20E41B8A8(v17, v19);

      sub_20E41B8A8(v17, v19);
      sub_20E41B8A8(v129, v130);
      v109 = sub_20E4C5FC0();
      if (!v109)
      {
        goto LABEL_223;
      }

      v37 = sub_20E4C5FE0();
      if (__OFSUB__(v129, v37))
      {
        goto LABEL_198;
      }

      v38 = &v109[v129 - v37];
      v39 = sub_20E4C5FD0();
      if (!v38)
      {
        goto LABEL_222;
      }

      goto LABEL_123;
    }

    if (v17 > v17 >> 32)
    {
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
    }

    sub_20E41B8A8(v17, v19);

    sub_20E41B8A8(v17, v19);
    sub_20E41B8A8(v129, v130);
    v45 = sub_20E4C5FC0();
    if (v45)
    {
      v46 = v45;
      v47 = sub_20E4C5FE0();
      if (__OFSUB__(v17, v47))
      {
        goto LABEL_191;
      }

      v112 = (v17 - v47 + v46);
    }

    else
    {
      v112 = 0;
    }

    sub_20E4C5FD0();
    if (v126 == 2)
    {
      v98 = *(v129 + 24);
      v105 = *(v129 + 16);
      v73 = sub_20E4C5FC0();
      if (v73)
      {
        v74 = v73;
        v75 = sub_20E4C5FE0();
        v76 = v105;
        if (__OFSUB__(v105, v75))
        {
          goto LABEL_206;
        }

        v77 = &v105[v74 - v75];
      }

      else
      {
        v77 = 0;
        v76 = v105;
      }

      v108 = v77;
      v84 = v98 - v76;
      if (__OFSUB__(v98, v76))
      {
        goto LABEL_201;
      }

      v85 = sub_20E4C5FD0();
      if (v85 >= v84)
      {
        v82 = v84;
      }

      else
      {
        v82 = v85;
      }

      v79 = v112;
      if (!v112)
      {
        goto LABEL_220;
      }

      v65 = v108;
      if (!v108)
      {
        goto LABEL_219;
      }

      goto LABEL_175;
    }

    if (v126 == 1)
    {
      if (v119 < v129)
      {
        goto LABEL_200;
      }

      v56 = sub_20E4C5FC0();
      if (v56)
      {
        v57 = v56;
        v58 = sub_20E4C5FE0();
        if (__OFSUB__(v129, v58))
        {
          goto LABEL_207;
        }

        v102 = (v129 - v58 + v57);
      }

      else
      {
        v102 = 0;
      }

      v86 = sub_20E4C5FD0();
      v82 = (v129 >> 32) - v129;
      if (v86 < v118)
      {
        v82 = v86;
      }

      v79 = v112;
      if (!v112)
      {
        goto LABEL_218;
      }

      v65 = v102;
      if (!v102)
      {
        goto LABEL_217;
      }

      goto LABEL_175;
    }

    v71 = v112;
    v72 = v130;
    *__s1 = v129;
    __s1[4] = v120;
    *&__s1[5] = *(&v129 + 5);
    __s1[7] = HIBYTE(v129);
    *&__s1[8] = v130;
    *&__s1[12] = WORD2(v130);
    if (!v112)
    {
      goto LABEL_216;
    }

LABEL_133:
    v51 = memcmp(v71, __s1, BYTE6(v130));
    v52 = v129;
    v53 = v72;
LABEL_134:
    sub_20E4167F8(v52, v53);
    if (v51)
    {
      goto LABEL_71;
    }

    goto LABEL_74;
  }

  if (v23 == 2)
  {
    v110 = *(v17 + 16);

    sub_20E41B8A8(v17, v19);

    sub_20E41B8A8(v17, v19);
    sub_20E41B8A8(v129, v130);
    v42 = sub_20E4C5FC0();
    if (v42)
    {
      v43 = v42;
      v44 = sub_20E4C5FE0();
      if (__OFSUB__(v110, v44))
      {
        goto LABEL_190;
      }

      v111 = &v110[v43 - v44];
    }

    else
    {
      v111 = 0;
    }

    sub_20E4C5FD0();
    if (v126 == 2)
    {
      v97 = *(v129 + 24);
      v104 = *(v129 + 16);
      v67 = sub_20E4C5FC0();
      if (v67)
      {
        v94 = v67;
        v68 = sub_20E4C5FE0();
        v69 = v104;
        if (__OFSUB__(v104, v68))
        {
          goto LABEL_204;
        }

        v70 = &v104[v94 - v68];
      }

      else
      {
        v70 = 0;
        v69 = v104;
      }

      v107 = v70;
      v80 = v97 - v69;
      if (__OFSUB__(v97, v69))
      {
        goto LABEL_199;
      }

      v81 = sub_20E4C5FD0();
      if (v81 >= v80)
      {
        v82 = v80;
      }

      else
      {
        v82 = v81;
      }

      v79 = v111;
      if (!v111)
      {
        goto LABEL_215;
      }

      v65 = v107;
      if (!v107)
      {
        goto LABEL_214;
      }

      goto LABEL_175;
    }

    if (v126 == 1)
    {
      if (v119 < v129)
      {
        goto LABEL_194;
      }

      v54 = sub_20E4C5FC0();
      if (v54)
      {
        v100 = v54;
        v55 = sub_20E4C5FE0();
        if (__OFSUB__(v129, v55))
        {
          goto LABEL_205;
        }

        v101 = &v100[v129 - v55];
      }

      else
      {
        v101 = 0;
      }

      v83 = sub_20E4C5FD0();
      v82 = (v129 >> 32) - v129;
      if (v83 < v118)
      {
        v82 = v83;
      }

      v79 = v111;
      if (!v111)
      {
        goto LABEL_213;
      }

      v65 = v101;
      if (!v101)
      {
        goto LABEL_212;
      }

LABEL_175:
      if (v79 == v65)
      {
        v28 = v129;
        v29 = v130;
        goto LABEL_73;
      }

      v78 = v82;
LABEL_178:
      v87 = memcmp(v79, v65, v78);
      sub_20E4167F8(v129, v130);
      if (v87)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    v71 = v111;
    v72 = v130;
    *__s1 = v129;
    __s1[4] = v120;
    *&__s1[5] = *(&v129 + 5);
    __s1[7] = HIBYTE(v129);
    *&__s1[8] = v130;
    *&__s1[12] = WORD2(v130);
    if (!v111)
    {
      goto LABEL_211;
    }

    goto LABEL_133;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v25)
  {
LABEL_101:
    __s2 = v129;
    v134 = v120;
    v135 = *(&v129 + 5);
    v136 = HIBYTE(v129);
    v137 = v130;
    v138 = WORD2(v130);

    sub_20E41B8A8(v17, v19);

    sub_20E41B8A8(v17, v19);
    sub_20E41B8A8(v129, v130);
    v51 = memcmp(__s1, &__s2, BYTE6(v130));
    v52 = v129;
    v53 = v130;
    goto LABEL_134;
  }

  if (v25 == 2)
  {
    v99 = *(v129 + 24);
    v113 = *(v129 + 16);

    sub_20E41B8A8(v17, v19);

    sub_20E41B8A8(v17, v19);
    sub_20E41B8A8(v129, v130);
    v48 = sub_20E4C5FC0();
    if (v48)
    {
      v95 = v48;
      v49 = sub_20E4C5FE0();
      v50 = v113;
      if (__OFSUB__(v113, v49))
      {
        goto LABEL_203;
      }

      v96 = &v113[v95 - v49];
    }

    else
    {
      v96 = 0;
      v50 = v113;
    }

    v116 = (v99 - v50);
    if (__OFSUB__(v99, v50))
    {
      goto LABEL_196;
    }

    v39 = sub_20E4C5FD0();
    v65 = v96;
    if (!v96)
    {
      goto LABEL_210;
    }

    v66 = v116;
    goto LABEL_144;
  }

  if (v119 < v129)
  {
    goto LABEL_193;
  }

  sub_20E41B8A8(v17, v19);

  sub_20E41B8A8(v17, v19);
  sub_20E41B8A8(v129, v130);
  v115 = sub_20E4C5FC0();
  if (v115)
  {
    v64 = sub_20E4C5FE0();
    if (__OFSUB__(v129, v64))
    {
      goto LABEL_197;
    }

    v38 = &v115[v129 - v64];
    v39 = sub_20E4C5FD0();
    if (!v38)
    {
      goto LABEL_209;
    }

LABEL_123:
    v65 = v38;
    v66 = (v129 >> 32) - v129;
LABEL_144:
    if (v39 >= v66)
    {
      v78 = v66;
    }

    else
    {
      v78 = v39;
    }

    v79 = __s1;
    goto LABEL_178;
  }

  sub_20E4C5FD0();
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
LABEL_223:
  result = sub_20E4C5FD0();
  __break(1u);
  return result;
}

void sub_20E4895E4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = a3;
  v141 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v138 = a3 + 56;
LABEL_2:
  v109 = v8;
  while (1)
  {
LABEL_5:
    v9 = v5[3];
    v10 = v5[4];
    if (!v10)
    {
      v12 = (v5[2] + 64) >> 6;
      v13 = v5[3];
      while (1)
      {
        v11 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v11 >= v12)
        {
          if (v12 <= v9 + 1)
          {
            v90 = v9 + 1;
          }

          else
          {
            v90 = (v5[2] + 64) >> 6;
          }

          v5[3] = v90 - 1;
          v5[4] = 0;

          sub_20E487DBC(a1, a2, v109, v6, &qword_27C8CF298, &qword_20E4C95D8, sub_20E42E740);
          goto LABEL_176;
        }

        v10 = *(v5[1] + 8 * v11);
        ++v13;
        if (v10)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
    }

    v11 = v5[3];
LABEL_11:
    v14 = (*(*v5 + 48) + 48 * (__clz(__rbit64(v10)) | (v11 << 6)));
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v19 = v14[5];
    v124 = v14[4];
    v5[3] = v11;
    v5[4] = (v10 - 1) & v10;
    v20 = *(v6 + 40);
    sub_20E4C69C0();
    v136 = v15;
    sub_20E4C69E0();
    if (v15)
    {

      sub_20E41B8A8(v17, v18);

      sub_20E4C6530();
    }

    else
    {
      sub_20E41B8A8(v17, v18);
    }

    v132 = v18 >> 60;
    if (v18 >> 60 == 15)
    {
      sub_20E4C69E0();
      v125 = v19;
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_20E4C69E0();
      sub_20E4C6130();
      v125 = v19;
      if (v19)
      {
LABEL_16:
        sub_20E4C69E0();
        sub_20E4C6530();
        goto LABEL_19;
      }
    }

    sub_20E4C69E0();
LABEL_19:
    v21 = sub_20E4C69F0();
    v6 = a3;
    v22 = -1 << *(a3 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if (((1 << v23) & *(v138 + 8 * (v23 >> 6))) != 0)
    {
      break;
    }

    sub_20E4167F8(v17, v18);
LABEL_4:
  }

  v133 = v16;
  v137 = ~v22;
  v123 = v18 >> 62;
  if (v17)
  {
    v26 = 0;
  }

  else
  {
    v26 = v18 == 0xC000000000000000;
  }

  v27 = !v26;
  v120 = v27;
  v113 = HIDWORD(v17);
  v28 = __OFSUB__(HIDWORD(v17), v17);
  v118 = v28;
  v117 = HIDWORD(v17) - v17;
  v119 = BYTE6(v18);
  v114 = v17;
  v111 = (v17 >> 32) - v17;
  v112 = v17 >> 32;
  v29 = v136;
  v121 = v17;
  v122 = v18;
  while (1)
  {
    v30 = (*(v6 + 48) + 48 * v23);
    v31 = v30[1];
    v32 = v30[2];
    v34 = v30[3];
    v33 = v30[4];
    v35 = v30[5];
    if (v31)
    {
      if (!v29)
      {
        goto LABEL_32;
      }

      if (*v30 != v133 || v31 != v29)
      {
        __s1c = v23;
        v134 = v30[4];
        v37 = v6;
        v38 = v25;
        v39 = v24;
        v40 = v30[3];
        v41 = v30[2];
        v42 = v17;
        v43 = v18;
        v44 = v30[5];
        v45 = sub_20E4C6910();
        v35 = v44;
        v18 = v43;
        v17 = v42;
        v32 = v41;
        v34 = v40;
        v24 = v39;
        v25 = v38;
        v6 = v37;
        v33 = v134;
        v23 = __s1c;
        v29 = v136;
        if ((v45 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v29)
    {
      goto LABEL_32;
    }

    if (v34 >> 60 == 15)
    {
      if (v132 <= 0xE)
      {
        goto LABEL_30;
      }

      v135 = v33;
      v46 = v35;

      sub_20E41B8A8(v32, v34);
      v131 = v46;

      sub_20E41B8A8(v32, v34);
      sub_20E41B8A8(v17, v18);
      goto LABEL_82;
    }

    if (v132 > 0xE)
    {
LABEL_30:
      sub_20E41B8A8(v32, v34);
      sub_20E41B8A8(v17, v18);
      sub_20E4167F8(v32, v34);
      sub_20E4167F8(v17, v18);
      goto LABEL_31;
    }

    v47 = v34 >> 62;
    v131 = v35;
    if (v34 >> 62 != 3)
    {
      break;
    }

    if (v32)
    {
      v48 = 0;
    }

    else
    {
      v48 = v34 == 0xC000000000000000;
    }

    v49 = v123;
    v51 = !v48 || v123 < 3;
    if ((v51 | v120))
    {
      goto LABEL_68;
    }

    v135 = v33;

    sub_20E41B8A8(0, 0xC000000000000000);

    sub_20E41B8A8(0, 0xC000000000000000);
    sub_20E41B8A8(0, 0xC000000000000000);
    v52 = 0;
    v53 = 0xC000000000000000;
LABEL_81:
    sub_20E4167F8(v52, v53);
LABEL_82:
    sub_20E4167F8(v32, v34);
LABEL_83:
    if (v131)
    {
      v6 = a3;
      if (!v125)
      {

        sub_20E4167F8(v32, v34);

        goto LABEL_94;
      }

      if (v135 != v124 || v131 != v125)
      {
        v62 = sub_20E4C6910();

        sub_20E4167F8(v32, v34);

        if ((v62 & 1) == 0)
        {
          v6 = a3;
LABEL_94:
          v17 = v121;
          v18 = v122;
          goto LABEL_31;
        }

        sub_20E4167F8(v121, v122);

        v6 = a3;
LABEL_168:
        v89 = a1[v24];
        a1[v24] = v89 & ~v25;
        v5 = a5;
        if ((v89 & v25) == 0)
        {
          goto LABEL_5;
        }

        v8 = v109 - 1;
        if (__OFSUB__(v109, 1))
        {
          goto LABEL_193;
        }

        if (v109 == 1)
        {
LABEL_176:
          v91 = *MEMORY[0x277D85DE8];
          return;
        }

        goto LABEL_2;
      }

      sub_20E4167F8(v32, v34);

      sub_20E4167F8(v121, v122);
LABEL_167:

      goto LABEL_168;
    }

    sub_20E4167F8(v32, v34);
    v6 = a3;
    if (!v125)
    {

      sub_20E4167F8(v17, v18);
      goto LABEL_167;
    }

LABEL_31:
    v29 = v136;
LABEL_32:
    v23 = (v23 + 1) & v137;
    v24 = v23 >> 6;
    v25 = 1 << v23;
    if ((*(v138 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
    {

      sub_20E4167F8(v17, v18);
      v5 = a5;
      goto LABEL_4;
    }
  }

  v49 = v123;
  if (v47 > 1)
  {
    if (v47 != 2)
    {
LABEL_68:
      v54 = 0;
      if (v49 > 1)
      {
        goto LABEL_69;
      }

      goto LABEL_65;
    }

    v56 = *(v32 + 16);
    v55 = *(v32 + 24);
    v57 = __OFSUB__(v55, v56);
    v54 = v55 - v56;
    if (v57)
    {
      goto LABEL_181;
    }

    if (v123 <= 1)
    {
      goto LABEL_65;
    }

    goto LABEL_69;
  }

  if (v47)
  {
    LODWORD(v54) = HIDWORD(v32) - v32;
    if (__OFSUB__(HIDWORD(v32), v32))
    {
      goto LABEL_180;
    }

    v54 = v54;
    if (v123 <= 1)
    {
      goto LABEL_65;
    }

LABEL_69:
    if (v49 == 2)
    {
      v60 = *(v17 + 16);
      v59 = *(v17 + 24);
      v57 = __OFSUB__(v59, v60);
      v58 = v59 - v60;
      if (v57)
      {
        goto LABEL_179;
      }

      goto LABEL_71;
    }

    if (v54)
    {
LABEL_77:

      sub_20E41B8A8(v32, v34);

      sub_20E41B8A8(v32, v34);
      sub_20E41B8A8(v17, v18);
      sub_20E4167F8(v17, v18);
      sub_20E4167F8(v32, v34);
LABEL_78:

      sub_20E4167F8(v32, v34);

      v6 = a3;
      goto LABEL_31;
    }

    goto LABEL_79;
  }

  v54 = BYTE6(v34);
  if (v123 > 1)
  {
    goto LABEL_69;
  }

LABEL_65:
  v58 = v119;
  if (v49)
  {
    v58 = v117;
    if (v118)
    {
      goto LABEL_178;
    }
  }

LABEL_71:
  if (v54 != v58)
  {
    goto LABEL_77;
  }

  if (v54 < 1)
  {
LABEL_79:
    v135 = v33;

    sub_20E41B8A8(v32, v34);

    sub_20E41B8A8(v32, v34);
    sub_20E41B8A8(v17, v18);
    goto LABEL_80;
  }

  v135 = v33;
  if (v47 > 1)
  {
    if (v47 != 2)
    {
      *&v140[6] = 0;
      *v140 = 0;

      sub_20E41B8A8(v32, v34);

      sub_20E41B8A8(v32, v34);
      sub_20E41B8A8(v17, v18);
LABEL_107:
      sub_20E47FDB4(v140, v17, v18, &v139);
      if (v115)
      {
        goto LABEL_203;
      }

      sub_20E4167F8(v17, v18);
      v67 = v139;
      sub_20E4167F8(v32, v34);
      if (!v67)
      {
        goto LABEL_78;
      }

      goto LABEL_83;
    }

    __s1 = *(v32 + 16);

    sub_20E41B8A8(v32, v34);

    sub_20E41B8A8(v32, v34);
    sub_20E41B8A8(v17, v18);
    v63 = sub_20E4C5FC0();
    if (v63)
    {
      __s2 = v63;
      v64 = sub_20E4C5FE0();
      if (__OFSUB__(__s1, v64))
      {
        goto LABEL_183;
      }

      __s1a = &__s1[__s2 - v64];
    }

    else
    {
      __s1a = 0;
    }

    sub_20E4C5FD0();
    if (v123 != 2)
    {
      if (v123 == 1)
      {
        if (v112 < v114)
        {
          goto LABEL_185;
        }

        v68 = sub_20E4C5FC0();
        if (v68)
        {
          __s2b = v68;
          v69 = sub_20E4C5FE0();
          if (__OFSUB__(v114, v69))
          {
            goto LABEL_190;
          }

          __s2c = &__s2b[v114 - v69];
        }

        else
        {
          __s2c = 0;
        }

        v85 = sub_20E4C5FD0();
        v84 = v111;
        if (v85 < v111)
        {
          v84 = v85;
        }

        v76 = __s1a;
        if (!__s1a)
        {
          goto LABEL_201;
        }

        v81 = __s2c;
        if (!__s2c)
        {
          goto LABEL_199;
        }

        goto LABEL_159;
      }

      v76 = __s1a;
      *v140 = v17;
      v140[2] = BYTE2(v17);
      v140[3] = BYTE3(v17);
      v140[4] = v113;
      v140[5] = BYTE5(v17);
      v140[6] = BYTE6(v17);
      v140[7] = HIBYTE(v17);
      *&v140[8] = v18;
      v140[10] = BYTE2(v18);
      v140[11] = BYTE3(v18);
      v140[12] = BYTE4(v18);
      v140[13] = BYTE5(v18);
      if (!__s1a)
      {
        goto LABEL_198;
      }

      goto LABEL_133;
    }

    v96 = *(v17 + 24);
    __s2f = *(v17 + 16);
    v72 = sub_20E4C5FC0();
    if (v72)
    {
      v92 = v72;
      v73 = sub_20E4C5FE0();
      v74 = __s2f;
      if (__OFSUB__(__s2f, v73))
      {
        goto LABEL_189;
      }

      v75 = &__s2f[v92 - v73];
    }

    else
    {
      v75 = 0;
      v74 = __s2f;
    }

    v94 = v75;
    __s2h = (v96 - v74);
    if (__OFSUB__(v96, v74))
    {
      goto LABEL_186;
    }

    v83 = sub_20E4C5FD0();
    v84 = __s2h;
    if (v83 < __s2h)
    {
      v84 = v83;
    }

    v76 = __s1a;
    if (!__s1a)
    {
      goto LABEL_202;
    }

    v81 = v94;
    if (!v94)
    {
      goto LABEL_200;
    }

LABEL_159:
    if (v76 != v81)
    {
      v82 = v84;
      goto LABEL_161;
    }

LABEL_80:
    v52 = v17;
    v53 = v18;
    goto LABEL_81;
  }

  if (!v47)
  {
    *v140 = v32;
    *&v140[8] = v34;
    v140[10] = BYTE2(v34);
    v140[11] = BYTE3(v34);
    v140[12] = BYTE4(v34);
    v140[13] = BYTE5(v34);

    sub_20E41B8A8(v32, v34);

    sub_20E41B8A8(v32, v34);
    sub_20E41B8A8(v17, v18);
    goto LABEL_107;
  }

  if (v32 > v32 >> 32)
  {
    goto LABEL_182;
  }

  sub_20E41B8A8(v32, v34);

  sub_20E41B8A8(v32, v34);
  sub_20E41B8A8(v17, v18);
  v65 = sub_20E4C5FC0();
  if (v65)
  {
    __s2a = v65;
    v66 = sub_20E4C5FE0();
    if (__OFSUB__(v32, v66))
    {
      goto LABEL_184;
    }

    __s1b = &__s2a[v32 - v66];
  }

  else
  {
    __s1b = 0;
  }

  sub_20E4C5FD0();
  if (v123 != 2)
  {
    if (v123 == 1)
    {
      if (v112 < v114)
      {
        goto LABEL_187;
      }

      v70 = sub_20E4C5FC0();
      if (v70)
      {
        __s2d = v70;
        v71 = sub_20E4C5FE0();
        if (__OFSUB__(v114, v71))
        {
          goto LABEL_192;
        }

        __s2e = &__s2d[v114 - v71];
      }

      else
      {
        __s2e = 0;
      }

      v87 = sub_20E4C5FD0();
      v84 = v111;
      if (v87 < v111)
      {
        v84 = v87;
      }

      v76 = __s1b;
      if (!__s1b)
      {
        goto LABEL_197;
      }

      v81 = __s2e;
      if (!__s2e)
      {
        goto LABEL_196;
      }

      goto LABEL_159;
    }

    v76 = __s1b;
    *v140 = v17;
    v140[2] = BYTE2(v17);
    v140[3] = BYTE3(v17);
    v140[4] = v113;
    v140[5] = BYTE5(v17);
    v140[6] = BYTE6(v17);
    v140[7] = HIBYTE(v17);
    *&v140[8] = v18;
    v140[10] = BYTE2(v18);
    v140[11] = BYTE3(v18);
    v140[12] = BYTE4(v18);
    v140[13] = BYTE5(v18);
    if (!__s1b)
    {
      goto LABEL_195;
    }

LABEL_133:
    v81 = v140;
    v82 = v119;
LABEL_161:
    v88 = memcmp(v76, v81, v82);
    sub_20E4167F8(v17, v18);
    sub_20E4167F8(v32, v34);
    if (v88)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  v97 = *(v17 + 24);
  __s2g = *(v17 + 16);
  v77 = sub_20E4C5FC0();
  if (v77)
  {
    v93 = v77;
    v78 = sub_20E4C5FE0();
    v79 = __s2g;
    if (__OFSUB__(__s2g, v78))
    {
      goto LABEL_191;
    }

    v80 = &__s2g[v93 - v78];
  }

  else
  {
    v80 = 0;
    v79 = __s2g;
  }

  v95 = v80;
  __s2i = (v97 - v79);
  if (__OFSUB__(v97, v79))
  {
    goto LABEL_188;
  }

  v86 = sub_20E4C5FD0();
  v84 = __s2i;
  if (v86 < __s2i)
  {
    v84 = v86;
  }

  v76 = __s1b;
  if (!__s1b)
  {
    goto LABEL_194;
  }

  v81 = v95;
  if (v95)
  {
    goto LABEL_159;
  }

  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:

  __break(1u);
}

unint64_t sub_20E48A3D0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_20E4C67C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v29 = v3;
      v30 = v4;
      v28 = (v9 + 1) & v7;
      do
      {
        v12 = *(v3 + 40);
        v13 = (*(v3 + 48) + 48 * v6);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v19 = v13[4];
        v18 = v13[5];
        sub_20E4C69C0();
        sub_20E4C69E0();
        if (v15)
        {

          sub_20E41B8A8(v16, v17);

          sub_20E4C6530();
        }

        else
        {
          sub_20E41B8A8(v16, v17);
        }

        if (v17 >> 60 == 15)
        {
          sub_20E4C69E0();
          if (v18)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_20E4C69E0();
          sub_20E4C6130();
          if (v18)
          {
LABEL_11:
            sub_20E4C69E0();
            sub_20E4C6530();
            goto LABEL_14;
          }
        }

        sub_20E4C69E0();
LABEL_14:
        v20 = sub_20E4C69F0();

        sub_20E4167F8(v16, v17);

        v21 = v20 & v7;
        if (v2 >= v28)
        {
          v3 = v29;
          v4 = v30;
          if (v21 < v28)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v3 = v29;
          v4 = v30;
          if (v21 >= v28)
          {
            goto LABEL_19;
          }
        }

        if (v2 >= v21)
        {
LABEL_19:
          v22 = *(v3 + 48);
          v23 = (v22 + 48 * v2);
          v24 = (v22 + 48 * v6);
          if (v2 != v6 || v23 >= v24 + 3)
          {
            v10 = *v24;
            v11 = v24[2];
            v23[1] = v24[1];
            v23[2] = v11;
            *v23 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_20E48A684(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20E4506F8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20E48A790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  v7 = *(a1 + 24);
  *(a2 + 24) = v7;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;

  sub_20E41B8A8(v3, v7);
}

_BYTE *sub_20E48A80C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_20E48A850@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *a3 = *a1;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  v9 = *(a1 + 24);
  *(a3 + 24) = v9;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;

  a2(v5, v9);
}

uint64_t sub_20E48A8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_20E4C5FC0();
  v11 = result;
  if (result)
  {
    result = sub_20E4C5FE0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_20E4C5FD0();
  sub_20E47FDB4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_20E48A994(uint64_t a1, void (*a2)(uint64_t *__return_ptr, _BYTE *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v35 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  for (i = 0; ; i = v13)
  {
    v12 = v9;
    v13 = i;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v15 = __clz(__rbit64(v12)) | (v13 << 6);
    v16 = *(*(a1 + 48) + v15);
    LOBYTE(v15) = *(*(a1 + 56) + v15);
    v39[0] = v16;
    v39[1] = v15;
    a2(&v40, v39);
    v17 = v40;
    if ((v40 & 0xFF00) == 0x200)
    {
LABEL_22:
      sub_20E418D5C();
    }

    v18 = a4;
    v19 = BYTE1(v40);
    v20 = *a5;
    v21 = sub_20E429A8C(v40);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_24;
    }

    v27 = v22;
    if (v20[3] >= v26)
    {
      if ((v18 & 1) == 0)
      {
        v33 = v21;
        sub_20E452328();
        v21 = v33;
      }
    }

    else
    {
      sub_20E450DB0(v26, v18 & 1);
      v28 = *a5;
      v21 = sub_20E429A8C(v17);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_26;
      }
    }

    v9 = (v12 - 1) & v12;
    v30 = *a5;
    if (v27)
    {
      *(v30[7] + v21) &= v19 & 1;
    }

    else
    {
      v30[(v21 >> 6) + 8] |= 1 << v21;
      *(v30[6] + v21) = v17;
      *(v30[7] + v21) = v19;
      v31 = v30[2];
      v25 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v30[2] = v32;
    }

    a4 = 1;
  }

  v14 = i;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v6 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_20E4C6970();
  __break(1u);
  return result;
}

uint64_t sub_20E48ABE4(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v60 = a5;
  v48 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  for (i = 0; ; i = v14)
  {
    v13 = v8;
    v14 = i;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(a1 + 48) + 48 * v16;
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v17 + 40);
    LOBYTE(v16) = *(*(a1 + 56) + v16);
    v50[0] = *v17;
    v50[1] = v18;
    v51 = v19;
    v52 = *(v17 + 24);
    v49 = v52;
    v53 = v20;
    v54 = v16;

    sub_20E41B8A8(v19, v49);

    a2(v55, v50);
    v21 = v51;
    v22 = v52;

    v23 = v22;
    v24 = a4;
    sub_20E4167F8(v21, v23);

    if (*(&v55[0] + 1) == 1)
    {
LABEL_22:
      sub_20E418D5C();
    }

    v57 = v55[0];
    v58 = v55[1];
    v59 = v55[2];
    v25 = v56;
    v26 = *v60;
    v27 = sub_20E429A50(&v57);
    v29 = *(v26 + 16);
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_24;
    }

    v33 = v28;
    if (*(v26 + 24) >= v32)
    {
      if ((v24 & 1) == 0)
      {
        v43 = v27;
        sub_20E452178();
        v27 = v43;
      }
    }

    else
    {
      v34 = v60;
      sub_20E450A48(v32, v24 & 1);
      v35 = *v34;
      v27 = sub_20E429A50(&v57);
      if ((v33 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }
    }

    v8 = (v13 - 1) & v13;
    v37 = *v60;
    if (v33)
    {
      v11 = *(v37[7] + v27);
      v12 = v27;
      sub_20E45CB00(&v57);
      *(v37[7] + v12) = v11 & v25 & 1;
    }

    else
    {
      v37[(v27 >> 6) + 8] |= 1 << v27;
      v38 = (v37[6] + 48 * v27);
      v39 = v57;
      v40 = v59;
      v38[1] = v58;
      v38[2] = v40;
      *v38 = v39;
      *(v37[7] + v27) = v25;
      v41 = v37[2];
      v31 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v31)
      {
        goto LABEL_25;
      }

      v37[2] = v42;
    }

    a4 = 1;
  }

  v15 = i;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v9)
    {
      goto LABEL_22;
    }

    v13 = *(v48 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_20E4C6970();
  __break(1u);
  return result;
}

uint64_t sub_20E48AEF0(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v49 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v46 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  for (i = 0; ; i = v15)
  {
    v14 = v8;
    v15 = i;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(a1 + 48) + 48 * v17;
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 40);
    LOBYTE(v17) = *(*(a1 + 56) + v17);
    v51[0] = *v18;
    v51[1] = v19;
    v52 = v20;
    v53 = *(v18 + 24);
    v50 = v53;
    v54 = v21;
    v55 = v17;

    sub_20E41B8A8(v20, v50);

    a2(v56, v51);
    v22 = v52;
    v23 = v53;

    v24 = v23;
    v25 = a4;
    sub_20E4167F8(v22, v24);

    if (*(&v56[0] + 1) == 1)
    {
LABEL_25:
      sub_20E418D5C();
    }

    v58 = v56[0];
    v59 = v56[1];
    v60 = v56[2];
    v26 = v57;
    v27 = *v61;
    v28 = sub_20E429D80(&v58);
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_27;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((v25 & 1) == 0)
      {
        v44 = v28;
        sub_20E452B30();
        v28 = v44;
      }
    }

    else
    {
      v35 = v61;
      sub_20E451B1C(v33, v25 & 1);
      v36 = *v35;
      v28 = sub_20E429D80(&v58);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_29;
      }
    }

    v8 = (v14 - 1) & v14;
    v38 = *v61;
    if (v34)
    {
      v11 = *(v38[7] + v28);
      v12 = v28;
      sub_20E45CCD0(&v58);
      if (v11 >= v26)
      {
        v13 = v26;
      }

      else
      {
        v13 = v11;
      }

      *(v38[7] + v12) = v13;
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      v39 = (v38[6] + 48 * v28);
      v40 = v58;
      v41 = v60;
      v39[1] = v59;
      v39[2] = v41;
      *v39 = v40;
      *(v38[7] + v28) = v26;
      v42 = v38[2];
      v32 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v32)
      {
        goto LABEL_28;
      }

      v38[2] = v43;
    }

    a4 = 1;
  }

  v16 = i;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(v49 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_20E4C6970();
  __break(1u);
  return result;
}

uint64_t sub_20E48B1FC(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v49 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v46 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  for (i = 0; ; i = v15)
  {
    v14 = v8;
    v15 = i;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(a1 + 48) + 48 * v17;
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 40);
    LOBYTE(v17) = *(*(a1 + 56) + v17);
    v51[0] = *v18;
    v51[1] = v19;
    v52 = v20;
    v53 = *(v18 + 24);
    v50 = v53;
    v54 = v21;
    v55 = v17;

    sub_20E41B8A8(v20, v50);

    a2(v56, v51);
    v22 = v52;
    v23 = v53;

    v24 = v23;
    v25 = a4;
    sub_20E4167F8(v22, v24);

    if (*(&v56[0] + 1) == 1)
    {
LABEL_25:
      sub_20E418D5C();
    }

    v58 = v56[0];
    v59 = v56[1];
    v60 = v56[2];
    v26 = v57;
    v27 = *v61;
    v28 = sub_20E429D80(&v58);
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_27;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((v25 & 1) == 0)
      {
        v44 = v28;
        sub_20E452B30();
        v28 = v44;
      }
    }

    else
    {
      v35 = v61;
      sub_20E451B1C(v33, v25 & 1);
      v36 = *v35;
      v28 = sub_20E429D80(&v58);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_29;
      }
    }

    v8 = (v14 - 1) & v14;
    v38 = *v61;
    if (v34)
    {
      v11 = *(v38[7] + v28);
      v12 = v28;
      sub_20E45CCD0(&v58);
      if (v26 <= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v26;
      }

      *(v38[7] + v12) = v13;
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      v39 = (v38[6] + 48 * v28);
      v40 = v58;
      v41 = v60;
      v39[1] = v59;
      v39[2] = v41;
      *v39 = v40;
      *(v38[7] + v28) = v26;
      v42 = v38[2];
      v32 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v32)
      {
        goto LABEL_28;
      }

      v38[2] = v43;
    }

    a4 = 1;
  }

  v16 = i;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(v49 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_20E4C6970();
  __break(1u);
  return result;
}

uint64_t sub_20E48B508(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v49 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v46 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  for (i = 0; ; i = v15)
  {
    v14 = v8;
    v15 = i;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(a1 + 48) + 48 * v17;
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 40);
    LOBYTE(v17) = *(*(a1 + 56) + v17);
    v51[0] = *v18;
    v51[1] = v19;
    v52 = v20;
    v53 = *(v18 + 24);
    v50 = v53;
    v54 = v21;
    v55 = v17;

    sub_20E41B8A8(v20, v50);

    a2(v56, v51);
    v22 = v52;
    v23 = v53;

    v24 = v23;
    v25 = a4;
    sub_20E4167F8(v22, v24);

    if (*(&v56[0] + 1) == 1)
    {
LABEL_25:
      sub_20E418D5C();
    }

    v58 = v56[0];
    v59 = v56[1];
    v60 = v56[2];
    v26 = v57;
    v27 = *v61;
    v28 = sub_20E429A50(&v58);
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_27;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((v25 & 1) == 0)
      {
        v44 = v28;
        sub_20E452B08();
        v28 = v44;
      }
    }

    else
    {
      v35 = v61;
      sub_20E451AF4(v33, v25 & 1);
      v36 = *v35;
      v28 = sub_20E429A50(&v58);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_29;
      }
    }

    v8 = (v14 - 1) & v14;
    v38 = *v61;
    if (v34)
    {
      v11 = *(v38[7] + v28);
      v12 = v28;
      sub_20E45CB00(&v58);
      if (v11 >= v26)
      {
        v13 = v26;
      }

      else
      {
        v13 = v11;
      }

      *(v38[7] + v12) = v13;
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      v39 = (v38[6] + 48 * v28);
      v40 = v58;
      v41 = v60;
      v39[1] = v59;
      v39[2] = v41;
      *v39 = v40;
      *(v38[7] + v28) = v26;
      v42 = v38[2];
      v32 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v32)
      {
        goto LABEL_28;
      }

      v38[2] = v43;
    }

    a4 = 1;
  }

  v16 = i;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(v49 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_20E4C6970();
  __break(1u);
  return result;
}

uint64_t sub_20E48B814(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v49 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v46 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  for (i = 0; ; i = v15)
  {
    v14 = v8;
    v15 = i;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(a1 + 48) + 48 * v17;
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 40);
    LOBYTE(v17) = *(*(a1 + 56) + v17);
    v51[0] = *v18;
    v51[1] = v19;
    v52 = v20;
    v53 = *(v18 + 24);
    v50 = v53;
    v54 = v21;
    v55 = v17;

    sub_20E41B8A8(v20, v50);

    a2(v56, v51);
    v22 = v52;
    v23 = v53;

    v24 = v23;
    v25 = a4;
    sub_20E4167F8(v22, v24);

    if (*(&v56[0] + 1) == 1)
    {
LABEL_25:
      sub_20E418D5C();
    }

    v58 = v56[0];
    v59 = v56[1];
    v60 = v56[2];
    v26 = v57;
    v27 = *v61;
    v28 = sub_20E429A50(&v58);
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_27;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((v25 & 1) == 0)
      {
        v44 = v28;
        sub_20E452B08();
        v28 = v44;
      }
    }

    else
    {
      v35 = v61;
      sub_20E451AF4(v33, v25 & 1);
      v36 = *v35;
      v28 = sub_20E429A50(&v58);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_29;
      }
    }

    v8 = (v14 - 1) & v14;
    v38 = *v61;
    if (v34)
    {
      v11 = *(v38[7] + v28);
      v12 = v28;
      sub_20E45CB00(&v58);
      if (v26 <= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v26;
      }

      *(v38[7] + v12) = v13;
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      v39 = (v38[6] + 48 * v28);
      v40 = v58;
      v41 = v60;
      v39[1] = v59;
      v39[2] = v41;
      *v39 = v40;
      *(v38[7] + v28) = v26;
      v42 = v38[2];
      v32 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v32)
      {
        goto LABEL_28;
      }

      v38[2] = v43;
    }

    a4 = 1;
  }

  v16 = i;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(v49 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_20E4C6970();
  __break(1u);
  return result;
}

uint64_t sub_20E48BB20(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v49 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v46 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  for (i = 0; ; i = v15)
  {
    v14 = v8;
    v15 = i;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(a1 + 48) + 48 * v17;
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 40);
    LOBYTE(v17) = *(*(a1 + 56) + v17);
    v51[0] = *v18;
    v51[1] = v19;
    v52 = v20;
    v53 = *(v18 + 24);
    v50 = v53;
    v54 = v21;
    v55 = v17;

    sub_20E41B8A8(v20, v50);

    a2(v56, v51);
    v22 = v52;
    v23 = v53;

    v24 = v23;
    v25 = a4;
    sub_20E4167F8(v22, v24);

    if (*(&v56[0] + 1) == 1)
    {
LABEL_25:
      sub_20E418D5C();
    }

    v58 = v56[0];
    v59 = v56[1];
    v60 = v56[2];
    v26 = v57;
    v27 = *v61;
    v28 = sub_20E429D44(&v58);
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_27;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((v25 & 1) == 0)
      {
        v44 = v28;
        sub_20E452AE0();
        v28 = v44;
      }
    }

    else
    {
      v35 = v61;
      sub_20E451ACC(v33, v25 & 1);
      v36 = *v35;
      v28 = sub_20E429D44(&v58);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_29;
      }
    }

    v8 = (v14 - 1) & v14;
    v38 = *v61;
    if (v34)
    {
      v11 = *(v38[7] + v28);
      v12 = v28;
      sub_20E45CC20(&v58);
      if (v11 >= v26)
      {
        v13 = v26;
      }

      else
      {
        v13 = v11;
      }

      *(v38[7] + v12) = v13;
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      v39 = (v38[6] + 48 * v28);
      v40 = v58;
      v41 = v60;
      v39[1] = v59;
      v39[2] = v41;
      *v39 = v40;
      *(v38[7] + v28) = v26;
      v42 = v38[2];
      v32 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v32)
      {
        goto LABEL_28;
      }

      v38[2] = v43;
    }

    a4 = 1;
  }

  v16 = i;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(v49 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_20E4C6970();
  __break(1u);
  return result;
}

uint64_t sub_20E48BE2C(uint64_t a1, void (*a2)(_OWORD *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v49 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v46 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  for (i = 0; ; i = v15)
  {
    v14 = v8;
    v15 = i;
    if (!v8)
    {
      break;
    }

LABEL_15:
    v17 = __clz(__rbit64(v14)) | (v15 << 6);
    v18 = *(a1 + 48) + 48 * v17;
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 40);
    LOBYTE(v17) = *(*(a1 + 56) + v17);
    v51[0] = *v18;
    v51[1] = v19;
    v52 = v20;
    v53 = *(v18 + 24);
    v50 = v53;
    v54 = v21;
    v55 = v17;

    sub_20E41B8A8(v20, v50);

    a2(v56, v51);
    v22 = v52;
    v23 = v53;

    v24 = v23;
    v25 = a4;
    sub_20E4167F8(v22, v24);

    if (*(&v56[0] + 1) == 1)
    {
LABEL_25:
      sub_20E418D5C();
    }

    v58 = v56[0];
    v59 = v56[1];
    v60 = v56[2];
    v26 = v57;
    v27 = *v61;
    v28 = sub_20E429D44(&v58);
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_27;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((v25 & 1) == 0)
      {
        v44 = v28;
        sub_20E452AE0();
        v28 = v44;
      }
    }

    else
    {
      v35 = v61;
      sub_20E451ACC(v33, v25 & 1);
      v36 = *v35;
      v28 = sub_20E429D44(&v58);
      if ((v34 & 1) != (v37 & 1))
      {
        goto LABEL_29;
      }
    }

    v8 = (v14 - 1) & v14;
    v38 = *v61;
    if (v34)
    {
      v11 = *(v38[7] + v28);
      v12 = v28;
      sub_20E45CC20(&v58);
      if (v26 <= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v26;
      }

      *(v38[7] + v12) = v13;
    }

    else
    {
      v38[(v28 >> 6) + 8] |= 1 << v28;
      v39 = (v38[6] + 48 * v28);
      v40 = v58;
      v41 = v60;
      v39[1] = v59;
      v39[2] = v41;
      *v39 = v40;
      *(v38[7] + v28) = v26;
      v42 = v38[2];
      v32 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v32)
      {
        goto LABEL_28;
      }

      v38[2] = v43;
    }

    a4 = 1;
  }

  v16 = i;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v9)
    {
      goto LABEL_25;
    }

    v14 = *(v49 + 8 * v15);
    ++v16;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_20E4C6970();
  __break(1u);
  return result;
}

uint64_t sub_20E48C190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void)@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 24);
  if (a3(a1, a2, v8, *(v4 + 56)))
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  return (*(*(v8 - 8) + 16))(a4, v9, v8);
}

uint64_t sub_20E48C224(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }
  }
}

uint64_t sub_20E48C270()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  return sub_20E4C6480() & 1;
}

uint64_t sub_20E48C2A8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_20E4C5FC0();
  v8 = result;
  if (result)
  {
    result = sub_20E4C5FE0();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_20E4C5FD0();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_20E48C360(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {

    sub_20E41B8A8(a3, a4);
  }

  return result;
}

uint64_t sub_20E48C3C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {

    sub_20E4167F8(a3, a4);
  }

  return result;
}

unint64_t sub_20E48C42C()
{
  result = qword_27C8CF4B0;
  if (!qword_27C8CF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF4B0);
  }

  return result;
}

uint64_t sub_20E48C5A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  return swift_getWitnessTable();
}

unint64_t sub_20E48C65C()
{
  result = qword_27C8CF4B8;
  if (!qword_27C8CF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF4B8);
  }

  return result;
}

unint64_t sub_20E48C6C0()
{
  result = qword_27C8CF4C0;
  if (!qword_27C8CF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF4C0);
  }

  return result;
}

uint64_t sub_20E48C804(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }
  }
}

uint64_t NewsSettings.Name.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E48C93C()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E48C9C0()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E48CA1C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  *a2 = v5 != 0;
  return result;
}

uint64_t NewsSettings.denyNews.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C74788 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C74790, v1, v2, v3, v4);
}

uint64_t sub_20E48CB3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C74788 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C74790, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E48CBD4(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C74788 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C74790, v4, v5, v6, v7);
}

void NewsSettings.denyNews.setter(unsigned __int8 a1)
{
  if (qword_280C74788 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C74790, v2, v3, v4, v5);
}

void (*NewsSettings.denyNews.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74788 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74790, v3, v4, v5, v6);
  return sub_20E48CD8C;
}

uint64_t NewsSettings.effectiveDenyNews.getter()
{
  if (qword_280C74788 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C74790);
}

void sub_20E48CE04()
{
  byte_280C74790 = 0;
  strcpy(&qword_280C74798, "news.denyNews");
  unk_280C747A6 = -4864;
  qword_280C747C0 = &type metadata for BoolCombineOperator;
  unk_280C747C8 = &protocol witness table for BoolCombineOperator;
  byte_280C747A8 = 0;
  word_280C747D0 = 256;
  byte_280C747D2 = 0;
  qword_280C747D8 = 0;
  byte_280C747E0 = 1;
}

uint64_t static NewsSettings.denyNews.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280C74788 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_20E431094(&byte_280C74790, v2);
}

uint64_t NewsSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_20E4C6A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v24[2] = *v1;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20E4C7720;
  v18 = qword_280C74788;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_280C747A0;
  *(v17 + 32) = qword_280C74798;
  *(v17 + 40) = v19;

  v20 = sub_20E41BCBC(&byte_280C74790, v13, v14, v15, v16);
  v21 = sub_20E41FA28(&byte_280C74790);
  *(v17 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v17 + 48) = v20;
  *(v17 + 49) = v21;
  v22 = sub_20E4C6A00();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_20E4C6A20();
}

unint64_t sub_20E48D148()
{
  result = qword_27C8CF4C8;
  if (!qword_27C8CF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF4C8);
  }

  return result;
}

unint64_t sub_20E48D1A0()
{
  result = qword_27C8CF4D0;
  if (!qword_27C8CF4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF4D8, &qword_20E4CA798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF4D0);
  }

  return result;
}

ManagedSettings::AllowedClientSettings::Name_optional __swiftcall AllowedClientSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AllowedClientSettings.Name.rawValue.getter()
{
  v1 = 0xD000000000000017;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

uint64_t sub_20E48D2E8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000017;
  v3 = *a1;
  v4 = "allowedClient.allowedClient";
  if (v3 == 1)
  {
    v5 = 0xD00000000000001FLL;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v3 == 1)
  {
    v6 = "allowedClient.allowedClient";
  }

  else
  {
    v6 = "allowedClient.denyMDMEnrollment";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001BLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "hSolvingKeyboard";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = "allowedClient.denyMDMEnrollment";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000001BLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "hSolvingKeyboard";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E48D3C0()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E48D45C()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E48D4E4()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E48D588(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "allowedClient.allowedClient";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000001FLL;
  }

  else
  {
    v3 = "allowedClient.denyMDMEnrollment";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v4 = "hSolvingKeyboard";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

double AllowedClientSettings.allowedClient.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C74970 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C749A8;
    v6 = qword_280C749B0;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C749E2;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  static Application.value(from:)(v8, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEDD8, &qword_20E4CA860);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a1 = xmmword_20E4C76F0;
    a1[1] = 0u;
    a1[2] = 0u;
  }

  return result;
}

double sub_20E48D760@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v10 = *(a1 + 1);
  AllowedClientSettings.allowedClient.getter(v6);
  v4 = v6[1];
  *a2 = v6[0];
  a2[1] = v4;
  result = *&v7;
  a2[2] = v7;
  return result;
}

void sub_20E48D7B4(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  if (qword_280C74970 != -1)
  {
    v3 = a2;
    swift_once();
    a2 = v3;
  }

  sub_20E41CC8C(v4, &qword_280C74978, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
}

uint64_t AllowedClientSettings.allowedClient.setter(__int128 *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  if (qword_280C74970 != -1)
  {
    swift_once();
  }

  sub_20E41CC8C(v4, &qword_280C74978, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  return sub_20E48DC2C(v4);
}

void (*AllowedClientSettings.allowedClient.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  *a1 = v3;
  *(v3 + 192) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 1);
  AllowedClientSettings.allowedClient.getter((v3 + 96));
  return sub_20E48D948;
}

void sub_20E48D948(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 112);
    *v2 = *(v2 + 96);
    *(v2 + 16) = v3;
    *(v2 + 32) = *(v2 + 128);
    sub_20E424E74(v2, v2 + 144, &qword_27C8CEDD8, &qword_20E4CA860);
    if (qword_280C74970 != -1)
    {
      swift_once();
    }

    sub_20E41CC8C(v2, &qword_280C74978, **(v2 + 192), *(*(v2 + 192) + 8), *(*(v2 + 192) + 16), *(*(v2 + 192) + 24));
    sub_20E48DC2C(v2);
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    sub_20E48DC94(*(v2 + 96), *(v2 + 104), *(v2 + 112), *(v2 + 120));
  }

  else
  {
    v6 = *(v2 + 112);
    *(v2 + 48) = *(v2 + 96);
    *(v2 + 64) = v6;
    *(v2 + 80) = *(v2 + 128);
    if (qword_280C74970 != -1)
    {
      swift_once();
    }

    sub_20E41CC8C((v2 + 48), &qword_280C74978, **(v2 + 192), *(*(v2 + 192) + 8), *(*(v2 + 192) + 16), *(*(v2 + 192) + 24));
    sub_20E48DC2C(v2 + 48);
  }

  free(v2);
}

uint64_t AllowedClientSettings.effectiveAllowedClient.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C74970 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return sub_20E41FC5C(&qword_280C74978, a1);
}

uint64_t sub_20E48DAE4()
{
  if (qword_280C75AC0 != -1)
  {
    swift_once();
  }

  v0 = qword_280C75AD8;
  qword_280C74978 = qword_280C75AC8;
  unk_280C74980 = unk_280C75AD0;
  qword_280C74988 = qword_280C75AD8;
  v2 = unk_280C75AE0;
  *algn_280C74990 = unk_280C75AE0;
  qword_280C749A0 = qword_280C75AF0;
  qword_280C749A8 = 0xD00000000000001BLL;
  qword_280C749B0 = 0x800000020E4CEB70;
  qword_280C749D0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF4A0, &unk_20E4CAA00);
  qword_280C749D8 = sub_20E430A50(&qword_280C72360, &qword_27C8CF4A0, &unk_20E4CAA00);
  byte_280C749B8 = 0;
  word_280C749E0 = 256;
  byte_280C749E2 = 0;
  qword_280C749E8 = 0;
  byte_280C749F0 = 1;

  sub_20E41B8A8(v0, v2);
}

uint64_t sub_20E48DC2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEDD8, &qword_20E4CA860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E48DC94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 != 1)
  {

    sub_20E424F94(a3, a4);
  }

  return result;
}

uint64_t static AllowedClientSettings.allowedClient.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C74970 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C74978, v1, &qword_27C8CF4E0, &qword_20E4CA868);
}

uint64_t AllowedClientSettings.denyMDMEnrollment.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C74910 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C74918, v1, v2, v3, v4);
}

uint64_t sub_20E48DE00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C74910 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C74918, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E48DE98(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C74910 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C74918, v4, v5, v6, v7);
}

void AllowedClientSettings.denyMDMEnrollment.setter(unsigned __int8 a1)
{
  if (qword_280C74910 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C74918, v2, v3, v4, v5);
}

void (*AllowedClientSettings.denyMDMEnrollment.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74910 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74918, v3, v4, v5, v6);
  return sub_20E48E050;
}

uint64_t AllowedClientSettings.effectiveDenyMDMEnrollment.getter()
{
  if (qword_280C74910 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C74918);
}

void sub_20E48E0C8()
{
  byte_280C74918 = 0;
  qword_280C74920 = 0xD00000000000001FLL;
  unk_280C74928 = 0x800000020E4CEB90;
  qword_280C74948 = &type metadata for BoolCombineOperator;
  unk_280C74950 = &protocol witness table for BoolCombineOperator;
  byte_280C74930 = 0;
  word_280C74958 = 256;
  byte_280C7495A = 0;
  qword_280C74960 = 0;
  byte_280C74968 = 1;
}

uint64_t static AllowedClientSettings.denyMDMEnrollment.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C74910 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&byte_280C74918, v1, &qword_27C8CEC98, &unk_20E4C7740);
}

uint64_t AllowedClientSettings.tokenKeys.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C748B0 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BF44(&qword_280C748B8, v1, v2, v3, v4);
}

uint64_t sub_20E48E22C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C748B0 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BF44(&qword_280C748B8, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E48E2C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280C748B0 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);

  sub_20E41D148(v3, &qword_280C748B8, v4, v5, v6, v7);
}

uint64_t AllowedClientSettings.tokenKeys.setter(uint64_t a1)
{
  if (qword_280C748B0 != -1)
  {
    swift_once();
  }

  sub_20E41D148(a1, &qword_280C748B8, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
}

uint64_t (*AllowedClientSettings.tokenKeys.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C748B0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41BF44(&qword_280C748B8, v3, v4, v5, v6);
  return sub_20E48E47C;
}

uint64_t sub_20E48E47C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (a2)
  {
    v8 = *a1;

    sub_20E41D148(v9, &qword_280C748B8, v4, v5, v6, v7);
  }

  else
  {
    sub_20E41D148(*a1, &qword_280C748B8, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  }
}

uint64_t AllowedClientSettings.effectiveTokenKeys.getter()
{
  if (qword_280C748B0 != -1)
  {
    swift_once();
  }

  return sub_20E41FE00(&qword_280C748B8);
}

uint64_t sub_20E48E578()
{
  qword_280C748B8 = MEMORY[0x277D84FA0];
  qword_280C748C0 = 0xD000000000000017;
  qword_280C748C8 = 0x800000020E4CEBB0;
  qword_280C748E8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF458, &qword_20E4C9FF0);
  result = sub_20E430A50(qword_280C72920, &qword_27C8CF458, &qword_20E4C9FF0);
  qword_280C748F0 = result;
  byte_280C748D0 = 1;
  word_280C748F8 = 256;
  byte_280C748FA = 0;
  qword_280C74900 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C74908 = 0;
  return result;
}

uint64_t static AllowedClientSettings.tokenKeys.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C748B0 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C748B8, v1, &qword_27C8CF4E8, &qword_20E4CDF10);
}

uint64_t AllowedClientSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v33 = sub_20E4C6A10();
  v32 = *(v33 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v33, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v30 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v41 = *v1;
  v42 = v12;
  v43 = v13;
  v44 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20E4C7D30;
  v16 = qword_280C74970;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_280C749B0;
  *(v15 + 32) = qword_280C749A8;
  *(v15 + 40) = v17;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = v14;

  AllowedClientSettings.allowedClient.getter(v36);
  v31 = v36[2];
  sub_20E41FC5C(&qword_280C74978, v35);
  v30 = v35[0];
  *(v15 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF4F0, &unk_20E4CA870);
  v18 = swift_allocObject();
  *(v15 + 48) = v18;
  v19 = v36[1];
  v18[1] = v36[0];
  v18[2] = v19;
  v20 = v30;
  v18[3] = v31;
  v18[4] = v20;
  v21 = v35[2];
  v18[5] = v35[1];
  v18[6] = v21;
  if (qword_280C74910 != -1)
  {
    swift_once();
  }

  v22 = unk_280C74928;
  *(v15 + 80) = qword_280C74920;
  *(v15 + 88) = v22;

  v23 = sub_20E41BCBC(&byte_280C74918, v11, v12, v13, v14);
  v24 = sub_20E41FA28(&byte_280C74918);
  *(v15 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v15 + 96) = v23;
  *(v15 + 97) = v24;
  if (qword_280C748B0 != -1)
  {
    swift_once();
  }

  v25 = qword_280C748C8;
  *(v15 + 128) = qword_280C748C0;
  *(v15 + 136) = v25;

  v26 = sub_20E41BF44(&qword_280C748B8, v11, v12, v13, v14);
  v27 = sub_20E41FE00(&qword_280C748B8);
  *(v15 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF4F8, &qword_20E4CA880);
  *(v15 + 144) = v26;
  *(v15 + 152) = v27;
  v28 = sub_20E4C6A00();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  (*(v32 + 104))(v5, *MEMORY[0x277D84C38], v33);
  return sub_20E4C6A20();
}

unint64_t sub_20E48EAA0()
{
  result = qword_27C8CF500;
  if (!qword_27C8CF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF500);
  }

  return result;
}

uint64_t GameCenterSettings.OtherPlayerTypes.rawValue.getter()
{
  v1 = 0x4F73646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7972657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

ManagedSettings::GameCenterSettings::OtherPlayerTypes_optional __swiftcall GameCenterSettings.OtherPlayerTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ManagedSettings::GameCenterSettings::Name_optional __swiftcall GameCenterSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t GameCenterSettings.Name.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 0xD000000000000019;
    if (v1 != 2)
    {
      v5 = 0xD000000000000020;
    }

    v6 = 0xD00000000000001CLL;
    if (!*v0)
    {
      v6 = 0xD000000000000022;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 != 7)
    {
      v2 = 0xD00000000000001DLL;
    }

    if (v1 == 6)
    {
      v2 = 0xD00000000000001DLL;
    }

    v3 = 0xD00000000000001FLL;
    if (v1 == 4)
    {
      v3 = 0xD000000000000020;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20E48ED88()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4B5718();
  return sub_20E4C69F0();
}

uint64_t sub_20E48EDD8()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4B5718();
  return sub_20E4C69F0();
}

unint64_t sub_20E48EE28@<X0>(unint64_t *a1@<X8>)
{
  result = GameCenterSettings.Name.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t GameCenterSettings.OtherPlayerTypes.description.getter()
{
  v1 = 0x2073646E65697246;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7972657645;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_20E48EEDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4F73646E65697266;
  v4 = 0xEB00000000796C6ELL;
  if (v2 != 1)
  {
    v3 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x4F73646E65697266;
  v8 = 0xEB00000000796C6ELL;
  if (*a2 != 1)
  {
    v7 = 0x656E6F7972657665;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E48EFE8()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E48F08C()
{
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E48F11C()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E48F1C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000796C6ELL;
  v5 = 0x4F73646E65697266;
  if (v2 != 1)
  {
    v5 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_20E48F288()
{
  v1 = 0x2073646E65697246;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7972657645;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t GameCenterSettings.allowedOtherPlayerTypes.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10 = *(v1 + 16);
  if (qword_280C750D0 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (off_280C72C08)
  {
    v5 = qword_280C750E0;
    v6 = unk_280C750E8;
    v11[0] = v3;
    v11[1] = v4;
    v12 = v10;
    v7 = byte_280C7511A;

    v8 = sub_20E425F00(v5, v6, v11, v7);
  }

  else
  {
    v8 = 0;
  }

  static GameCenterSettings.OtherPlayerTypes.value(from:)(v8, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CEDE0, &qword_20E4C7CD0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a1 = 3;
  }

  return result;
}

void GameCenterSettings.allowedOtherPlayerTypes.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  if (qword_280C750D0 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_20E41D564(v2, &byte_280C750D8, v3, v4, v5, v6);
}

void (*GameCenterSettings.allowedOtherPlayerTypes.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 1);
  GameCenterSettings.allowedOtherPlayerTypes.getter((a1 + 8));
  return sub_20E48F530;
}

void sub_20E48F530(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (qword_280C750D0 != -1)
  {
    v8 = v2;
    v9 = v1;
    swift_once();
    v1 = v9;
    v2 = v8;
  }

  v3 = *v1;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);

  sub_20E41D564(v2, &byte_280C750D8, v4, v5, v6, v7);
}

uint64_t GameCenterSettings.effectiveAllowedOtherPlayerTypes.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280C750D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  return sub_20E41FF24(&byte_280C750D8, a1);
}

uint64_t sub_20E48F62C()
{
  byte_280C750D8 = 2;
  qword_280C750E0 = 0xD000000000000022;
  unk_280C750E8 = 0x800000020E4CEBD0;
  qword_280C75108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF490, &unk_20E4CAD40);
  result = sub_20E430A50(qword_280C72600, &qword_27C8CF490, &unk_20E4CAD40);
  qword_280C75110 = result;
  byte_280C750F0 = 0;
  word_280C75118 = 256;
  byte_280C7511A = 0;
  qword_280C75120 = 0;
  byte_280C75128 = 1;
  return result;
}

uint64_t static GameCenterSettings.allowedOtherPlayerTypes.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C750D0 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&byte_280C750D8, v1, &qword_27C8CF518, &unk_20E4CAA28);
}

void (*GameCenterSettings.denyAddingFriends.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75310 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75318, v3, v4, v5, v6);
  return sub_20E48F85C;
}

void sub_20E48F88C()
{
  byte_280C75318 = 0;
  qword_280C75320 = 0xD00000000000001CLL;
  unk_280C75328 = 0x800000020E4CEC00;
  qword_280C75348 = &type metadata for BoolCombineOperator;
  unk_280C75350 = &protocol witness table for BoolCombineOperator;
  byte_280C75330 = 0;
  word_280C75358 = 257;
  byte_280C7535A = 0;
  qword_280C75360 = 0;
  byte_280C75368 = 1;
}

void (*GameCenterSettings.denyGameCenter.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C753D8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C753E0, v3, v4, v5, v6);
  return sub_20E48FA10;
}

void sub_20E48FA40()
{
  byte_280C753E0 = 0;
  qword_280C753E8 = 0xD000000000000019;
  unk_280C753F0 = 0x800000020E4CEC20;
  qword_280C75410 = &type metadata for BoolCombineOperator;
  unk_280C75418 = &protocol witness table for BoolCombineOperator;
  byte_280C753F8 = 0;
  word_280C75420 = 256;
  byte_280C75422 = 0;
  qword_280C75428 = 0;
  byte_280C75430 = 1;
}

void (*GameCenterSettings.denyMultiplayerGaming.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75190 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75198, v3, v4, v5, v6);
  return sub_20E48FBC4;
}

void sub_20E48FBF4()
{
  byte_280C75198 = 0;
  qword_280C751A0 = 0xD000000000000020;
  unk_280C751A8 = 0x800000020E4CEC40;
  qword_280C751C8 = &type metadata for BoolCombineOperator;
  unk_280C751D0 = &protocol witness table for BoolCombineOperator;
  byte_280C751B0 = 0;
  word_280C751D8 = 257;
  byte_280C751DA = 0;
  qword_280C751E0 = 0;
  byte_280C751E8 = 1;
}

void (*GameCenterSettings.denyNearbyMultiplayer.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75130 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75138, v3, v4, v5, v6);
  return sub_20E48FD78;
}

void sub_20E48FDA8()
{
  byte_280C75138 = 0;
  qword_280C75140 = 0xD000000000000020;
  unk_280C75148 = 0x800000020E4CEC70;
  qword_280C75168 = &type metadata for BoolCombineOperator;
  unk_280C75170 = &protocol witness table for BoolCombineOperator;
  byte_280C75150 = 0;
  word_280C75178 = 256;
  byte_280C7517A = 0;
  qword_280C75180 = 0;
  byte_280C75188 = 1;
}

void (*GameCenterSettings.denyPrivateMessaging.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C751F0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C751F8, v3, v4, v5, v6);
  return sub_20E48FF2C;
}

void sub_20E48FF5C()
{
  byte_280C751F8 = 0;
  qword_280C75200 = 0xD00000000000001FLL;
  unk_280C75208 = 0x800000020E4CECA0;
  qword_280C75228 = &type metadata for BoolCombineOperator;
  unk_280C75230 = &protocol witness table for BoolCombineOperator;
  byte_280C75210 = 0;
  word_280C75238 = 256;
  byte_280C7523A = 0;
  qword_280C75240 = 0;
  byte_280C75248 = 1;
}

void (*GameCenterSettings.lockFriendsSharing.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C752B0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C752B8, v3, v4, v5, v6);
  return sub_20E4900E0;
}

void sub_20E490110()
{
  byte_280C752B8 = 0;
  qword_280C752C0 = 0xD00000000000001DLL;
  unk_280C752C8 = 0x800000020E4CECC0;
  qword_280C752E8 = &type metadata for BoolCombineOperator;
  unk_280C752F0 = &protocol witness table for BoolCombineOperator;
  byte_280C752D0 = 0;
  word_280C752F8 = 256;
  byte_280C752FA = 0;
  qword_280C75300 = 0;
  byte_280C75308 = 1;
}

void (*GameCenterSettings.lockProfile.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75378 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75380, v3, v4, v5, v6);
  return sub_20E490294;
}

void sub_20E4902C4()
{
  byte_280C75380 = 0;
  qword_280C75388 = 0xD000000000000016;
  unk_280C75390 = 0x800000020E4CECE0;
  qword_280C753B0 = &type metadata for BoolCombineOperator;
  unk_280C753B8 = &protocol witness table for BoolCombineOperator;
  byte_280C75398 = 0;
  word_280C753C0 = 256;
  byte_280C753C2 = 0;
  qword_280C753C8 = 0;
  byte_280C753D0 = 1;
}

uint64_t sub_20E490368(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = *a1;
  if (*a5 != -1)
  {
    v13 = a2;
    v14 = a7;
    swift_once();
    a7 = v14;
    a2 = v13;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];

  return a7();
}

void (*GameCenterSettings.lockProfilePrivacy.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75250 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C75258, v3, v4, v5, v6);
  return sub_20E4904D0;
}

void sub_20E490500()
{
  byte_280C75258 = 0;
  qword_280C75260 = 0xD00000000000001DLL;
  unk_280C75268 = 0x800000020E4CED00;
  qword_280C75288 = &type metadata for BoolCombineOperator;
  unk_280C75290 = &protocol witness table for BoolCombineOperator;
  byte_280C75270 = 0;
  word_280C75298 = 256;
  byte_280C7529A = 0;
  qword_280C752A0 = 0;
  byte_280C752A8 = 1;
}

uint64_t GameCenterSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_20E4C6A10();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v48 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v57 = *v1;
  v58 = v13;
  v59 = v14;
  v60 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4CAA10;
  v17 = qword_280C750D0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = unk_280C750E8;
  *(v16 + 32) = qword_280C750E0;
  *(v16 + 40) = v18;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  v56 = v15;

  GameCenterSettings.allowedOtherPlayerTypes.getter(&v52);
  v19 = v52;
  sub_20E41FF24(&byte_280C750D8, &v51);
  v20 = v51;
  *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF520, &qword_20E4CAA38);
  *(v16 + 48) = v19;
  *(v16 + 49) = v20;
  if (qword_280C75310 != -1)
  {
    swift_once();
  }

  v21 = unk_280C75328;
  *(v16 + 80) = qword_280C75320;
  *(v16 + 88) = v21;

  v22 = sub_20E41BCBC(&byte_280C75318, v12, v13, v14, v15);
  v23 = sub_20E41FA28(&byte_280C75318);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v16 + 120) = v24;
  *(v16 + 96) = v22;
  *(v16 + 97) = v23;
  if (qword_280C753D8 != -1)
  {
    swift_once();
  }

  v25 = unk_280C753F0;
  *(v16 + 128) = qword_280C753E8;
  *(v16 + 136) = v25;

  v26 = sub_20E41BCBC(&byte_280C753E0, v12, v13, v14, v15);
  v27 = sub_20E41FA28(&byte_280C753E0);
  *(v16 + 168) = v24;
  *(v16 + 144) = v26;
  *(v16 + 145) = v27;
  if (qword_280C75190 != -1)
  {
    swift_once();
  }

  v28 = unk_280C751A8;
  *(v16 + 176) = qword_280C751A0;
  *(v16 + 184) = v28;

  v29 = sub_20E41BCBC(&byte_280C75198, v12, v13, v14, v15);
  v30 = sub_20E41FA28(&byte_280C75198);
  *(v16 + 216) = v24;
  *(v16 + 192) = v29;
  *(v16 + 193) = v30;
  if (qword_280C75130 != -1)
  {
    swift_once();
  }

  v31 = unk_280C75148;
  *(v16 + 224) = qword_280C75140;
  *(v16 + 232) = v31;

  v32 = sub_20E41BCBC(&byte_280C75138, v12, v13, v14, v15);
  v33 = sub_20E41FA28(&byte_280C75138);
  *(v16 + 264) = v24;
  *(v16 + 240) = v32;
  *(v16 + 241) = v33;
  if (qword_280C751F0 != -1)
  {
    swift_once();
  }

  v34 = unk_280C75208;
  *(v16 + 272) = qword_280C75200;
  *(v16 + 280) = v34;

  v35 = sub_20E41BCBC(&byte_280C751F8, v12, v13, v14, v15);
  v36 = sub_20E41FA28(&byte_280C751F8);
  *(v16 + 312) = v24;
  *(v16 + 288) = v35;
  *(v16 + 289) = v36;
  if (qword_280C752B0 != -1)
  {
    swift_once();
  }

  v37 = unk_280C752C8;
  *(v16 + 320) = qword_280C752C0;
  *(v16 + 328) = v37;

  v38 = sub_20E41BCBC(&byte_280C752B8, v12, v13, v14, v15);
  v39 = sub_20E41FA28(&byte_280C752B8);
  *(v16 + 360) = v24;
  *(v16 + 336) = v38;
  *(v16 + 337) = v39;
  if (qword_280C75378 != -1)
  {
    swift_once();
  }

  v40 = unk_280C75390;
  *(v16 + 368) = qword_280C75388;
  *(v16 + 376) = v40;

  v41 = sub_20E41BCBC(&byte_280C75380, v12, v13, v14, v15);
  v42 = sub_20E41FA28(&byte_280C75380);
  *(v16 + 408) = v24;
  *(v16 + 384) = v41;
  *(v16 + 385) = v42;
  if (qword_280C75250 != -1)
  {
    swift_once();
  }

  v43 = unk_280C75268;
  *(v16 + 416) = qword_280C75260;
  *(v16 + 424) = v43;

  v44 = sub_20E41BCBC(&byte_280C75258, v12, v13, v14, v15);
  v45 = sub_20E41FA28(&byte_280C75258);
  *(v16 + 456) = v24;
  *(v16 + 432) = v44;
  *(v16 + 433) = v45;
  v46 = sub_20E4C6A00();
  (*(*(v46 - 8) + 56))(v11, 1, 1, v46);
  (*(v48 + 104))(v6, *MEMORY[0x277D84C38], v49);
  return sub_20E4C6A20();
}

unint64_t sub_20E490BA8()
{
  result = qword_27C8CF528;
  if (!qword_27C8CF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF528);
  }

  return result;
}

unint64_t sub_20E490C40()
{
  result = qword_280C75370;
  if (!qword_280C75370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C75370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameCenterSettings.Name(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameCenterSettings.Name(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ScreenTimeSettings.ShieldPolicy.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 7041889;
  v4 = 0x69646E65506B7361;
  if (v1 != 3)
  {
    v4 = 0x64656B636F6C62;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852989815;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

ManagedSettings::ScreenTimeSettings::ShieldPolicy_optional __swiftcall ScreenTimeSettings.ShieldPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ManagedSettings::ScreenTimeSettings::Name_optional __swiftcall ScreenTimeSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ScreenTimeSettings.Name.rawValue.getter()
{
  v1 = 0xD000000000000021;
  v2 = *v0;
  if (v2 != 1)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000024;
  }

  *v0;
  return result;
}

uint64_t sub_20E490FF4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000021;
  v3 = *a1;
  v4 = "cationShieldPolicies";
  if (v3 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000022;
  }

  if (v3 == 1)
  {
    v6 = "cationShieldPolicies";
  }

  else
  {
    v6 = "oryShieldPolicies";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000024;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "gameCenter.lockProfilePrivacy";
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000022;
    v4 = "oryShieldPolicies";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000024;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "gameCenter.lockProfilePrivacy";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_20E4C6910();
  }

  return v11 & 1;
}

uint64_t sub_20E4910C8()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E491160()
{
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E4911E4()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E491284(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000021;
  v3 = "cationShieldPolicies";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000022;
    v3 = "oryShieldPolicies";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000024;
    v4 = "gameCenter.lockProfilePrivacy";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t ScreenTimeSettings.ShieldPolicy.description.getter()
{
  v1 = *v0;
  v2 = 1701736270;
  v3 = 7041857;
  v4 = 0x646E6550206B7341;
  if (v1 != 3)
  {
    v4 = 0x64656B636F6C42;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852989783;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20E4913A4()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E491474()
{
  *v0;
  *v0;
  *v0;
  sub_20E4C6530();
}

uint64_t sub_20E491530()
{
  v1 = *v0;
  sub_20E4C69C0();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

void sub_20E491608(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE300000000000000;
  v6 = 7041889;
  v7 = 0xEA0000000000676ELL;
  v8 = 0x69646E65506B7361;
  if (v2 != 3)
  {
    v8 = 0x64656B636F6C62;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1852989815;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_20E4916A4()
{
  v1 = *v0;
  v2 = 1701736270;
  v3 = 7041857;
  v4 = 0x646E6550206B7341;
  if (v1 != 3)
  {
    v4 = 0x64656B636F6C42;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1852989783;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t (*ScreenTimeSettings.applicationShieldPolicies.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74FA8 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41C090(&qword_280C74FB0, v3, v4, v5, v6);
  return sub_20E491858;
}

uint64_t sub_20E4918B0()
{
  qword_280C74FB0 = MEMORY[0x277D84F98];
  qword_280C74FB8 = 0xD000000000000024;
  qword_280C74FC0 = 0x800000020E4CED20;
  qword_280C74FE0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF470, &qword_20E4CA008);
  result = sub_20E430A50(qword_280C72408, &qword_27C8CF470, &qword_20E4CA008);
  qword_280C74FE8 = result;
  byte_280C74FC8 = 1;
  word_280C74FF0 = 256;
  byte_280C74FF2 = 0;
  qword_280C74FF8 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C75000 = 0;
  return result;
}

uint64_t static ScreenTimeSettings.applicationShieldPolicies.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C74FA8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C74FB0, v1, &qword_27C8CF550, &unk_20E4CAD50);
}

uint64_t (*ScreenTimeSettings.categoryShieldPolicies.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75068 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41C1DC(&qword_280C75070, v3, v4, v5, v6);
  return sub_20E491B0C;
}

uint64_t sub_20E491B64()
{
  qword_280C75070 = MEMORY[0x277D84F98];
  qword_280C75078 = 0xD000000000000021;
  qword_280C75080 = 0x800000020E4CED50;
  qword_280C750A0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF478, &qword_20E4CA010);
  result = sub_20E430A50(&qword_280C72400, &qword_27C8CF478, &qword_20E4CA010);
  qword_280C750A8 = result;
  byte_280C75088 = 1;
  word_280C750B0 = 256;
  byte_280C750B2 = 0;
  qword_280C750B8 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C750C0 = 0;
  return result;
}

uint64_t static ScreenTimeSettings.categoryShieldPolicies.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C75068 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C75070, v1, &qword_27C8CF558, &unk_20E4CDF40);
}

uint64_t sub_20E491CD0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v8 = v3[3];
  if (*a1 != -1)
  {
    v11 = *v3;
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  return a3(a2);
}

uint64_t sub_20E491D68@<X0>(uint64_t *a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  if (*a2 == -1)
  {
    result = a4(a3);
  }

  else
  {
    v8 = *a1;
    v10 = a1[1];
    v11 = a1[2];
    v12 = a1[3];
    swift_once();
    result = a4(a3);
  }

  *a5 = result;
  return result;
}

uint64_t sub_20E491E04(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v7 = *a1;
  if (*a5 != -1)
  {
    v13 = a2;
    v14 = a7;
    swift_once();
    a7 = v14;
    a2 = v13;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];

  return a7();
}

uint64_t sub_20E491EC4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  a4();
}

uint64_t (*ScreenTimeSettings.webDomainShieldPolicies.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C75008 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *a1 = sub_20E41C328(&qword_280C75010, v3, v4, v5, v6);
  return sub_20E491FF8;
}

uint64_t sub_20E492018(uint64_t *a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  v11 = *a1;
  if (a2)
  {

    a4(v12, a3, v7, v8, v9, v10);
  }

  else
  {
    a4(v11, a3, *v6, v6[1], v6[2], v6[3]);
  }
}

uint64_t sub_20E4920FC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*a1 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  return a3(a2);
}

uint64_t sub_20E49215C()
{
  qword_280C75010 = MEMORY[0x277D84F98];
  qword_280C75018 = 0xD000000000000022;
  qword_280C75020 = 0x800000020E4CED80;
  qword_280C75040 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF468, &qword_20E4CA000);
  result = sub_20E430A50(&qword_280C723F8, &qword_27C8CF468, &qword_20E4CA000);
  qword_280C75048 = result;
  byte_280C75028 = 1;
  word_280C75050 = 256;
  byte_280C75052 = 0;
  qword_280C75058 = 0x7FFFFFFFFFFFFFFFLL;
  byte_280C75060 = 0;
  return result;
}

uint64_t static ScreenTimeSettings.webDomainShieldPolicies.getter@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_280C75008 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_20E424E74(&qword_280C75010, v1, &qword_27C8CF560, &qword_20E4CAD60);
}

uint64_t ScreenTimeSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v29[0] = sub_20E4C6A10();
  v2 = *(v29[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29[0], v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v29 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v29[2] = *v1;
  v29[3] = v13;
  v29[4] = v14;
  v29[5] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E4C7D30;
  v17 = qword_280C74FA8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_280C74FC0;
  *(v16 + 32) = qword_280C74FB8;
  *(v16 + 40) = v18;

  v19 = sub_20E41C090(&qword_280C74FB0, v12, v13, v14, v15);
  v20 = sub_20E41FF54(&qword_280C74FB0);
  *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF568, &qword_20E4CAD68);
  *(v16 + 48) = v19;
  *(v16 + 56) = v20;
  if (qword_280C75068 != -1)
  {
    swift_once();
  }

  v21 = qword_280C75080;
  *(v16 + 80) = qword_280C75078;
  *(v16 + 88) = v21;

  v22 = sub_20E41C1DC(&qword_280C75070, v12, v13, v14, v15);
  v23 = sub_20E420078(&qword_280C75070);
  *(v16 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF570, &qword_20E4CAD70);
  *(v16 + 96) = v22;
  *(v16 + 104) = v23;
  if (qword_280C75008 != -1)
  {
    swift_once();
  }

  v24 = qword_280C75020;
  *(v16 + 128) = qword_280C75018;
  *(v16 + 136) = v24;

  v25 = sub_20E41C328(&qword_280C75010, v12, v13, v14, v15);
  v26 = sub_20E42019C(&qword_280C75010);
  *(v16 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF578, &qword_20E4CAD78);
  *(v16 + 144) = v25;
  *(v16 + 152) = v26;
  v27 = sub_20E4C6A00();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v29[0]);
  return sub_20E4C6A20();
}

unint64_t sub_20E49260C()
{
  result = qword_27C8CF580;
  if (!qword_27C8CF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF580);
  }

  return result;
}

unint64_t sub_20E4926A4()
{
  result = qword_280C750C8;
  if (!qword_280C750C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C750C8);
  }

  return result;
}

ManagedSettings::MediaSettings::Name_optional __swiftcall MediaSettings.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20E4C68A0();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MediaSettings.Name.rawValue.getter()
{
  result = 0xD000000000000013;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
    case 0xD:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD00000000000001CLL;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20E492948(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = MediaSettings.Name.rawValue.getter();
  v4 = v3;
  if (v2 == MediaSettings.Name.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_20E4C6910();
  }

  return v7 & 1;
}

uint64_t sub_20E4929E4()
{
  v1 = *v0;
  sub_20E4C69C0();
  MediaSettings.Name.rawValue.getter();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

uint64_t sub_20E492A4C()
{
  v2 = *v0;
  MediaSettings.Name.rawValue.getter();
  sub_20E4C6530();
}

uint64_t sub_20E492AB0()
{
  v1 = *v0;
  sub_20E4C69C0();
  MediaSettings.Name.rawValue.getter();
  sub_20E4C6530();

  return sub_20E4C69F0();
}

unint64_t sub_20E492B20@<X0>(unint64_t *a1@<X8>)
{
  result = MediaSettings.Name.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void (*MediaSettings.denyBookstore.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74340 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74348, v3, v4, v5, v6);
  return sub_20E492C5C;
}

void sub_20E492C8C()
{
  byte_280C74348 = 0;
  qword_280C74350 = 0xD000000000000013;
  unk_280C74358 = 0x800000020E4CEDB0;
  qword_280C74378 = &type metadata for BoolCombineOperator;
  unk_280C74380 = &protocol witness table for BoolCombineOperator;
  byte_280C74360 = 0;
  word_280C74388 = 256;
  byte_280C7438A = 0;
  qword_280C74390 = 0;
  byte_280C74398 = 1;
}

void (*MediaSettings.denyBookstoreErotica.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C740A0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C740A8, v3, v4, v5, v6);
  return sub_20E492E10;
}

void sub_20E492E40()
{
  byte_280C740A8 = 0;
  qword_280C740B0 = 0xD00000000000001ALL;
  unk_280C740B8 = 0x800000020E4CEDD0;
  qword_280C740D8 = &type metadata for BoolCombineOperator;
  unk_280C740E0 = &protocol witness table for BoolCombineOperator;
  byte_280C740C0 = 0;
  word_280C740E8 = 257;
  byte_280C740EA = 0;
  qword_280C740F0 = 0;
  byte_280C740F8 = 1;
}

void (*MediaSettings.denyExplicitContent.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74160 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74168, v3, v4, v5, v6);
  return sub_20E492FC4;
}

void sub_20E492FF4()
{
  byte_280C74168 = 0;
  qword_280C74170 = 0xD000000000000019;
  unk_280C74178 = 0x800000020E4CEDF0;
  qword_280C74198 = &type metadata for BoolCombineOperator;
  unk_280C741A0 = &protocol witness table for BoolCombineOperator;
  byte_280C74180 = 0;
  word_280C741A8 = 257;
  byte_280C741AA = 0;
  qword_280C741B0 = 0;
  byte_280C741B8 = 1;
}

void (*MediaSettings.denyiTunes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74400 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74408, v3, v4, v5, v6);
  return sub_20E493178;
}

void sub_20E4931A8()
{
  byte_280C74408 = 0;
  qword_280C74410 = 0xD000000000000010;
  unk_280C74418 = 0x800000020E4CEE10;
  qword_280C74438 = &type metadata for BoolCombineOperator;
  unk_280C74440 = &protocol witness table for BoolCombineOperator;
  byte_280C74420 = 0;
  word_280C74448 = 256;
  byte_280C7444A = 0;
  qword_280C74450 = 0;
  byte_280C74458 = 1;
}

void (*MediaSettings.denyMediaPurchase.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74460 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74468, v3, v4, v5, v6);
  return sub_20E49332C;
}

void sub_20E49335C()
{
  byte_280C74468 = 0;
  qword_280C74470 = 0xD000000000000017;
  unk_280C74478 = 0x800000020E4CEE30;
  qword_280C74498 = &type metadata for BoolCombineOperator;
  unk_280C744A0 = &protocol witness table for BoolCombineOperator;
  byte_280C74480 = 0;
  word_280C744A8 = 256;
  byte_280C744AA = 0;
  qword_280C744B0 = 0;
  byte_280C744B8 = 1;
}

void (*MediaSettings.denyMusicArtistActivity.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C73FE0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C73FE8, v3, v4, v5, v6);
  return sub_20E4934E0;
}

void sub_20E493510()
{
  byte_280C73FE8 = 0;
  qword_280C73FF0 = 0xD00000000000001DLL;
  unk_280C73FF8 = 0x800000020E4CEE50;
  qword_280C74018 = &type metadata for BoolCombineOperator;
  unk_280C74020 = &protocol witness table for BoolCombineOperator;
  byte_280C74000 = 0;
  word_280C74028 = 256;
  byte_280C7402A = 0;
  qword_280C74030 = 0;
  byte_280C74038 = 1;
}

void (*MediaSettings.denyMusicService.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74220 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74228, v3, v4, v5, v6);
  return sub_20E493694;
}

void sub_20E4936C4()
{
  byte_280C74228 = 0;
  qword_280C74230 = 0xD000000000000016;
  unk_280C74238 = 0x800000020E4CEE70;
  qword_280C74258 = &type metadata for BoolCombineOperator;
  unk_280C74260 = &protocol witness table for BoolCombineOperator;
  byte_280C74240 = 0;
  word_280C74268 = 257;
  byte_280C7426A = 0;
  qword_280C74270 = 0;
  byte_280C74278 = 1;
}

void (*MediaSettings.denyMusicVideos.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74280 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74288, v3, v4, v5, v6);
  return sub_20E493848;
}

void sub_20E493878()
{
  byte_280C74288 = 0;
  qword_280C74290 = 0xD000000000000015;
  unk_280C74298 = 0x800000020E4CEE90;
  qword_280C742B8 = &type metadata for BoolCombineOperator;
  unk_280C742C0 = &protocol witness table for BoolCombineOperator;
  byte_280C742A0 = 0;
  word_280C742C8 = 256;
  byte_280C742CA = 0;
  qword_280C742D0 = 0;
  byte_280C742D8 = 1;
}

void (*MediaSettings.denyPodcasts.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C743A0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C743A8, v3, v4, v5, v6);
  return sub_20E4939FC;
}

void sub_20E493A2C()
{
  byte_280C743A8 = 0;
  qword_280C743B0 = 0xD000000000000012;
  unk_280C743B8 = 0x800000020E4CEEB0;
  qword_280C743D8 = &type metadata for BoolCombineOperator;
  unk_280C743E0 = &protocol witness table for BoolCombineOperator;
  byte_280C743C0 = 0;
  word_280C743E8 = 256;
  byte_280C743EA = 0;
  qword_280C743F0 = 0;
  byte_280C743F8 = 1;
}

void (*MediaSettings.denySharedMediaLibraries.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C744C0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C744C8, v3, v4, v5, v6);
  return sub_20E493BB0;
}

void sub_20E493BE0()
{
  byte_280C744C8 = 0;
  qword_280C744D0 = 0xD00000000000001ELL;
  unk_280C744D8 = 0x800000020E4CEED0;
  qword_280C744F8 = &type metadata for BoolCombineOperator;
  unk_280C74500 = &protocol witness table for BoolCombineOperator;
  byte_280C744E0 = 0;
  word_280C74508 = 256;
  byte_280C7450A = 0;
  qword_280C74510 = 0;
  byte_280C74518 = 1;
}

void (*MediaSettings.lockSpeakerVolumeLimit.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C74040 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C74048, v3, v4, v5, v6);
  return sub_20E493D64;
}

void sub_20E493D94()
{
  byte_280C74048 = 0;
  qword_280C74050 = 0xD00000000000001CLL;
  unk_280C74058 = 0x800000020E4CEEF0;
  qword_280C74078 = &type metadata for BoolCombineOperator;
  unk_280C74080 = &protocol witness table for BoolCombineOperator;
  byte_280C74060 = 0;
  word_280C74088 = 256;
  byte_280C7408A = 0;
  qword_280C74090 = 0;
  byte_280C74098 = 1;
}

void (*MediaSettings.lockTVProvider.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C742E0 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C742E8, v3, v4, v5, v6);
  return sub_20E493F18;
}

void sub_20E493F48()
{
  byte_280C742E8 = 0;
  qword_280C742F0 = 0xD000000000000014;
  unk_280C742F8 = 0x800000020E4CEF10;
  qword_280C74318 = &type metadata for BoolCombineOperator;
  unk_280C74320 = &protocol witness table for BoolCombineOperator;
  byte_280C74300 = 0;
  word_280C74328 = 256;
  byte_280C7432A = 0;
  qword_280C74330 = 0;
  byte_280C74338 = 1;
}

uint64_t MediaSettings.maximumMovieRating.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v13 = *(v0 + 16);
  if (qword_280C741C0 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!off_280C72C08)
  {
    return 0;
  }

  v3 = qword_280C741E0;
  v4 = qword_280C741E8;
  v15 = v1;
  v16 = v2;
  v17 = v13;
  v5 = byte_280C7421A;

  v6 = sub_20E425F00(v3, v4, &v15, v5);

  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_20E45C5AC(v6);
  v10 = v9;

  v15 = v8;
  LOBYTE(v16) = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF0E8, &qword_20E4C8C88);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v11 = v14;
  if (v14 <= qword_280C741D0)
  {
    v11 = qword_280C741D0;
  }

  if (*algn_280C741D8 >= v11)
  {
    return v11;
  }

  else
  {
    return *algn_280C741D8;
  }
}

void (*MediaSettings.maximumMovieRating.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 1);
  *a1 = MediaSettings.maximumMovieRating.getter();
  *(a1 + 8) = v3 & 1;
  return sub_20E4941F4;
}

uint64_t sub_20E49423C()
{
  unk_280C741C8 = xmmword_20E4C8C60;
  *algn_280C741D8 = xmmword_20E4CB070;
  qword_280C741E8 = 0x800000020E4CEF30;
  qword_280C74208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF118, &qword_20E4C8E28);
  result = sub_20E430A50(&qword_280C725E8, &qword_27C8CF118, &qword_20E4C8E28);
  qword_280C74210 = result;
  byte_280C741F0 = 0;
  word_280C74218 = 257;
  byte_280C7421A = 0;
  return result;
}

uint64_t MediaSettings.maximumTVShowRating.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v13 = *(v0 + 16);
  if (qword_280C74100 != -1)
  {
    swift_once();
  }

  if (qword_280C72C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!off_280C72C08)
  {
    return 0;
  }

  v3 = qword_280C74120;
  v4 = qword_280C74128;
  v15 = v1;
  v16 = v2;
  v17 = v13;
  v5 = byte_280C7415A;

  v6 = sub_20E425F00(v3, v4, &v15, v5);

  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_20E45C5AC(v6);
  v10 = v9;

  v15 = v8;
  LOBYTE(v16) = v10 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF0E8, &qword_20E4C8C88);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v11 = v14;
  if (v14 <= qword_280C74110)
  {
    v11 = qword_280C74110;
  }

  if (*algn_280C74118 >= v11)
  {
    return v11;
  }

  else
  {
    return *algn_280C74118;
  }
}

void sub_20E4944AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a6;
  v8 = *a1;
  v9 = *(a1 + 8);
  if (*a5 != -1)
  {
    v14 = v8;
    v15 = a2;
    swift_once();
    v8 = v14;
    a2 = v15;
    v6 = a6;
  }

  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);

  sub_20E439D34(v8, v9, v6, v10, v11, v12, v13);
}

void sub_20E494554(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  if (*a3 != -1)
  {
    v11 = a1;
    v12 = a2;
    swift_once();
    a2 = v12;
    a1 = v11;
  }

  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = a2 & 1;

  sub_20E439D34(a1, v10, a4, v6, v7, v8, v9);
}

void (*MediaSettings.maximumTVShowRating.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = *(v1 + 1);
  *a1 = MediaSettings.maximumTVShowRating.getter();
  *(a1 + 8) = v3 & 1;
  return sub_20E494634;
}

void sub_20E494658(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  if (*a3 != -1)
  {
    v14 = v7;
    v15 = *(a1 + 8);
    swift_once();
    v8 = v15;
    v7 = v14;
  }

  v9 = *(a1 + 16);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);

  sub_20E439D34(v7, v8, a5, v10, v11, v12, v13);
}

uint64_t sub_20E4946FC(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_20E43A274(a2);
}

uint64_t sub_20E494740()
{
  unk_280C74108 = xmmword_20E4C8C60;
  *algn_280C74118 = xmmword_20E4CB080;
  qword_280C74128 = 0x800000020E4CEF50;
  qword_280C74148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF118, &qword_20E4C8E28);
  result = sub_20E430A50(&qword_280C725E8, &qword_27C8CF118, &qword_20E4C8E28);
  qword_280C74150 = result;
  byte_280C74130 = 0;
  word_280C74158 = 257;
  byte_280C7415A = 0;
  return result;
}

uint64_t sub_20E494814@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_20E424E74(a2, v4, &qword_27C8CF0F0, &unk_20E4C8C90);
}

uint64_t MediaSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = sub_20E4C6A10();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v74 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v73 = &v72 - v9;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v82 = *v1;
  v83 = v11;
  v84 = v12;
  v85 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20E4CB090;
  v15 = qword_280C74340;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = unk_280C74358;
  *(v14 + 32) = qword_280C74350;
  *(v14 + 40) = v16;

  v17 = sub_20E41BCBC(&byte_280C74348, v10, v11, v12, v13);
  v18 = sub_20E41FA28(&byte_280C74348);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v14 + 72) = v19;
  *(v14 + 48) = v17;
  *(v14 + 49) = v18;
  if (qword_280C740A0 != -1)
  {
    swift_once();
  }

  v20 = unk_280C740B8;
  *(v14 + 80) = qword_280C740B0;
  *(v14 + 88) = v20;

  v21 = sub_20E41BCBC(&byte_280C740A8, v10, v11, v12, v13);
  v22 = sub_20E41FA28(&byte_280C740A8);
  *(v14 + 120) = v19;
  *(v14 + 96) = v21;
  *(v14 + 97) = v22;
  if (qword_280C74160 != -1)
  {
    swift_once();
  }

  v23 = unk_280C74178;
  *(v14 + 128) = qword_280C74170;
  *(v14 + 136) = v23;

  v24 = sub_20E41BCBC(&byte_280C74168, v10, v11, v12, v13);
  v25 = sub_20E41FA28(&byte_280C74168);
  *(v14 + 168) = v19;
  *(v14 + 144) = v24;
  *(v14 + 145) = v25;
  if (qword_280C74400 != -1)
  {
    swift_once();
  }

  v26 = unk_280C74418;
  *(v14 + 176) = qword_280C74410;
  *(v14 + 184) = v26;

  v27 = sub_20E41BCBC(&byte_280C74408, v10, v11, v12, v13);
  v28 = sub_20E41FA28(&byte_280C74408);
  *(v14 + 216) = v19;
  *(v14 + 192) = v27;
  *(v14 + 193) = v28;
  if (qword_280C73FE0 != -1)
  {
    swift_once();
  }

  v29 = unk_280C73FF8;
  *(v14 + 224) = qword_280C73FF0;
  *(v14 + 232) = v29;

  v30 = sub_20E41BCBC(&byte_280C73FE8, v10, v11, v12, v13);
  v31 = sub_20E41FA28(&byte_280C73FE8);
  *(v14 + 264) = v19;
  *(v14 + 240) = v30;
  *(v14 + 241) = v31;
  if (qword_280C74220 != -1)
  {
    swift_once();
  }

  v32 = unk_280C74238;
  *(v14 + 272) = qword_280C74230;
  *(v14 + 280) = v32;

  v33 = sub_20E41BCBC(&byte_280C74228, v10, v11, v12, v13);
  v34 = sub_20E41FA28(&byte_280C74228);
  *(v14 + 312) = v19;
  *(v14 + 288) = v33;
  *(v14 + 289) = v34;
  if (qword_280C74280 != -1)
  {
    swift_once();
  }

  v35 = unk_280C74298;
  *(v14 + 320) = qword_280C74290;
  *(v14 + 328) = v35;

  v36 = sub_20E41BCBC(&byte_280C74288, v10, v11, v12, v13);
  v37 = sub_20E41FA28(&byte_280C74288);
  *(v14 + 360) = v19;
  *(v14 + 336) = v36;
  *(v14 + 337) = v37;
  if (qword_280C743A0 != -1)
  {
    swift_once();
  }

  v38 = unk_280C743B8;
  *(v14 + 368) = qword_280C743B0;
  *(v14 + 376) = v38;

  v39 = sub_20E41BCBC(&byte_280C743A8, v10, v11, v12, v13);
  v40 = sub_20E41FA28(&byte_280C743A8);
  *(v14 + 408) = v19;
  *(v14 + 384) = v39;
  *(v14 + 385) = v40;
  if (qword_280C744C0 != -1)
  {
    swift_once();
  }

  v41 = unk_280C744D8;
  *(v14 + 416) = qword_280C744D0;
  *(v14 + 424) = v41;

  v42 = sub_20E41BCBC(&byte_280C744C8, v10, v11, v12, v13);
  v43 = sub_20E41FA28(&byte_280C744C8);
  *(v14 + 456) = v19;
  *(v14 + 432) = v42;
  *(v14 + 433) = v43;
  if (qword_280C74460 != -1)
  {
    swift_once();
  }

  v44 = unk_280C74478;
  *(v14 + 464) = qword_280C74470;
  *(v14 + 472) = v44;

  v45 = sub_20E41BCBC(&byte_280C74468, v10, v11, v12, v13);
  v46 = sub_20E41FA28(&byte_280C74468);
  *(v14 + 504) = v19;
  *(v14 + 480) = v45;
  *(v14 + 481) = v46;
  if (qword_280C74040 != -1)
  {
    swift_once();
  }

  v47 = unk_280C74058;
  *(v14 + 512) = qword_280C74050;
  *(v14 + 520) = v47;

  v48 = sub_20E41BCBC(&byte_280C74048, v10, v11, v12, v13);
  v49 = sub_20E41FA28(&byte_280C74048);
  *(v14 + 552) = v19;
  *(v14 + 528) = v48;
  *(v14 + 529) = v49;
  if (qword_280C742E0 != -1)
  {
    swift_once();
  }

  v50 = unk_280C742F8;
  *(v14 + 560) = qword_280C742F0;
  *(v14 + 568) = v50;

  v51 = sub_20E41BCBC(&byte_280C742E8, v10, v11, v12, v13);
  v52 = sub_20E41FA28(&byte_280C742E8);
  *(v14 + 600) = v19;
  *(v14 + 576) = v51;
  *(v14 + 577) = v52;
  if (qword_280C741C0 != -1)
  {
    swift_once();
  }

  v53 = qword_280C741E8;
  *(v14 + 608) = qword_280C741E0;
  *(v14 + 616) = v53;
  v78 = v10;
  v79 = v11;
  v80 = v12;
  v81 = v13;

  v54 = MediaSettings.maximumMovieRating.getter();
  v56 = v55;
  v57 = sub_20E43A274(&qword_280C741C8);
  v59 = v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF0F8, &qword_20E4C8CA0);
  *(v14 + 648) = v60;
  v61 = swift_allocObject();
  *(v14 + 624) = v61;
  *(v61 + 16) = v54;
  *(v61 + 24) = v56 & 1;
  *(v61 + 32) = v57;
  *(v61 + 40) = v59 & 1;
  if (qword_280C74100 != -1)
  {
    swift_once();
  }

  v62 = qword_280C74128;
  *(v14 + 656) = qword_280C74120;
  *(v14 + 664) = v62;
  v78 = v10;
  v79 = v11;
  v80 = v12;
  v81 = v13;

  v63 = MediaSettings.maximumTVShowRating.getter();
  v65 = v64;
  v66 = sub_20E43A274(&qword_280C74108);
  v68 = v67;
  *(v14 + 696) = v60;
  v69 = swift_allocObject();
  *(v14 + 672) = v69;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65 & 1;
  *(v69 + 32) = v66;
  *(v69 + 40) = v68 & 1;
  v70 = sub_20E4C6A00();
  (*(*(v70 - 8) + 56))(v73, 1, 1, v70);
  (*(v75 + 104))(v74, *MEMORY[0x277D84C38], v76);
  return sub_20E4C6A20();
}

unint64_t sub_20E495158()
{
  result = qword_27C8CF5A8;
  if (!qword_27C8CF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF5A8);
  }

  return result;
}

uint64_t keypath_get_37Tm@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void)@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 1);
  result = a4(a1, a2, a3, a4);
  *a5 = result;
  *(a5 + 8) = v7 & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaSettings.Name(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaSettings.Name(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PasscodeSettings.Name.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_20E4C68A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_20E495420()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E495494()
{
  sub_20E4C69C0();
  sub_20E4C6530();
  return sub_20E4C69F0();
}

uint64_t sub_20E4954E8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_20E4C68A0();

  *a2 = v5 != 0;
  return result;
}

uint64_t PasscodeSettings.lockPasscode.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (qword_280C72F38 != -1)
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = v0[2];
    v9 = v0[3];
    swift_once();
    v4 = v9;
    v3 = v8;
    v2 = v7;
    v1 = v6;
  }

  return sub_20E41BCBC(&byte_280C72F40, v1, v2, v3, v4);
}

uint64_t sub_20E495600@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (qword_280C72F38 != -1)
  {
    v8 = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  result = sub_20E41BCBC(&byte_280C72F40, v3, v4, v5, v6);
  *a2 = result;
  return result;
}

void sub_20E495698(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  if (qword_280C72F38 != -1)
  {
    v8 = v3;
    v9 = a2;
    swift_once();
    a2 = v9;
    v3 = v8;
  }

  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];

  sub_20E41C858(v3, &byte_280C72F40, v4, v5, v6, v7);
}

void PasscodeSettings.lockPasscode.setter(unsigned __int8 a1)
{
  if (qword_280C72F38 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];

  sub_20E41C858(a1, &byte_280C72F40, v2, v3, v4, v5);
}

void (*PasscodeSettings.lockPasscode.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (qword_280C72F38 != -1)
  {
    v8 = *v1;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    swift_once();
    v6 = v11;
    v5 = v10;
    v4 = v9;
    v3 = v8;
  }

  *(a1 + 8) = sub_20E41BCBC(&byte_280C72F40, v3, v4, v5, v6);
  return sub_20E495850;
}

uint64_t PasscodeSettings.effectiveLockPasscode.getter()
{
  if (qword_280C72F38 != -1)
  {
    swift_once();
  }

  return sub_20E41FA28(&byte_280C72F40);
}

void sub_20E4958C8()
{
  byte_280C72F40 = 0;
  qword_280C72F48 = 0xD000000000000015;
  unk_280C72F50 = 0x800000020E4CEF70;
  qword_280C72F70 = &type metadata for BoolCombineOperator;
  unk_280C72F78 = &protocol witness table for BoolCombineOperator;
  byte_280C72F58 = 0;
  word_280C72F80 = 257;
  byte_280C72F82 = 0;
  qword_280C72F88 = 0;
  byte_280C72F90 = 1;
}

uint64_t static PasscodeSettings.lockPasscode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280C72F38 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_20E431094(&byte_280C72F40, v2);
}

uint64_t PasscodeSettings.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v2 = sub_20E4C6A10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA0, &unk_20E4C7ED0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v24[2] = *v1;
  v24[3] = v14;
  v24[4] = v15;
  v24[5] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECA8, &unk_20E4C7750);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20E4C7720;
  v18 = qword_280C72F38;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = unk_280C72F50;
  *(v17 + 32) = qword_280C72F48;
  *(v17 + 40) = v19;

  v20 = sub_20E41BCBC(&byte_280C72F40, v13, v14, v15, v16);
  v21 = sub_20E41FA28(&byte_280C72F40);
  *(v17 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CECB0, &qword_20E4CAA40);
  *(v17 + 48) = v20;
  *(v17 + 49) = v21;
  v22 = sub_20E4C6A00();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v3 + 104))(v7, *MEMORY[0x277D84C38], v2);
  return sub_20E4C6A20();
}

unint64_t sub_20E495C04()
{
  result = qword_27C8CF5C0;
  if (!qword_27C8CF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF5C0);
  }

  return result;
}

unint64_t sub_20E495C5C()
{
  result = qword_27C8CF5C8;
  if (!qword_27C8CF5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8CF5D0, &qword_20E4CB2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8CF5C8);
  }

  return result;
}

uint64_t sub_20E495CE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_27C8CEC80 != -1)
  {
    swift_once();
  }

  v9 = *(qword_27C8D7AF0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF3B0, &qword_20E4C9D88);
  sub_20E430A50(&qword_27C8CF700, &qword_27C8CF3B0, &qword_20E4C9D88);
  v4 = sub_20E4C6320();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  if (*(a1 + 16))
  {

    v7 = sub_20E495EB0;
    v8 = sub_20E49857C;
  }

  else
  {

    a1 = 0;
    v4 = 0;
    v8 = 0;
    v5 = 0;
    v7 = 0;
  }

  *a2 = a1;
  a2[1] = v4;
  a2[2] = v8;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = 0;
  return result;
}

id sub_20E495E40(uint64_t a1, uint64_t a2)
{
  if (qword_27C8CEC80 != -1)
  {
    swift_once();
  }

  return sub_20E465F1C(a2, a1);
}

id sub_20E495EB0(uint64_t a1)
{
  if (qword_27C8CEC80 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_20E4661C8(a1);
}

uint64_t ManagedSettingsStore.EffectivePublisher.receive<A>(subscriber:)()
{
  if (*v0)
  {
    v4 = *v0;
    v2 = *(v0 + 1);
    v3 = *(v0 + 3);
    v5 = v0[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8CF5D8, &qword_20E4CB3B0);
    sub_20E430A50(qword_27C8CF5E0, &qword_27C8CF5D8, &qword_20E4CB3B0);
    sub_20E4C6330();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15ManagedSettings0aB5StoreC13PublisherBase33_55911421B375DD5EA70C0442F9DE0059LLVy_7Combine03AnyD0VyShyAA0B9GroupNameOGs5NeverOGGSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20E49606C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}