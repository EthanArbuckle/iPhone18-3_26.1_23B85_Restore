void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v103 = a1;
  v9 = type metadata accessor for ScheduledWorkoutPlan();
  v112 = *(v9 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](v9);
  v106 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = &v101 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v101 - v18;
  v114 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = a4;
LABEL_99:
      v117 = v96;
      a4 = *(v96 + 2);
      if (a4 >= 2)
      {
        while (*v114)
        {
          v97 = *&v96[16 * a4];
          v98 = v96;
          v99 = *&v96[16 * a4 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)(*v114 + *(v112 + 72) * v97, *v114 + *(v112 + 72) * *&v96[16 * a4 + 16], *v114 + *(v112 + 72) * v99, v5);
          if (v6)
          {
            goto LABEL_107;
          }

          if (v99 < v97)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = specialized _ArrayBuffer._consumeAndCreateNew()(v98);
          }

          if (a4 - 2 >= *(v98 + 2))
          {
            goto LABEL_123;
          }

          v100 = &v98[16 * a4];
          *v100 = v97;
          *(v100 + 1) = v99;
          v117 = v98;
          specialized Array.remove(at:)(a4 - 1);
          v96 = v117;
          a4 = *(v117 + 2);
          if (a4 <= 1)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_133;
      }

LABEL_107:

      return;
    }

LABEL_129:
    v96 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v102 = a4;
  v116 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v107 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v114;
      v26 = *(v112 + 72);
      v5 = *v114 + v26 * v24;
      v104 = v23;
      v27 = v26;
      v113 = v26;
      outlined init with copy of ScheduledWorkoutPlan(v5, v19, type metadata accessor for ScheduledWorkoutPlan);
      outlined init with copy of ScheduledWorkoutPlan(v25 + v27 * v104, v16, type metadata accessor for ScheduledWorkoutPlan);
      v28 = *(v9 + 20);
      LODWORD(v111) = static Date.< infix(_:_:)();
      outlined destroy of ScheduledWorkoutPlan(v16, type metadata accessor for ScheduledWorkoutPlan);
      outlined destroy of ScheduledWorkoutPlan(v19, type metadata accessor for ScheduledWorkoutPlan);
      v29 = v104 + 2;
      v30 = v25 + v113 * (v104 + 2);
      while (v20 != v29)
      {
        outlined init with copy of ScheduledWorkoutPlan(v30, v19, type metadata accessor for ScheduledWorkoutPlan);
        outlined init with copy of ScheduledWorkoutPlan(v5, v16, type metadata accessor for ScheduledWorkoutPlan);
        v31 = *(v116 + 20);
        v32 = static Date.< infix(_:_:)() & 1;
        outlined destroy of ScheduledWorkoutPlan(v16, type metadata accessor for ScheduledWorkoutPlan);
        outlined destroy of ScheduledWorkoutPlan(v19, type metadata accessor for ScheduledWorkoutPlan);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v20 = v29 - 1;
          break;
        }
      }

      a4 = v102;
      v9 = v116;
      v23 = v104;
      if (v111)
      {
        if (v20 < v104)
        {
          goto LABEL_126;
        }

        if (v104 < v20)
        {
          v101 = v6;
          v33 = v113 * (v20 - 1);
          v34 = v20;
          v35 = v20 * v113;
          v111 = v20;
          v36 = v104;
          v37 = v104 * v113;
          do
          {
            if (v36 != --v34)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_132;
              }

              v5 = v38 + v37;
              outlined init with take of ScheduledWorkoutPlan(v38 + v37, v106);
              if (v37 < v33 || v5 >= v38 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of ScheduledWorkoutPlan(v106, v38 + v33);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v37 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v102;
          v9 = v116;
          v23 = v104;
          v20 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v20 >= v39)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v41 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v39)
    {
      v40 = v114[1];
    }

    else
    {
      v40 = v23 + a4;
    }

    if (v40 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v40)
    {
      goto LABEL_32;
    }

    v101 = v6;
    v86 = v20;
    v87 = v23;
    v88 = *v114;
    v89 = *(v112 + 72);
    v90 = *v114 + v89 * (v20 - 1);
    v91 = -v89;
    v104 = v87;
    v105 = v89;
    v92 = v87 - v20;
    v111 = v86;
    v5 = v88 + v86 * v89;
    v108 = v40;
LABEL_86:
    v109 = v5;
    v110 = v92;
    v113 = v90;
    v93 = v90;
LABEL_87:
    outlined init with copy of ScheduledWorkoutPlan(v5, v19, type metadata accessor for ScheduledWorkoutPlan);
    outlined init with copy of ScheduledWorkoutPlan(v93, v16, type metadata accessor for ScheduledWorkoutPlan);
    v94 = *(v9 + 20);
    a4 = static Date.< infix(_:_:)();
    outlined destroy of ScheduledWorkoutPlan(v16, type metadata accessor for ScheduledWorkoutPlan);
    outlined destroy of ScheduledWorkoutPlan(v19, type metadata accessor for ScheduledWorkoutPlan);
    if (a4)
    {
      break;
    }

    v9 = v116;
LABEL_85:
    v90 = v113 + v105;
    v92 = v110 - 1;
    v41 = v108;
    v5 = v109 + v105;
    if (++v111 != v108)
    {
      goto LABEL_86;
    }

    v6 = v101;
    v23 = v104;
    if (v108 < v104)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v107;
    }

    else
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v107 + 2) + 1, 1, v107);
    }

    a4 = *(v22 + 2);
    v42 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), a4 + 1, 1, v22);
    }

    *(v22 + 2) = v5;
    v43 = &v22[16 * a4];
    *(v43 + 4) = v23;
    *(v43 + 5) = v41;
    v44 = *v103;
    if (!*v103)
    {
      goto LABEL_134;
    }

    v108 = v41;
    if (a4)
    {
      while (2)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          v50 = &v22[16 * v5 + 32];
          v51 = *(v50 - 64);
          v52 = *(v50 - 56);
          v56 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          if (v56)
          {
            goto LABEL_111;
          }

          v55 = *(v50 - 48);
          v54 = *(v50 - 40);
          v56 = __OFSUB__(v54, v55);
          v48 = v54 - v55;
          v49 = v56;
          if (v56)
          {
            goto LABEL_112;
          }

          v57 = &v22[16 * v5];
          v59 = *v57;
          v58 = *(v57 + 1);
          v56 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v56)
          {
            goto LABEL_114;
          }

          v56 = __OFADD__(v48, v60);
          v61 = v48 + v60;
          if (v56)
          {
            goto LABEL_117;
          }

          if (v61 >= v53)
          {
            v79 = &v22[16 * v45 + 32];
            v81 = *v79;
            v80 = *(v79 + 1);
            v56 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v56)
            {
              goto LABEL_121;
            }

            if (v48 < v82)
            {
              v45 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v49)
            {
              goto LABEL_113;
            }

            v62 = &v22[16 * v5];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_116;
            }

            v68 = &v22[16 * v45 + 32];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_120;
            }

            if (v66 + v71 < v48)
            {
              goto LABEL_66;
            }

            if (v48 < v71)
            {
              v45 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v46 = *(v22 + 4);
            v47 = *(v22 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
            goto LABEL_52;
          }

          v72 = &v22[16 * v5];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_66:
          if (v67)
          {
            goto LABEL_115;
          }

          v75 = &v22[16 * v45];
          v77 = *(v75 + 4);
          v76 = *(v75 + 5);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v78 < v66)
          {
            break;
          }
        }

        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v114)
        {
          goto LABEL_131;
        }

        v83 = v22;
        v84 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v45 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v22[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v84)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew()(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_110;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v117 = v83;
        specialized Array.remove(at:)(v45);
        v22 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v114[1];
    v21 = v108;
    a4 = v102;
    v9 = v116;
    if (v108 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v88)
  {
    a4 = v115;
    outlined init with take of ScheduledWorkoutPlan(v5, v115);
    v9 = v116;
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of ScheduledWorkoutPlan(a4, v93);
    v93 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for ScheduledWorkoutPlan();
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v38 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v42 = a1;
      v43 = a4;
      v41 = -v13;
      do
      {
        v39 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v44 = v27;
        v45 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v51 = v27;
            v49 = v39;
            goto LABEL_59;
          }

          v40 = v24;
          v30 = v48;
          v31 = a3 + v25;
          v32 = v26 + v25;
          v33 = v46;
          outlined init with copy of ScheduledWorkoutPlan(v32, v46, type metadata accessor for ScheduledWorkoutPlan);
          v34 = v47;
          outlined init with copy of ScheduledWorkoutPlan(v28, v47, type metadata accessor for ScheduledWorkoutPlan);
          v35 = *(v30 + 20);
          v36 = static Date.< infix(_:_:)();
          outlined destroy of ScheduledWorkoutPlan(v34, type metadata accessor for ScheduledWorkoutPlan);
          outlined destroy of ScheduledWorkoutPlan(v33, type metadata accessor for ScheduledWorkoutPlan);
          if (v36)
          {
            break;
          }

          v24 = v32;
          if (a3 < v26 || v31 >= v26)
          {
            a3 = v31;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            v37 = a3 == v26;
            a3 = v31;
            a1 = v42;
            if (!v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v27 = v44;
          v29 = v32 > v43;
          v28 = v45;
          v25 = v41;
          if (!v29)
          {
            a2 = v44;
            goto LABEL_58;
          }
        }

        if (a3 < v44 || v31 >= v44)
        {
          a3 = v31;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v41;
          a1 = v42;
          v24 = v40;
        }

        else
        {
          v37 = a3 == v44;
          a3 = v31;
          a2 = v45;
          v25 = v41;
          a1 = v42;
          v24 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_58:
    v51 = a2;
    v49 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v16;
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v46;
        outlined init with copy of ScheduledWorkoutPlan(a2, v46, type metadata accessor for ScheduledWorkoutPlan);
        v21 = v47;
        outlined init with copy of ScheduledWorkoutPlan(a4, v47, type metadata accessor for ScheduledWorkoutPlan);
        v22 = *(v48 + 20);
        v23 = static Date.< infix(_:_:)();
        outlined destroy of ScheduledWorkoutPlan(v21, type metadata accessor for ScheduledWorkoutPlan);
        outlined destroy of ScheduledWorkoutPlan(v20, type metadata accessor for ScheduledWorkoutPlan);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v51 = a1;
      }

      while (a4 < v45 && a2 < a3);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v51, &v50, &v49);
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ScheduledWorkoutPlan();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static WorkoutScheduler.remove(scheduledWorkouts:for:), 0, 0);
}

uint64_t specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)()
{
  v0[2] = MEMORY[0x277D84F90];
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      outlined init with copy of ScheduledWorkoutPlan(v4, v7, type metadata accessor for ScheduledWorkoutPlan);
      *(swift_task_alloc() + 16) = v7;
      lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
      static Message.with(_:)();
      v11 = v0[6];
      v10 = v0[7];

      v12 = Message.serializedData(partial:)();
      v14 = v13;
      outlined destroy of ScheduledWorkoutPlan(v0[7], type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
      }

      outlined destroy of ScheduledWorkoutPlan(v0[9], type metadata accessor for ScheduledWorkoutPlan);
      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      v0[2] = v6;
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = swift_task_alloc();
  v0[10] = v20;
  v20[2] = v0 + 2;
  v20[3] = v19;
  v20[4] = v18;
  v21 = *(MEMORY[0x277D85A40] + 4);
  v22 = swift_task_alloc();
  v0[11] = v22;
  *v22 = v0;
  v22[1] = specialized static WorkoutScheduler.remove(scheduledWorkouts:for:);
  v23 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD00000000000001ELL, 0x800000023B67F5E0, partial apply for closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:), v20, v23);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = specialized static WorkoutScheduler.remove(scheduledWorkouts:for:);
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = specialized static WorkoutScheduler.remove(scheduledWorkouts:for:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t specialized static WorkoutScheduler.add(scheduledWorkouts:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = *(type metadata accessor for ScheduledWorkoutPlan() - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static WorkoutScheduler.add(scheduledWorkouts:for:), 0, 0);
}

uint64_t specialized static WorkoutScheduler.add(scheduledWorkouts:for:)()
{
  v0[2] = MEMORY[0x277D84F90];
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];
      outlined init with copy of ScheduledWorkoutPlan(v4, v7, type metadata accessor for ScheduledWorkoutPlan);
      *(swift_task_alloc() + 16) = v7;
      lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
      static Message.with(_:)();
      v11 = v0[6];
      v10 = v0[7];

      v12 = Message.serializedData(partial:)();
      v14 = v13;
      outlined destroy of ScheduledWorkoutPlan(v0[7], type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
      }

      outlined destroy of ScheduledWorkoutPlan(v0[9], type metadata accessor for ScheduledWorkoutPlan);
      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      v0[2] = v6;
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v19 = v0[4];
  v18 = v0[5];
  v20 = swift_task_alloc();
  v0[10] = v20;
  v20[2] = v0 + 2;
  v20[3] = v19;
  v20[4] = v18;
  v21 = *(MEMORY[0x277D85A40] + 4);
  v22 = swift_task_alloc();
  v0[11] = v22;
  *v22 = v0;
  v22[1] = specialized static WorkoutScheduler.add(scheduledWorkouts:for:);
  v23 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v22, 0, 0, 0xD00000000000001BLL, 0x800000023B67F5C0, partial apply for closure #2 in static WorkoutScheduler.add(scheduledWorkouts:for:), v20, v23);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = specialized static WorkoutScheduler.add(scheduledWorkouts:for:);
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = specialized static WorkoutScheduler.add(scheduledWorkouts:for:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[2];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[2];

  v6 = v0[1];

  return v6();
}

uint64_t specialized WorkoutScheduler.schedule(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](specialized WorkoutScheduler.schedule(_:dateComponents:), 0, 0);
}

uint64_t specialized WorkoutScheduler.schedule(_:dateComponents:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation14DateComponentsVG_10WorkoutKit09ScheduledG4PlanVs5NeverOTg5(partial apply for closure #1 in WorkoutScheduler.schedule(_:dateComponents:), v3, v2);
  v0[6] = v4;

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v5, static WorkoutKitLog.scheduling);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v4 + 16);

    _os_log_impl(&dword_23B5E7000, v6, v7, "scheduling %ld workouts", v8, 0xCu);
    MEMORY[0x23EEA1330](v8, -1, -1);
  }

  else
  {
  }

  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v10 = static WorkoutScheduler.bundleId;
  v9 = unk_27E168D50;
  v0[8] = unk_27E168D50;

  v11 = swift_task_alloc();
  v0[9] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  v0[10] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit09ScheduledA4PlanVGMd, &_sSay10WorkoutKit09ScheduledA4PlanVGMR);
  *v13 = v0;
  v13[1] = specialized WorkoutScheduler.schedule(_:dateComponents:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x800000023B67F480, closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)partial apply, v11, v14);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v2[11] = v0;

  v5 = v2[9];
  v6 = v2[8];
  if (v0)
  {
    v7 = v2[6];

    v8 = specialized WorkoutScheduler.schedule(_:dateComponents:);
  }

  else
  {

    v8 = specialized WorkoutScheduler.schedule(_:dateComponents:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v34 = v2;
  v4 = *(v2[2] + 16);
  v5 = *(v2[6] + 16);
  v6 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= 51)
  {
    v7 = v2[11];
    v33 = v2[2];

    specialized MutableCollection<>.sort(by:)(&v33);
    if (v7)
    {
    }

    v16 = v2[7];

    v17 = v33;
    v18 = v6 - 50;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v18;
      _os_log_impl(&dword_23B5E7000, v19, v20, "over limit. dropping oldest %ld workouts", v21, 0xCu);
      MEMORY[0x23EEA1330](v21, -1, -1);
    }

    v0 = specialized Collection.dropFirst(_:)(v18, v17);
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

    v3 = v24;
    v6 = v23;
    v1 = v22;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
      swift_unknownObjectRelease();
      v27 = MEMORY[0x277D84F90];
    }

    v28 = *(v27 + 16);

    if (!__OFSUB__(v3 >> 1, v6))
    {
      if (v28 == (v3 >> 1) - v6)
      {
        v26 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v26)
        {
LABEL_19:
          v29 = static WorkoutScheduler.bundleId;
          v30 = unk_27E168D50;
          v2[12] = v26;
          v2[13] = v30;
          v32 = specialized static WorkoutScheduler.remove(scheduledWorkouts:for:);

          v31 = swift_task_alloc();
          v2[14] = v31;
          *v31 = v2;
          v31[1] = specialized WorkoutScheduler.schedule(_:dateComponents:);
          v13 = v26;
          v14 = v29;
          v15 = v30;
          goto LABEL_20;
        }

        v26 = MEMORY[0x277D84F90];
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    swift_unknownObjectRelease();
    v24 = v3;
    v23 = v6;
    v22 = v1;
LABEL_11:
    specialized _copyCollectionToContiguousArray<A>(_:)(v0, v22, v23, v24);
    v26 = v25;
    goto LABEL_18;
  }

  v9 = v2[2];

  v11 = static WorkoutScheduler.bundleId;
  v10 = unk_27E168D50;
  v2[16] = unk_27E168D50;
  v32 = specialized static WorkoutScheduler.add(scheduledWorkouts:for:);

  v12 = swift_task_alloc();
  v2[17] = v12;
  *v12 = v2;
  v12[1] = specialized WorkoutScheduler.schedule(_:dateComponents:);
  v13 = v2[6];
  v14 = v11;
  v15 = v10;
LABEL_20:

  return v32(v13, v14, v15);
}

{
  v15 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v0[3] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B5E7000, v4, v5, "failed to add workouts due to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA1330](v7, -1, -1);
    MEMORY[0x23EEA1330](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = specialized WorkoutScheduler.schedule(_:dateComponents:);
  }

  else
  {
    v5 = *(v2 + 96);
    v6 = *(v2 + 104);

    v4 = specialized WorkoutScheduler.schedule(_:dateComponents:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[16] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = specialized WorkoutScheduler.schedule(_:dateComponents:);
  v4 = v0[6];

  return specialized static WorkoutScheduler.add(scheduledWorkouts:for:)(v4, v2, v1);
}

{
  v18 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[6];

  v4 = v0[15];
  v5 = v0[7];
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v0[3] = v4;
    v11 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_23B5E7000, v7, v8, "failed to add workouts due to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA1330](v10, -1, -1);
    MEMORY[0x23EEA1330](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized WorkoutScheduler.schedule(_:dateComponents:), 0, 0);
  }

  else
  {
    v4 = v3[16];
    v5 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

{
  v17 = v0;
  v1 = v0[16];
  v2 = v0[6];

  v3 = v0[18];
  v4 = v0[7];
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[3] = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23B5E7000, v6, v7, "failed to add workouts due to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEA1330](v9, -1, -1);
    MEMORY[0x23EEA1330](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t specialized WorkoutScheduler.remove(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](specialized WorkoutScheduler.remove(_:dateComponents:), 0, 0);
}

uint64_t specialized WorkoutScheduler.remove(_:dateComponents:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation14DateComponentsVG_10WorkoutKit09ScheduledG4PlanVs5NeverOTg5(partial apply for closure #1 in WorkoutScheduler.remove(_:dateComponents:), v3, v2);
  v0[5] = v4;

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[6] = __swift_project_value_buffer(v5, static WorkoutKitLog.scheduling);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v4 + 16);

    _os_log_impl(&dword_23B5E7000, v6, v7, "removing %ld scheduled workouts", v8, 0xCu);
    MEMORY[0x23EEA1330](v8, -1, -1);
  }

  else
  {
  }

  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v9 = static WorkoutScheduler.bundleId;
  v10 = unk_27E168D50;
  v0[7] = unk_27E168D50;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = specialized WorkoutScheduler.remove(_:dateComponents:);

  return specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)(v4, v9, v10);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized WorkoutScheduler.remove(_:dateComponents:), 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

{
  v19 = v0;
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v0[2] = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_23B5E7000, v6, v7, "failed to remove workouts due to %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA1330](v10, -1, -1);
    MEMORY[0x23EEA1330](v9, -1, -1);
  }

  else
  {
    v15 = v0[9];
  }

  v16 = v0[1];

  return v16();
}

uint64_t specialized WorkoutScheduler.markComplete(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2[4] = a1;
  v2[5] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!") - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v2[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for ScheduledWorkoutPlan();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v13 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](specialized WorkoutScheduler.markComplete(_:dateComponents:), 0, 0);
}

uint64_t specialized WorkoutScheduler.markComplete(_:dateComponents:)()
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v0[22] = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation14DateComponentsVG_10WorkoutKit09ScheduledG4PlanVs5NeverOTg5(partial apply for closure #1 in WorkoutScheduler.markComplete(_:dateComponents:), v3, v1);

  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v5 = static WorkoutScheduler.bundleId;
  v4 = unk_27E168D50;
  v0[23] = unk_27E168D50;

  v6 = swift_task_alloc();
  v0[24] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[25] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit09ScheduledA4PlanVGMd, &_sSay10WorkoutKit09ScheduledA4PlanVGMR);
  *v8 = v0;
  v8[1] = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x800000023B67F480, closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)partial apply, v6, v9);
}

{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  v6 = v2[23];
  if (v0)
  {
    v7 = v2[22];

    v8 = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  }

  else
  {

    v8 = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = v0[26];
  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WorkoutKitLog.scheduling);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26[0] = v7;
    *v6 = 136315138;
    v0[3] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v26);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B5E7000, v4, v5, "failed to mark workouts as complete due to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA1330](v7, -1, -1);
    MEMORY[0x23EEA1330](v6, -1, -1);
  }

  else
  {
  }

  v13 = v0[20];
  v12 = v0[21];
  v15 = v0[18];
  v14 = v0[19];
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  v25 = v0[6];

  v22 = v0[1];
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

{
  v176 = v0;
  v175 = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  v2 = v0[2];
  v154 = *(v1 + 16);
  if (!v154)
  {

    v111 = MEMORY[0x277D84F90];
    v110 = MEMORY[0x277D84F90];
    goto LABEL_148;
  }

  v3 = 0;
  v4 = v0[15];
  v138 = v0[14];
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v152 = v1 + v5;
  v133 = v5;
  v6 = v2 + v5;
  v7 = v0[8];
  v139 = (v7 + 32);
  v149 = (v7 + 8);
  v150 = v0[12];
  v151 = (v7 + 48);
  v8 = *(v4 + 72);
  v134 = v7;
  v135 = MEMORY[0x277D84F90];
  v148 = v0[2];
  v136 = MEMORY[0x277D84F90];
  v137 = v0[26];
  v153 = v2 + v5;
  v160 = v8;
  do
  {
    outlined init with copy of ScheduledWorkoutPlan(v152 + v3 * v8, v0[21], type metadata accessor for ScheduledWorkoutPlan);
    v9 = *(v2 + 16);
    if (v9)
    {
      v155 = v3;
      v10 = 0;
      v161 = *(v2 + 16);
      while (1)
      {
        v11 = v0[21];
        v12 = v0[18];
        outlined init with copy of ScheduledWorkoutPlan(v6 + v10 * v8, v12, type metadata accessor for ScheduledWorkoutPlan);
        if ((specialized static WorkoutPlan.Workout.== infix(_:_:)(v12, v11) & 1) == 0)
        {
          goto LABEL_9;
        }

        v13 = v0[21];
        v14 = v0[18];
        v15 = type metadata accessor for WorkoutPlan(0);
        v16 = v15[5];
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_9;
        }

        v17 = v15[6];
        v18 = v0[18] + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = (v0[21] + v17);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        if (!*v18)
        {
          outlined copy of WorkoutPlan.Route?(0, *(v18 + 8), *(v18 + 16));
          if (v24)
          {
            outlined copy of WorkoutPlan.Route?(v24, v23, v25);
LABEL_27:
            outlined consume of WorkoutPlan.Route?(v20, v19, v21);
            v28 = v24;
            v29 = v23;
            v30 = v25;
            goto LABEL_56;
          }

          outlined copy of WorkoutPlan.Route?(0, v23, v25);
          goto LABEL_29;
        }

        if (!v24)
        {
          outlined copy of WorkoutPlan.Route?(*v18, *(v18 + 8), *(v18 + 16));
          outlined copy of WorkoutPlan.Route?(0, v23, v25);
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);

          outlined consume of Data?(v19, v21);
          goto LABEL_27;
        }

        v26 = *(v20 + 16);
        if (v26 != *(v24 + 16))
        {
          goto LABEL_54;
        }

        if (v26)
        {
          v27 = v20 == v24;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          v59 = (v24 + 56);
          v60 = (v20 + 56);
          while (*(v60 - 3) == *(v59 - 3) && *(v60 - 2) == *(v59 - 2))
          {
            v61 = *v59;
            if (*v60)
            {
              if ((*v59 & 1) == 0)
              {
                break;
              }
            }

            else if ((*v59 & 1) != 0 || *(v60 - 1) != *(v59 - 1))
            {
              break;
            }

            v59 += 4;
            v60 += 4;
            if (!--v26)
            {
              goto LABEL_20;
            }
          }

LABEL_54:
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of WorkoutPlan.Route?(v24, v23, v25);
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
LABEL_55:
          outlined consume of WorkoutPlan.Route?(v24, v23, v25);

          outlined consume of Data?(v19, v21);
          v28 = v20;
          v29 = v19;
          v30 = v21;
LABEL_56:
          outlined consume of WorkoutPlan.Route?(v28, v29, v30);
LABEL_57:
          v8 = v160;
          v9 = v161;
          goto LABEL_9;
        }

LABEL_20:
        if (v21 >> 60 == 15)
        {
          if (v25 >> 60 != 15)
          {
            goto LABEL_45;
          }

          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of WorkoutPlan.Route?(v24, v23, v25);
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of Data?(v19, v21);
          outlined copy of Data?(v23, v25);
          goto LABEL_23;
        }

        if (v25 >> 60 == 15)
        {
LABEL_45:
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of WorkoutPlan.Route?(v24, v23, v25);
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of Data?(v19, v21);
          outlined copy of Data?(v23, v25);
          outlined consume of Data?(v19, v21);
          v57 = v23;
          v58 = v25;
LABEL_46:
          outlined consume of Data?(v57, v58);
          goto LABEL_55;
        }

        v62 = v21 >> 62;
        v63 = v25 >> 62;
        if (v21 >> 62 == 3)
        {
          break;
        }

        if (v62 <= 1)
        {
          if (!v62)
          {
            v64 = BYTE6(v21);
            if (v63 <= 1)
            {
              goto LABEL_79;
            }

            goto LABEL_84;
          }

          LODWORD(v64) = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_161;
          }

          v64 = v64;
          goto LABEL_78;
        }

        if (v62 == 2)
        {
          v67 = *(v19 + 16);
          v66 = *(v19 + 24);
          v68 = __OFSUB__(v66, v67);
          v64 = v66 - v67;
          if (v68)
          {
            goto LABEL_162;
          }

          goto LABEL_78;
        }

        v64 = 0;
        if (v63 <= 1)
        {
LABEL_79:
          if (v63)
          {
            LODWORD(v69) = HIDWORD(v23) - v23;
            if (__OFSUB__(HIDWORD(v23), v23))
            {
              goto LABEL_160;
            }

            v69 = v69;
          }

          else
          {
            v69 = BYTE6(v25);
          }

          goto LABEL_86;
        }

LABEL_84:
        if (v63 != 2)
        {
          if (v64)
          {
LABEL_101:
            outlined copy of WorkoutPlan.Route?(v20, v19, v21);
            outlined copy of WorkoutPlan.Route?(v24, v23, v25);
            outlined copy of WorkoutPlan.Route?(v20, v19, v21);
            outlined copy of Data?(v19, v21);
            outlined copy of Data?(v23, v25);
            outlined consume of Data?(v23, v25);
            v57 = v19;
            v58 = v21;
            goto LABEL_46;
          }

LABEL_102:
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of WorkoutPlan.Route?(v24, v23, v25);
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of Data?(v19, v21);
          outlined copy of Data?(v23, v25);
          outlined consume of Data?(v23, v25);
LABEL_23:
          outlined consume of Data?(v19, v21);
          outlined consume of WorkoutPlan.Route?(v24, v23, v25);

          outlined consume of Data?(v19, v21);
LABEL_29:
          outlined consume of WorkoutPlan.Route?(v20, v19, v21);
          v8 = v160;
          goto LABEL_30;
        }

        v71 = *(v23 + 16);
        v70 = *(v23 + 24);
        v68 = __OFSUB__(v70, v71);
        v69 = v70 - v71;
        if (v68)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          swift_once();
LABEL_153:
          v116 = type metadata accessor for Logger();
          __swift_project_value_buffer(v116, static WorkoutKitLog.scheduling);
          v117 = Logger.logObject.getter();
          v118 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v117, v118))
          {
            v119 = swift_slowAlloc();
            *v119 = 0;
            _os_log_impl(&dword_23B5E7000, v117, v118, "no known workouts to update", v119, 2u);
            MEMORY[0x23EEA1330](v119, -1, -1);
          }

          v121 = v0[20];
          v120 = v0[21];
          v123 = v0[18];
          v122 = v0[19];
          v125 = v0[16];
          v124 = v0[17];
          v126 = v0[13];
          v128 = v0[10];
          v127 = v0[11];
          v129 = v0[9];
          v162 = v0[6];

          v130 = v0[1];
          v131 = *MEMORY[0x277D85DE8];

          return v130();
        }

LABEL_86:
        if (v64 != v69)
        {
          goto LABEL_101;
        }

        if (v64 < 1)
        {
          goto LABEL_102;
        }

        if (v62 > 1)
        {
          if (v62 == 2)
          {
            v157 = *(v19 + 16);
            v144 = *(v19 + 24);
            outlined copy of WorkoutPlan.Route?(v20, v19, v21);
            outlined copy of WorkoutPlan.Route?(v24, v23, v25);
            outlined copy of WorkoutPlan.Route?(v20, v19, v21);
            outlined copy of Data?(v19, v21);
            v147 = v23;
            outlined copy of Data?(v23, v25);
            v79 = __DataStorage._bytes.getter();
            if (v79)
            {
              v80 = v79;
              v79 = __DataStorage._offset.getter();
              v81 = v157;
              if (__OFSUB__(v157, v79))
              {
                goto LABEL_166;
              }

              __s2a = (v157 - v79 + v80);
            }

            else
            {
              __s2a = 0;
              v81 = v157;
            }

            if (__OFSUB__(v144, v81))
            {
              goto LABEL_165;
            }

            MEMORY[0x23EEA04C0](v79);
            v84 = __s2a;
            goto LABEL_117;
          }

          *(v0 + 286) = 0;
          v0[35] = 0;
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of WorkoutPlan.Route?(v24, v23, v25);
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of Data?(v19, v21);
          outlined copy of Data?(v23, v25);
          v84 = (v0 + 35);
          v85 = v23;
LABEL_118:
          result = closure #1 in static Data.== infix(_:_:)(v84, v85, v25, &v169);
          if (v137)
          {
            v132 = *MEMORY[0x277D85DE8];
            return result;
          }

          outlined consume of Data?(v23, v25);
          v137 = 0;
          v158 = v169;
          v6 = v153;
          goto LABEL_132;
        }

        v147 = v23;
        if (v62)
        {
          if (v19 >> 32 < v19)
          {
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
          }

          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of WorkoutPlan.Route?(v24, v23, v25);
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of Data?(v19, v21);
          outlined copy of Data?(v23, v25);
          v82 = __DataStorage._bytes.getter();
          v83 = v82;
          if (v82)
          {
            v82 = __DataStorage._offset.getter();
            if (__OFSUB__(v19, v82))
            {
              goto LABEL_167;
            }

            v83 += v19 - v82;
          }

          MEMORY[0x23EEA04C0](v82);
          v84 = v83;
LABEL_117:
          v23 = v147;
          v85 = v147;
          goto LABEL_118;
        }

        v163 = v19;
        v164 = v21;
        v165 = BYTE2(v21);
        v166 = BYTE3(v21);
        v167 = BYTE4(v21);
        v168 = BYTE5(v21);
        if (v63)
        {
          if (v63 == 1)
          {
            if (v23 >> 32 < v23)
            {
              goto LABEL_168;
            }

            outlined copy of WorkoutPlan.Route?(v20, v19, v21);
            outlined copy of WorkoutPlan.Route?(v24, v23, v25);
            outlined copy of WorkoutPlan.Route?(v20, v19, v21);
            outlined copy of Data?(v19, v21);
            outlined copy of Data?(v23, v25);
            v72 = __DataStorage._bytes.getter();
            if (!v72)
            {
              goto LABEL_173;
            }

            v73 = v72;
            v74 = __DataStorage._offset.getter();
            if (__OFSUB__(v23, v74))
            {
              goto LABEL_170;
            }

            v75 = (v23 - v74 + v73);
            result = MEMORY[0x23EEA04C0](v74);
            if (!v75)
            {
              goto LABEL_174;
            }

            if (result >= (v23 >> 32) - v23)
            {
              v77 = (v23 >> 32) - v23;
            }

            else
            {
              v77 = result;
            }

            v78 = v75;
          }

          else
          {
            v159 = *(v23 + 16);
            v145 = *(v23 + 24);
            outlined copy of WorkoutPlan.Route?(v20, v19, v21);
            outlined copy of WorkoutPlan.Route?(v24, v23, v25);
            outlined copy of WorkoutPlan.Route?(v20, v19, v21);
            outlined copy of Data?(v19, v21);
            outlined copy of Data?(v23, v25);
            v87 = __DataStorage._bytes.getter();
            if (v87)
            {
              v88 = v87;
              v87 = __DataStorage._offset.getter();
              v89 = v159;
              if (__OFSUB__(v159, v87))
              {
                goto LABEL_171;
              }

              __s2b = (v159 - v87 + v88);
            }

            else
            {
              __s2b = 0;
              v89 = v159;
            }

            v90 = v145 - v89;
            if (__OFSUB__(v145, v89))
            {
              goto LABEL_169;
            }

            v72 = MEMORY[0x23EEA04C0](v87);
            v78 = __s2b;
            if (!__s2b)
            {
              __break(1u);
LABEL_173:
              result = MEMORY[0x23EEA04C0](v72);
LABEL_174:
              __break(1u);
              return result;
            }

            if (v72 >= v90)
            {
              v77 = v90;
            }

            else
            {
              v77 = v72;
            }
          }

          v86 = memcmp(&v163, v78, v77);
          outlined consume of Data?(v147, v25);
          v6 = v153;
        }

        else
        {
          v169 = v23;
          v170 = v25;
          v171 = BYTE2(v25);
          v172 = BYTE3(v25);
          v173 = BYTE4(v25);
          v174 = BYTE5(v25);
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of WorkoutPlan.Route?(v24, v23, v25);
          outlined copy of WorkoutPlan.Route?(v20, v19, v21);
          outlined copy of Data?(v19, v21);
          outlined copy of Data?(v23, v25);
          v86 = memcmp(&v163, &v169, BYTE6(v25));
          outlined consume of Data?(v147, v25);
        }

        v158 = v86 == 0;
        v23 = v147;
LABEL_132:
        outlined consume of Data?(v19, v21);
        outlined consume of WorkoutPlan.Route?(v24, v23, v25);

        outlined consume of Data?(v19, v21);
        outlined consume of WorkoutPlan.Route?(v20, v19, v21);
        v8 = v160;
        v9 = v161;
        if (!v158)
        {
          goto LABEL_9;
        }

LABEL_30:
        v31 = v0[21];
        v32 = v0[13];
        v33 = v0[7];
        v34 = v15[7];
        v35 = *(v150 + 48);
        outlined init with copy of UUID?(v0[18] + v34, v32, &_s10Foundation4UUIDVSgMd, "(!");
        outlined init with copy of UUID?(v31 + v34, v32 + v35, &_s10Foundation4UUIDVSgMd, "(!");
        v36 = *v151;
        if ((*v151)(v32, 1, v33) == 1)
        {
          v37 = v36(v32 + v35, 1, v0[7]);
          v6 = v153;
          v9 = v161;
          if (v37 != 1)
          {
            goto LABEL_8;
          }

          outlined destroy of (UUID?, UUID?)(v0[13], &_s10Foundation4UUIDVSgMd, "(!");
        }

        else
        {
          v38 = v0[7];
          outlined init with copy of UUID?(v0[13], v0[11], &_s10Foundation4UUIDVSgMd, "(!");
          if (v36(v32 + v35, 1, v38) == 1)
          {
            (*v149)(v0[11], v0[7]);
            v6 = v153;
            v9 = v161;
LABEL_8:
            outlined destroy of (UUID?, UUID?)(v0[13], &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
            goto LABEL_9;
          }

          v39 = v0[13];
          v41 = v0[10];
          v40 = v0[11];
          v42 = v0[7];
          (*v139)(v41, v32 + v35, v42);
          lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
          v43 = dispatch thunk of static Equatable.== infix(_:_:)();
          v44 = *v149;
          (*v149)(v41, v42);
          v44(v40, v42);
          v8 = v160;
          outlined destroy of (UUID?, UUID?)(v39, &_s10Foundation4UUIDVSgMd, "(!");
          v6 = v153;
          v9 = v161;
          if ((v43 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v45 = v15[8];
        v46 = *(v0[18] + v45);
        v47 = *(v0[21] + v45);
        if (v46)
        {
          if (!v47)
          {
            goto LABEL_9;
          }

          v48 = *(v46 + 16);
          if (v48 != *(v47 + 16))
          {
            goto LABEL_9;
          }

          if (v48 && v46 != v47)
          {
            v49 = (*(v134 + 80) + 32) & ~*(v134 + 80);
            __s2 = *(v134 + 72);
            v156 = *(v134 + 16);

            v143 = v46;
            v146 = v47;
            while (1)
            {
              v156(v0[10], v46 + v49, v0[7]);
              v51 = v0[9];
              v50 = v0[10];
              v52 = v0[7];
              v156(v51, v47 + v49, v52);
              lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
              v53 = dispatch thunk of static Equatable.== infix(_:_:)();
              v54 = *v149;
              (*v149)(v51, v52);
              v54(v50, v52);
              if ((v53 & 1) == 0)
              {
                break;
              }

              v46 = v143;
              v49 += __s2;
              --v48;
              v47 = v146;
              if (!v48)
              {

                v55 = v0[21];
                v56 = v0[18];
                v6 = v153;
                v8 = v160;
                v9 = v161;
                goto LABEL_66;
              }
            }

            v6 = v153;
            goto LABEL_57;
          }
        }

        else if (v47)
        {
          goto LABEL_9;
        }

LABEL_66:
        v65 = *(v138 + 20);
        if (static Date.== infix(_:_:)())
        {
          v91 = v0[19];
          v92 = v0[20];
          v93 = v0[6];
          outlined init with take of ScheduledWorkoutPlan(v0[18], v91);
          outlined init with take of ScheduledWorkoutPlan(v91, v92);
          outlined init with copy of UUID?(v92 + *(v138 + 24), v93, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v94 = type metadata accessor for Date();
          v95 = (*(*(v94 - 8) + 48))(v93, 1, v94);
          v96 = v0[20];
          v2 = v148;
          if (v95 == 1)
          {
            v97 = v0[17];
            outlined destroy of (UUID?, UUID?)(v0[6], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined init with copy of ScheduledWorkoutPlan(v96, v97, type metadata accessor for ScheduledWorkoutPlan);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v136 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v136[2] + 1, 1, v136, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
            }

            v98 = v136;
            v100 = v136[2];
            v99 = v136[3];
            if (v100 >= v99 >> 1)
            {
              v98 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v99 > 1, v100 + 1, 1, v136, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
            }

            v101 = v0[21];
            v103 = v0[16];
            v102 = v0[17];
            *(v98 + 16) = v100 + 1;
            v136 = v98;
            outlined init with take of ScheduledWorkoutPlan(v102, v98 + v133 + v100 * v8);
            outlined init with copy of ScheduledWorkoutPlan(v101, v103, type metadata accessor for ScheduledWorkoutPlan);
            v104 = v135;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v104 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135[2] + 1, 1, v135, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
            }

            v106 = v104[2];
            v105 = v104[3];
            v135 = v104;
            if (v106 >= v105 >> 1)
            {
              v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v105 > 1, v106 + 1, 1, v104, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
            }

            v107 = v0[16];
            outlined destroy of ScheduledWorkoutPlan(v0[20], type metadata accessor for ScheduledWorkoutPlan);
            v135[2] = v106 + 1;
            outlined init with take of ScheduledWorkoutPlan(v107, v135 + v133 + v106 * v8);
          }

          else
          {
            v108 = v0[6];
            outlined destroy of ScheduledWorkoutPlan(v0[20], type metadata accessor for ScheduledWorkoutPlan);
            outlined destroy of (UUID?, UUID?)(v108, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

          v3 = v155;
          v6 = v153;
          goto LABEL_4;
        }

LABEL_9:
        ++v10;
        outlined destroy of ScheduledWorkoutPlan(v0[18], type metadata accessor for ScheduledWorkoutPlan);
        if (v10 == v9)
        {
          v2 = v148;
          v3 = v155;
          goto LABEL_4;
        }
      }

      v64 = 0;
      if (!v19 && v21 == 0xC000000000000000 && v25 >> 62 == 3)
      {
        v64 = 0;
        if (!v23 && v25 == 0xC000000000000000)
        {
          outlined copy of WorkoutPlan.Route?(v20, 0, 0xC000000000000000);
          outlined copy of WorkoutPlan.Route?(v24, 0, 0xC000000000000000);
          outlined copy of WorkoutPlan.Route?(v20, 0, 0xC000000000000000);
          outlined copy of Data?(0, 0xC000000000000000);
          outlined copy of Data?(0, 0xC000000000000000);
          outlined consume of Data?(0, 0xC000000000000000);
          goto LABEL_23;
        }
      }

LABEL_78:
      if (v63 <= 1)
      {
        goto LABEL_79;
      }

      goto LABEL_84;
    }

LABEL_4:
    ++v3;
    outlined destroy of ScheduledWorkoutPlan(v0[21], type metadata accessor for ScheduledWorkoutPlan);
  }

  while (v3 != v154);
  v109 = v0[22];

  v110 = v135;
  v111 = v136;
LABEL_148:

  v0[27] = v111;
  v0[28] = v110;
  if (!v110[2])
  {

    if (one-time initialization token for scheduling != -1)
    {
      goto LABEL_163;
    }

    goto LABEL_153;
  }

  v113 = static WorkoutScheduler.bundleId;
  v112 = unk_27E168D50;
  v0[29] = unk_27E168D50;

  v114 = swift_task_alloc();
  v0[30] = v114;
  *v114 = v0;
  v114[1] = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  v115 = *MEMORY[0x277D85DE8];

  return specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)(v111, v113, v112);
}

{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  v2[31] = v0;

  v5 = v2[29];
  if (v0)
  {
    v7 = v2[27];
    v6 = v2[28];

    v8 = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  }

  else
  {
    v9 = v2[27];

    v8 = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[32] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  v4 = v0[28];
  v5 = *MEMORY[0x277D85DE8];

  return specialized static WorkoutScheduler.add(scheduledWorkouts:for:)(v4, v2, v1);
}

{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 264);
  v3 = *v1;
  v3[34] = v0;

  if (v0)
  {
    v4 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](specialized WorkoutScheduler.markComplete(_:dateComponents:), 0, 0);
  }

  else
  {
    v5 = v3[32];
    v6 = v3[28];

    v8 = v3[20];
    v7 = v3[21];
    v10 = v3[18];
    v9 = v3[19];
    v12 = v3[16];
    v11 = v3[17];
    v13 = v3[13];
    v15 = v3[10];
    v14 = v3[11];
    v20 = v3[9];
    v16 = v3[6];

    v17 = v3[1];
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }
}

{
  v27 = v0;
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = v0[31];
  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WorkoutKitLog.scheduling);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26[0] = v7;
    *v6 = 136315138;
    v0[3] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v26);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B5E7000, v4, v5, "failed to mark workouts as complete due to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA1330](v7, -1, -1);
    MEMORY[0x23EEA1330](v6, -1, -1);
  }

  else
  {
  }

  v13 = v0[20];
  v12 = v0[21];
  v15 = v0[18];
  v14 = v0[19];
  v17 = v0[16];
  v16 = v0[17];
  v18 = v0[13];
  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  v25 = v0[6];

  v22 = v0[1];
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

{
  v29 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = v0[32];
  v2 = v0[28];

  v3 = v0[34];
  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WorkoutKitLog.scheduling);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28[0] = v9;
    *v8 = 136315138;
    v0[3] = v3;
    v10 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v28);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23B5E7000, v6, v7, "failed to mark workouts as complete due to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEA1330](v9, -1, -1);
    MEMORY[0x23EEA1330](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[20];
  v14 = v0[21];
  v17 = v0[18];
  v16 = v0[19];
  v19 = v0[16];
  v18 = v0[17];
  v20 = v0[13];
  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[9];
  v27 = v0[6];

  v24 = v0[1];
  v25 = *MEMORY[0x277D85DE8];

  return v24();
}

unint64_t lazy protocol witness table accessor for type WorkoutScheduler.AuthorizationState and conformance WorkoutScheduler.AuthorizationState()
{
  result = lazy protocol witness table cache variable for type WorkoutScheduler.AuthorizationState and conformance WorkoutScheduler.AuthorizationState;
  if (!lazy protocol witness table cache variable for type WorkoutScheduler.AuthorizationState and conformance WorkoutScheduler.AuthorizationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutScheduler.AuthorizationState and conformance WorkoutScheduler.AuthorizationState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutScheduler.AuthorizationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutScheduler.AuthorizationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void partial apply for closure #1 in closure #1 in static WorkoutScheduler.requestAuthorization(for:)(void *a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR) - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  closure #1 in closure #1 in static WorkoutScheduler.requestAuthorization(for:)(a1, a2, v6, v7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type AuthorizationError and conformance AuthorizationError()
{
  result = lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError;
  if (!lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError;
  if (!lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError);
  }

  return result;
}

uint64_t outlined destroy of ScheduledWorkoutPlan(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:)(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  return closure #1 in closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:)(a1, a2);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 24);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t outlined copy of WorkoutPlan.Route?(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return outlined copy of Data?(a2, a3);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of WorkoutPlan.Route?(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return outlined consume of Data?(a2, a3);
  }

  return result;
}

uint64_t outlined init with take of ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledWorkoutPlan();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (UUID?, UUID?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ScheduledWorkoutPlan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_34Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static WorkoutScheduler.authorizationState(for:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

void closure #1 in ScheduledWorkoutPlan.protoRepresentation.getterpartial apply(uint64_t a1)
{
  partial apply for closure #1 in ScheduledWorkoutPlan.protoRepresentation.getter(a1);
}

{
  _s10WorkoutKit09ScheduledA4PlanV19protoRepresentationAA06Apple_a10_Internal_caD0VvgyAFzKXEfU_TA_0(a1);
}

uint64_t type metadata accessor for Apple_Workout_WorkoutConfiguration()
{
  result = type metadata singleton initialization cache for Apple_Workout_WorkoutConfiguration;
  if (!type metadata singleton initialization cache for Apple_Workout_WorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_WorkoutConfiguration()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UInt32?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for UInt32?()
{
  if (!lazy cache variable for type metadata for UInt32?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UInt32?);
    }
  }
}

uint64_t Apple_Workout_WorkoutConfiguration.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v4 = *(type metadata accessor for Apple_Workout_WorkoutConfiguration() + 28);
LABEL_9:
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
      case 2:
        v3 = *(type metadata accessor for Apple_Workout_WorkoutConfiguration() + 24);
        goto LABEL_9;
      case 1:
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
    }
  }
}

uint64_t Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      closure #2 in Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)(v0);
      v3 = v0 + *(type metadata accessor for Apple_Workout_WorkoutConfiguration() + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_WorkoutConfiguration();
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_WorkoutConfiguration();
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutConfiguration@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v4 = a2 + a1[5];
  result = UnknownStorage.init()();
  v6 = a1[7];
  v7 = a2 + a1[6];
  *v7 = 0;
  v7[4] = 1;
  v8 = a2 + v6;
  *v8 = 0;
  v8[4] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_WorkoutConfiguration;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_WorkoutConfiguration@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_WorkoutConfiguration._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutConfiguration()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutConfiguration()
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutConfiguration()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_WorkoutConfiguration.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for Apple_Workout_WorkoutConfiguration();
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v16 = v4[5];
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for defaultInstance()
{
  v0 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  v5 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp) = 0;
  v7 = v3 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
  *v7 = 0;
  *(v7 + 8) = 1;
  static Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  v4 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  v5 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks) = MEMORY[0x277D84F90];
  result = (v6)(v3 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown, 1, 1, v5);
  static Apple_Workout_CustomWorkoutComposition._StorageClass.defaultInstance = v3;
  return result;
}

{
  v0 = type metadata accessor for Apple_Workout_IntervalStep._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  v4 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  v5 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  static Apple_Workout_IntervalStep._StorageClass.defaultInstance = v3;
  return result;
}

uint64_t Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.__deallocating_deinit()
{
  outlined destroy of Apple_Workout_WorkoutPlan?(v0 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void type metadata completion function for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass()
{
  type metadata accessor for Apple_Workout_WorkoutPlan?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Apple_Workout_WorkoutPlan?()
{
  if (!lazy cache variable for type metadata for Apple_Workout_WorkoutPlan?)
  {
    type metadata accessor for Apple_Workout_WorkoutPlan(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Apple_Workout_WorkoutPlan?);
    }
  }
}

uint64_t type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Internal_ScheduledWorkoutPlan()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    v7 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(v6);

    *(v1 + v2) = v10;
  }

  return closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)();
}

uint64_t closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)();
        break;
      case 2:
        closure #2 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)();
        break;
      case 1:
        closure #1 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)();
        break;
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_WorkoutPlan(0);
  lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  result = closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
    swift_beginAccess();
    if (*(a1 + v7))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    return closure #2 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(a1);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutPlan?(a1 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan?(v8, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutPlan(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutPlan(v13);
}

uint64_t closure #2 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static Apple_Workout_Internal_ScheduledWorkoutPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4PlanVSg_ADtMR);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v20 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutPlan?(a1 + v20, v19);
  v21 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  v22 = *(v9 + 56);
  outlined init with copy of Apple_Workout_WorkoutPlan?(v19, v12);
  outlined init with copy of Apple_Workout_WorkoutPlan?(a2 + v21, &v12[v22]);
  v23 = *(v5 + 48);
  if (v23(v12, 1, v4) == 1)
  {

    outlined destroy of Apple_Workout_WorkoutPlan?(v19, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    if (v23(&v12[v22], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutPlan?(v12, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_WorkoutPlan?(v12, v16);
  if (v23(&v12[v22], 1, v4) == 1)
  {

    outlined destroy of Apple_Workout_WorkoutPlan?(v19, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    outlined destroy of Apple_Workout_WorkoutPlan(v16);
LABEL_6:
    outlined destroy of Apple_Workout_WorkoutPlan?(v12, &_s10WorkoutKit06Apple_a1_A4PlanVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4PlanVSg_ADtMR);
LABEL_12:

    return 0;
  }

  v24 = v36;
  outlined init with take of Apple_Workout_WorkoutPlan(&v12[v22], v36);

  v25 = specialized static Apple_Workout_WorkoutPlan.== infix(_:_:)(v16, v24);
  outlined destroy of Apple_Workout_WorkoutPlan(v24);
  outlined destroy of Apple_Workout_WorkoutPlan?(v19, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  outlined destroy of Apple_Workout_WorkoutPlan(v16);
  outlined destroy of Apple_Workout_WorkoutPlan?(v12, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  if ((v25 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v26 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v28 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
  swift_beginAccess();
  if (v27 != *(a2 + v28))
  {
    goto LABEL_12;
  }

  v29 = a1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);

  v31 = a2 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
  swift_beginAccess();
  v32 = *v31;
  v33 = *(v31 + 8);

  if (v29)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (v30 == v32)
    {
      v35 = v33;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Internal_ScheduledWorkoutPlan@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Internal_ScheduledWorkoutPlan._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Internal_ScheduledWorkoutPlan()
{
  lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Internal_ScheduledWorkoutPlan()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined init with take of Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Apple_Workout_Internal_ScheduledWorkoutPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static Apple_Workout_Internal_ScheduledWorkoutPlan.== infix(_:_:)(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  v8 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
  *(v1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp) = 0;
  v10 = v1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutPlan?(a1 + v11, v6);
  swift_beginAccess();
  outlined assign with take of Apple_Workout_WorkoutPlan?(v6, v1 + v7);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
  swift_beginAccess();
  v13 = *(a1 + v12);
  swift_beginAccess();
  *(v1 + v9) = v13;
  v14 = (a1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp);
  swift_beginAccess();
  v15 = *v14;
  LOBYTE(v14) = *(v14 + 8);
  swift_beginAccess();
  *v10 = v15;
  *(v10 + 8) = v14;
  return v1;
}

uint64_t outlined assign with take of Apple_Workout_WorkoutPlan?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t closure #1 in closure #1 in static Apple_Workout_SpeedAlert.targetAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for Apple_Workout_SpeedValue(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_0(v7, a1, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in static Apple_Workout_SpeedAlert.targetAlert(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v17[-v11];
  if (*(a2 + *(a3(0, v10) + 20)))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *a1 = v13;
  *(a1 + 8) = 1;
  *(a1 + 16) = a4;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_SpeedAlert(0);
  v18 = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert);
  static Message.with(_:)();
  v14 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  v15 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_0(v12, a1 + *(v15 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_SpeedAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  type metadata accessor for Apple_Workout_SpeedRange(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_0(v7, a1, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_SpeedAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v5 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue);
  static Message.with(_:)();
  v16 = v2;
  v10 = type metadata accessor for Apple_Workout_SpeedRange(0);
  v11 = *(v10 + 20);
  outlined destroy of Apple_Workout_SpeedValue?(a1 + v11, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  outlined init with take of Apple_Workout_SpeedValue(v9, a1 + v11, type metadata accessor for Apple_Workout_SpeedValue);
  v12 = *(v6 + 56);
  v12(a1 + v11, 0, 1, v5);
  v17 = v19;
  static Message.with(_:)();
  v13 = *(v10 + 24);
  outlined destroy of Apple_Workout_SpeedValue?(a1 + v13, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  outlined init with take of Apple_Workout_SpeedValue(v9, a1 + v13, type metadata accessor for Apple_Workout_SpeedValue);
  return (v12)(a1 + v13, 0, 1, v5);
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_SpeedAlert.targetAlert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a4;
  v6 = type metadata accessor for Apple_Workout_TimeValue(0);
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[4] = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue);
  static Message.with(_:)();
  v15 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v16 = *(v15 + 20);
  outlined destroy of Apple_Workout_SpeedValue?(a1 + v16, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with take of Apple_Workout_SpeedValue(v14, a1 + v16, type metadata accessor for Apple_Workout_DistanceValue);
  (*(v11 + 56))(a1 + v16, 0, 1, v10);
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue);
  static Message.with(_:)();
  v17 = *(v15 + 24);
  outlined destroy of Apple_Workout_SpeedValue?(a1 + v17, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with take of Apple_Workout_SpeedValue(v9, a1 + v17, type metadata accessor for Apple_Workout_TimeValue);
  return (*(v20 + 56))(a1 + v17, 0, 1, v6);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static Apple_Workout_SpeedAlert.targetAlert(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  *a1 = 1;
  *(a1 + 8) = 1;
  v7 = [objc_opt_self() metersPerSecond];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v9 = v8;
  result = (*(v3 + 8))(v6, v2);
  *(a1 + 16) = v9;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in static Apple_Workout_SpeedAlert.rangeAlert(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  *a1 = 1;
  *(a1 + 8) = 1;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR) + 36);
  v8 = [objc_opt_self() metersPerSecond];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v10 = v9;
  result = (*(v3 + 8))(v6, v2);
  *(a1 + 16) = v10;
  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_SpeedValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_SpeedValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

WorkoutKit::WKAnalyticsEvent::EventName_optional __swiftcall WKAnalyticsEvent.EventName.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WKAnalyticsEvent.EventName.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t WKAnalyticsEvent.EventName.rawValue.getter()
{
  v1 = 0xD000000000000023;
  v2 = 0xD00000000000002ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000023;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WKAnalyticsEvent.EventName()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WKAnalyticsEvent.EventName()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WKAnalyticsEvent.EventName()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.EventName(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000023;
  v3 = "ntrackerapp.sharing";
  v4 = 0xD00000000000002ELL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000023;
    v3 = "ntrackerapp.insession.platters";
  }

  if (*v1)
  {
    v5 = "com.apple.WorkoutKit.api";
  }

  else
  {
    v2 = 0xD000000000000018;
    v5 = &unk_23B67ECE0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

WorkoutKit::WKAnalyticsEvent::Key_optional __swiftcall WKAnalyticsEvent.Key.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WKAnalyticsEvent.Key.rawValue.getter()
{
  result = 0x7974697669746361;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      v2 = 1634891108;
      goto LABEL_17;
    case 3:
      result = 0x746E696F70646E65;
      break;
    case 4:
      result = 0x656D656761676E65;
      break;
    case 5:
      result = 0x657079546C616F67;
      break;
    case 6:
      v2 = 1633906540;
LABEL_17:
      result = v2 | 0x6E6F697400000000;
      break;
    case 7:
      result = 7889261;
      break;
    case 8:
      result = 0x63697274656DLL;
      break;
    case 9:
      result = 7235949;
      break;
    case 0xA:
      result = 3159408;
      break;
    case 0xB:
      result = 3160432;
      break;
    case 0xC:
      result = 3488112;
      break;
    case 0xD:
      result = 3750256;
      break;
    case 0xE:
      result = 0x4472657474616C70;
      break;
    case 0xF:
      result = 0x5472657474616C70;
      break;
    case 0x10:
      result = 0x72656469766F7270;
      break;
    case 0x11:
      result = 0xD000000000000014;
      break;
    case 0x12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WKAnalyticsEvent.Key(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = WKAnalyticsEvent.Key.rawValue.getter();
  v4 = v3;
  if (v2 == WKAnalyticsEvent.Key.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WKAnalyticsEvent.Key()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WKAnalyticsEvent.Key.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WKAnalyticsEvent.Key()
{
  v2 = *v0;
  WKAnalyticsEvent.Key.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WKAnalyticsEvent.Key()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WKAnalyticsEvent.Key.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.Key@<X0>(uint64_t *a1@<X8>)
{
  result = WKAnalyticsEvent.Key.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

WorkoutKit::WKAnalyticsEvent::APIEndpoint_optional __swiftcall WKAnalyticsEvent.APIEndpoint.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v4 = rawValue;
  v5 = NSString.init(stringLiteral:)();
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = NSString.init(stringLiteral:)();
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = v9;
      v13 = NSString.init(stringLiteral:)();
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {

        v8 = 2;
      }

      else
      {
        v15 = v12;
        v16 = NSString.init(stringLiteral:)();
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {

          v8 = 3;
        }

        else
        {
          v18 = v15;
          v19 = NSString.init(stringLiteral:)();
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {

            v8 = 4;
          }

          else
          {
            v21 = NSString.init(stringLiteral:)();
            v22 = static NSObject.== infix(_:_:)();

            if (v22)
            {
              v8 = 5;
            }

            else
            {
              v8 = 6;
            }
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

uint64_t WKAnalyticsEvent.APIEndpoint.rawValue.getter()
{
  v1 = *v0;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  return NSString.init(stringLiteral:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WKAnalyticsEvent.APIEndpoint(char *a1, char *a2)
{
  v7 = *a1;
  v6 = *a2;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  v3 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  v4 = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WKAnalyticsEvent.APIEndpoint()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance WKAnalyticsEvent.APIEndpoint()
{
  v2 = *v0;
  v1 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WKAnalyticsEvent.APIEndpoint()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.APIEndpoint@<X0>(uint64_t *a1@<X8>)
{
  result = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WKAnalyticsEvent.LocationType.rawValue.getter()
{
  return WKAnalyticsEvent.LocationType.rawValue.getter();
}

{
  v1 = *v0;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  return NSString.init(stringLiteral:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WKAnalyticsEvent.LocationType(char *a1, char *a2)
{
  return protocol witness for static Equatable.== infix(_:_:) in conformance WKAnalyticsEvent.LocationType(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v4 = NSString.init(stringLiteral:)();
  v5 = NSString.init(stringLiteral:)();
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WKAnalyticsEvent.LocationType()
{
  return protocol witness for Hashable.hashValue.getter in conformance WKAnalyticsEvent.LocationType();
}

{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSString.init(stringLiteral:)();
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance WKAnalyticsEvent.LocationType()
{
  protocol witness for Hashable.hash(into:) in conformance WKAnalyticsEvent.LocationType();
}

{
  v1 = *v0;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSString.init(stringLiteral:)();
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WKAnalyticsEvent.LocationType()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance WKAnalyticsEvent.LocationType();
}

{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSString.init(stringLiteral:)();
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.LocationType@<X0>(uint64_t *a1@<X8>)
{
  return protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.LocationType(a1);
}

{
  v3 = *v1;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  result = NSString.init(stringLiteral:)();
  *a1 = result;
  return result;
}

void WKAnalyticsEvent.LocationType.init(rawValue:)(void *a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v4 = a1;
  v5 = NSString.init(stringLiteral:)();
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    v7 = 0;
  }

  else
  {
    v8 = NSString.init(stringLiteral:)();
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a2 = v7;
}

uint64_t static WKAnalyticsEvent.metricPlatters(_:activityType:configurationType:duration:isIndoor:swimmingLocationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  v58 = a8;
  v57 = a7;
  v56 = a6;
  v55 = a5;
  v54 = a4;
  v53 = a3;
  v52 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v51 = UUID.uuidString.getter();
  v59 = v16;
  (*(v12 + 8))(v15, v11);
  v17 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 64);
  v21 = (v18 + 63) >> 6;
  v50 = 0x800000023B67EDA0;
  v49 = 0x800000023B67EE30;
  v48 = 0x800000023B67EE50;
  v60 = a1;

  v23 = 0;
  v47 = xmmword_23B67A7C0;
  while (v20)
  {
LABEL_9:
    v32 = __clz(__rbit64(v20)) | (v23 << 6);
    v33 = *(v60 + 56);
    v34 = (*(v60 + 48) + 16 * v32);
    v35 = v34[1];
    v61 = *v34;
    v36 = *(v33 + 8 * v32);
    v63 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v47;
    *(inited + 32) = 0x7974697669746361;
    v62 = inited + 32;
    *(inited + 40) = 0xEC00000065707954;
    v38 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v39 = MEMORY[0x23EEA0A00](v52, v53);
    v40 = [v38 initWithString_];

    *(inited + 48) = v40;
    *(inited + 56) = 0xD000000000000011;
    *(inited + 64) = v50;
    v41 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v42 = MEMORY[0x23EEA0A00](v54, v55);
    v43 = [v41 initWithString_];

    *(inited + 72) = v43;
    *(inited + 80) = 0x6E6F697461727564;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(inited + 104) = 0x4472657474616C70;
    *(inited + 112) = 0xEF6E6F6974617275;
    *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(inited + 128) = 0x5472657474616C70;
    *(inited + 136) = 0xEB00000000657079;
    v44 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v45 = MEMORY[0x23EEA0A00](v61, v35);

    v46 = [v44 initWithString_];

    *(inited + 144) = v46;
    strcpy((inited + 152), "locationType");
    *(inited + 165) = 0;
    *(inited + 166) = -5120;
    type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    v20 &= v20 - 1;
    *(inited + 168) = NSString.init(stringLiteral:)();
    *(inited + 176) = 0xD000000000000014;
    *(inited + 184) = v49;
    v24 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v25 = MEMORY[0x23EEA0A00](v57, v58);
    v26 = [v24 initWithString_];

    *(inited + 192) = v26;
    *(inited + 200) = 0xD000000000000012;
    *(inited + 208) = v48;
    v27 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v28 = MEMORY[0x23EEA0A00](v51, v59);
    v29 = [v27 initWithString_];

    *(inited + 216) = v29;
    v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayDestroy();
    specialized static WKAnalyticsEvent.send(eventName:payload:)(&v63, v30);
  }

  while (1)
  {
    v31 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v31 >= v21)
    {
    }

    v20 = *(v17 + 8 * v31);
    ++v23;
    if (v20)
    {
      v23 = v31;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static WKAnalyticsEvent.share(engagement:activityType:configurationType:goalType:)(void *a1, void *a2, void *a3, void *a4)
{
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B678DF0;
  *(inited + 32) = 0x656D656761676E65;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = a1;
  strcpy((inited + 56), "activityType");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = a2;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x800000023B67EDA0;
  *(inited + 96) = a3;
  *(inited + 104) = 0x657079546C616F67;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = a4;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  specialized static WKAnalyticsEvent.send(eventName:payload:)(&v15, v13);
}

uint64_t static WKAnalyticsEvent.latency(metric:analytics:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B6792F0;
  *(inited + 32) = 0x63697274656DLL;
  *(inited + 40) = 0xE600000000000000;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(inited + 48) = NSString.init(stringLiteral:)();
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(inited + 32);
  v6 = WKPercentileAnalytics.min.getter();
  v7 = 0x277CCA000uLL;
  v8 = &off_278B84000;
  if ((v9 & 1) == 0)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 7235949, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  }

  v12 = WKPercentileAnalytics.max.getter();
  if ((v13 & 1) == 0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 7889261, 0xE300000000000000, v15);
  }

  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  if (v16 >> 62)
  {
    goto LABEL_80;
  }

  if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v17 = *(a2 + 16);
      if (v17 >> 62)
      {
        if (v17 < 0)
        {
          v55 = *(a2 + 16);
        }

        else
        {
          v55 = v17 & 0xFFFFFFFFFFFFFF8;
        }

        v18 = MEMORY[0x23EEA0C00](v55);
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v18)
      {
LABEL_20:

        v7 = 0x277CCA000;
        goto LABEL_22;
      }

      v19 = 0;
      v7 = v17 & 0xFFFFFFFFFFFFFF8;
      while ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x23EEA0B80](v19, v17);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_14:
        if (*(v20 + 32) == 0.5)
        {

          v22 = *(v20 + 24);

          v7 = 0x277CCA000uLL;
          v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v8[113]];
          v24 = swift_isUniquelyReferenced_nonNull_native();
          v59 = v5;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 3159408, 0xE300000000000000, v24);
          goto LABEL_22;
        }

        ++v19;
        if (v21 == v18)
        {
          goto LABEL_20;
        }
      }

      v16 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 < v16)
      {
        break;
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      if ((v16 & 0x8000000000000000) != 0)
      {
        v51 = v16;
      }

      else
      {
        v51 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      if (v17 < MEMORY[0x23EEA0C00](v51))
      {
        goto LABEL_22;
      }
    }

    v20 = *(v17 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_22:
  v25 = *(a2 + 16);
  v26 = *(a2 + 24);
  if (v25 >> 62)
  {
    if (v25 < 0)
    {
      v52 = *(a2 + 16);
    }

    else
    {
      v52 = v25 & 0xFFFFFFFFFFFFFF8;
    }

    if (v26 < MEMORY[0x23EEA0C00](v52))
    {
      goto LABEL_39;
    }
  }

  else if (v26 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

  v17 = *(a2 + 16);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v56 = *(a2 + 16);
    }

    else
    {
      v56 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    v27 = MEMORY[0x23EEA0C00](v56);
  }

  else
  {
    v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27)
  {
    v28 = 0;
    v7 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x23EEA0B80](v28, v17);
        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v16 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28 >= v16)
        {
          goto LABEL_77;
        }

        v29 = *(v17 + 8 * v28 + 32);

        v30 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      if (*(v29 + 32) == 0.9)
      {
        break;
      }

      ++v28;
      if (v30 == v27)
      {
        goto LABEL_37;
      }
    }

    v31 = *(v29 + 24);

    v7 = 0x277CCA000uLL;
    v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v8[113]];
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, 3160432, 0xE300000000000000, v33);
  }

  else
  {
LABEL_37:

    v7 = 0x277CCA000;
  }

LABEL_39:
  v34 = *(a2 + 16);
  v35 = *(a2 + 24);
  if (v34 >> 62)
  {
    if (v34 < 0)
    {
      v53 = *(a2 + 16);
    }

    else
    {
      v53 = v34 & 0xFFFFFFFFFFFFFF8;
    }

    if (v35 < MEMORY[0x23EEA0C00](v53))
    {
      goto LABEL_56;
    }
  }

  else if (v35 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

  v17 = *(a2 + 16);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v57 = *(a2 + 16);
    }

    else
    {
      v57 = v17 & 0xFFFFFFFFFFFFFF8;
    }

    v36 = MEMORY[0x23EEA0C00](v57);
  }

  else
  {
    v36 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v36)
  {
    v37 = 0;
    v7 = v17 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x23EEA0B80](v37, v17);
        v8 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v16 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37 >= v16)
        {
          goto LABEL_78;
        }

        v38 = *(v17 + 8 * v37 + 32);

        v8 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      if (*(v38 + 32) == 0.95)
      {
        break;
      }

      ++v37;
      if (v8 == v36)
      {
        goto LABEL_54;
      }
    }

    v39 = *(v38 + 24);

    v7 = 0x277CCA000uLL;
    v8 = &off_278B84000;
    v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, 3488112, 0xE300000000000000, v41);
  }

  else
  {
LABEL_54:

    v8 = &off_278B84000;
    v7 = 0x277CCA000;
  }

LABEL_56:
  v42 = *(a2 + 16);
  v43 = *(a2 + 24);
  if (v42 >> 62)
  {
    if (v42 < 0)
    {
      v54 = *(a2 + 16);
    }

    else
    {
      v54 = v42 & 0xFFFFFFFFFFFFFF8;
    }

    if (v43 < MEMORY[0x23EEA0C00](v54))
    {
      goto LABEL_73;
    }
  }

  else if (v43 < *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_73;
  }

  a2 = *(a2 + 16);
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v58 = a2;
    }

    else
    {
      v58 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = MEMORY[0x23EEA0C00](v58);
  }

  else
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17)
  {
    v44 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x23EEA0B80](v44, a2);
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v44 >= v16)
        {
          goto LABEL_79;
        }

        v45 = *(a2 + 8 * v44 + 32);

        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }
      }

      if (*(v45 + 32) == 0.99)
      {
        break;
      }

      ++v44;
      if (v46 == v17)
      {
        goto LABEL_71;
      }
    }

    v47 = *(v45 + 24);

    v48 = [objc_allocWithZone(*(v7 + 2992)) v8[113]];
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v59 = v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, 3750256, 0xE300000000000000, v49);
  }

  else
  {
LABEL_71:
  }

LABEL_73:
  if (*(v5 + 16) >= 2uLL)
  {
    LOBYTE(v59) = 3;
    specialized static WKAnalyticsEvent.send(eventName:payload:)(&v59, v5);
  }
}

void closure #1 in static WKAnalyticsEvent.send(eventName:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x23EEA0A00]();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = partial apply for closure #1 in closure #1 in static WKAnalyticsEvent.send(eventName:payload:);
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v7[3] = &block_descriptor_40;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t specialized static WKAnalyticsEvent.send(eventName:payload:)(_BYTE *a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v32 = *(v7 - 8);
  v33 = v7;
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0xD000000000000018;
  v17 = &unk_23B67ECE0;
  v18 = "ntrackerapp.sharing";
  v19 = 0xD00000000000002ELL;
  if (*a1 != 2)
  {
    v19 = 0xD000000000000023;
    v18 = "ntrackerapp.insession.platters";
  }

  if (*a1)
  {
    v16 = 0xD000000000000023;
    v17 = "com.apple.WorkoutKit.api";
  }

  if (*a1 <= 1u)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  if (*a1 <= 1u)
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  v22 = v21 | 0x8000000000000000;
  v23 = [objc_opt_self() sharedConnection];
  if (v23 && (v24 = v23, v25 = [v23 isHealthDataSubmissionAllowed], v24, (v25 & 1) != 0))
  {
    type metadata accessor for NSString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    (*(v12 + 104))(v15, *MEMORY[0x277D851D0], v11);
    v26 = static OS_dispatch_queue.global(qos:)();
    (*(v12 + 8))(v15, v11);
    v27 = swift_allocObject();
    v27[2] = v20;
    v27[3] = v22;
    v27[4] = v31;
    aBlock[4] = partial apply for closure #1 in static WKAnalyticsEvent.send(eventName:payload:);
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_2;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v35 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x23EEA0AF0](0, v10, v6, v28);
    _Block_release(v28);

    (*(v34 + 8))(v6, v3);
    (*(v32 + 8))(v10, v33);
  }

  else
  {
  }
}

uint64_t specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a3;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B677F60;
  *(inited + 32) = 0x746E696F70646E65;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  *(inited + 56) = 0x72656469766F7270;
  *(inited + 64) = 0xE800000000000000;
  v7 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v8 = MEMORY[0x23EEA0A00](a1, a2);
  v9 = [v7 initWithString_];

  *(inited + 72) = v9;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  specialized static WKAnalyticsEvent.send(eventName:payload:)(&v12, v10);
}

uint64_t outlined destroy of (String, NSObject)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.EventName and conformance WKAnalyticsEvent.EventName()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.EventName and conformance WKAnalyticsEvent.EventName;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.EventName and conformance WKAnalyticsEvent.EventName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.EventName and conformance WKAnalyticsEvent.EventName);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.Key and conformance WKAnalyticsEvent.Key()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.Key and conformance WKAnalyticsEvent.Key;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.Key and conformance WKAnalyticsEvent.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.Key and conformance WKAnalyticsEvent.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.APIEndpoint and conformance WKAnalyticsEvent.APIEndpoint()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.APIEndpoint and conformance WKAnalyticsEvent.APIEndpoint;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.APIEndpoint and conformance WKAnalyticsEvent.APIEndpoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.APIEndpoint and conformance WKAnalyticsEvent.APIEndpoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.LocationType and conformance WKAnalyticsEvent.LocationType()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.LocationType and conformance WKAnalyticsEvent.LocationType;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.LocationType and conformance WKAnalyticsEvent.LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.LocationType and conformance WKAnalyticsEvent.LocationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.LatencyMetric and conformance WKAnalyticsEvent.LatencyMetric()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.LatencyMetric and conformance WKAnalyticsEvent.LatencyMetric;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.LatencyMetric and conformance WKAnalyticsEvent.LatencyMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.LatencyMetric and conformance WKAnalyticsEvent.LatencyMetric);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WKAnalyticsEvent(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WKAnalyticsEvent.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WKAnalyticsEvent.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent.APIEndpoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WKAnalyticsEvent.APIEndpoint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent.LocationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WKAnalyticsEvent.LocationType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for NSString(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

Swift::Int StateError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StateError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StateError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type StateError and conformance StateError()
{
  result = lazy protocol witness table cache variable for type StateError and conformance StateError;
  if (!lazy protocol witness table cache variable for type StateError and conformance StateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateError and conformance StateError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Apple_Workout_CadenceValue.measurement.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for Apple_Workout_TimeValue(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v35 = &v34 - v17;
  v18 = *(type metadata accessor for Apple_Workout_CadenceValue(0) + 24);
  v36 = v2;
  outlined init with copy of Apple_Workout_DistanceValue?(v2 + v18, v6, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v19 = *(v8 + 48);
  if (v19(v6, 1, v7) == 1)
  {
    *v11 = 0;
    v11[8] = 1;
    *(v11 + 2) = 0;
    v20 = &v11[*(v7 + 24)];
    UnknownStorage.init()();
    if (v19(v6, 1, v7) != 1)
    {
      outlined destroy of Apple_Workout_DistanceValue?(v6, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_0(v6, v11, type metadata accessor for Apple_Workout_TimeValue);
  }

  if (v11[8] != 1)
  {
    goto LABEL_8;
  }

  v21 = *v11;
  if (*v11 > 1)
  {
    if (v21 == 2)
    {
      v24 = &selRef_minutes;
    }

    else
    {
      v24 = &selRef_hours;
    }
  }

  else
  {
    if (!v21)
    {
LABEL_8:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v22 = 0;
      swift_willThrow();
      return outlined destroy of Apple_Workout_DistanceValue(v11, type metadata accessor for Apple_Workout_TimeValue);
    }

    v24 = &selRef_seconds;
  }

  v25 = *(v11 + 2);
  v26 = [objc_opt_self() *v24];
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  Measurement.init(value:unit:)();
  outlined destroy of Apple_Workout_DistanceValue(v11, type metadata accessor for Apple_Workout_TimeValue);
  v27 = [objc_opt_self() minutes];
  v28 = v35;
  Measurement<>.converted(to:)();

  v29 = *(v37 + 8);
  v29(v16, v12);
  v30 = *v36;
  Measurement.value.getter();
  v31 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v32 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v33 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  [v32 initWithSymbol:v33 converter:v31];

  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  Measurement.init(value:unit:)();
  return (v29)(v28, v12);
}

uint64_t Apple_Workout_SpeedValue.measurement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v57 - v5;
  v6 = type metadata accessor for Apple_Workout_TimeValue(0);
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v57 - v16;
  v18 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v24 = *(v23 - 8);
  v66 = v23;
  v67 = v24;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v68 = &v57 - v29;
  v30 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v31 = *(v30 + 20);
  v62 = v2;
  outlined init with copy of Apple_Workout_DistanceValue?(v2 + v31, v17, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v32 = *(v19 + 48);
  if (v32(v17, 1, v18) == 1)
  {
    *v22 = 0;
    v22[8] = 1;
    *(v22 + 2) = 0;
    v33 = &v22[*(v18 + 24)];
    UnknownStorage.init()();
    if (v32(v17, 1, v18) != 1)
    {
      outlined destroy of Apple_Workout_DistanceValue?(v17, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    }
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_0(v17, v22, type metadata accessor for Apple_Workout_DistanceValue);
  }

  v34 = v69;
  Apple_Workout_DistanceValue.measurement.getter();
  result = outlined destroy of Apple_Workout_DistanceValue(v22, type metadata accessor for Apple_Workout_DistanceValue);
  v36 = v70;
  if (!v34)
  {
    v37 = [objc_opt_self() meters];
    v38 = v66;
    Measurement<>.converted(to:)();

    v39 = v67 + 8;
    v69 = *(v67 + 8);
    v69(v28, v38);
    outlined init with copy of Apple_Workout_DistanceValue?(v62 + *(v30 + 24), v36, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v40 = v64;
    v41 = *(v63 + 48);
    if (v41(v36, 1, v64) == 1)
    {
      v42 = v65;
      *v65 = 0;
      *(v42 + 8) = 1;
      v42[2] = 0;
      v43 = v42 + *(v40 + 24);
      UnknownStorage.init()();
      if (v41(v36, 1, v40) != 1)
      {
        outlined destroy of Apple_Workout_DistanceValue?(v36, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v42 = v65;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_0(v36, v65, type metadata accessor for Apple_Workout_TimeValue);
    }

    if (*(v42 + 8) != 1)
    {
      goto LABEL_13;
    }

    v44 = *v42;
    if (*v42 > 1)
    {
      v67 = v39;
      if (v44 == 2)
      {
        v46 = &selRef_minutes;
      }

      else
      {
        v46 = &selRef_hours;
      }
    }

    else
    {
      if (!v44)
      {
LABEL_13:
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v45 = 0;
        swift_willThrow();
        outlined destroy of Apple_Workout_DistanceValue(v42, type metadata accessor for Apple_Workout_TimeValue);
        return (v69)(v68, v38);
      }

      v67 = v39;
      v46 = &selRef_seconds;
    }

    v47 = v42[2];
    v48 = [objc_opt_self() *v46];
    type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    v49 = v57;
    Measurement.init(value:unit:)();
    outlined destroy of Apple_Workout_DistanceValue(v42, type metadata accessor for Apple_Workout_TimeValue);
    v50 = [objc_opt_self() seconds];
    v51 = v58;
    v52 = v60;
    Measurement<>.converted(to:)();

    v53 = *(v59 + 8);
    v53(v49, v52);
    v54 = v66;
    v55 = v68;
    Measurement.value.getter();
    Measurement.value.getter();
    v56 = [objc_opt_self() metersPerSecond];
    type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
    Measurement.init(value:unit:)();
    v53(v51, v52);
    return (v69)(v55, v54);
  }

  return result;
}

uint64_t Apple_Workout_DistanceValue.measurement.getter()
{
  if (*(v0 + 8) != 1)
  {
    goto LABEL_6;
  }

  v1 = *v0;
  if (*v0 <= 2)
  {
    if (v1)
    {
      v2 = *(v0 + 16);
      if (v1 == 1)
      {
        v3 = [objc_opt_self() meters];
      }

      else
      {
        v3 = [objc_opt_self() kilometers];
      }

      goto LABEL_13;
    }

LABEL_6:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v4 = 0;
    return swift_willThrow();
  }

  if (v1 == 3)
  {
    v7 = *(v0 + 16);
    v8 = [objc_opt_self() feet];
    type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  v6 = *(v0 + 16);
  if (v1 == 4)
  {
    v3 = [objc_opt_self() yards];
  }

  else
  {
    v3 = [objc_opt_self() miles];
  }

LABEL_13:
  v9 = v3;
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  return Measurement.init(value:unit:)();
}

uint64_t outlined init with copy of Apple_Workout_DistanceValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_DistanceValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_DistanceValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A10_TimeValueVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for NSUnitLength(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t Apple_Workout_WorkoutStep.workoutKitRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for WorkoutStep();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v61 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v51 - v17;
  v19 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for WorkoutGoal();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v65 = (&v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v59 = v2;
  v60 = v27;
  outlined init with copy of Apple_Workout_WorkoutGoal?(v2 + *(v27 + 20), v18, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v28 = *(v20 + 48);
  if (v28(v18, 1, v19) == 1)
  {
    *v23 = 0;
    v23[8] = 1;
    v29 = *(v19 + 20);
    v30 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    (*(*(v30 - 8) + 56))(&v23[v29], 1, 1, v30);
    v31 = &v23[*(v19 + 24)];
    UnknownStorage.init()();
    if (v28(v18, 1, v19) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal?(v18, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    }
  }

  else
  {
    _s10WorkoutKit0A4StepVWObTm_1(v18, v23, type metadata accessor for Apple_Workout_WorkoutGoal);
  }

  v32 = v65;
  v33 = v62;
  Apple_Workout_WorkoutGoal.workoutKitRepresentation.getter(v65);
  result = outlined destroy of Apple_Workout_WorkoutGoal(v23, type metadata accessor for Apple_Workout_WorkoutGoal);
  if (!v33)
  {
    v35 = v61;
    outlined init with copy of WorkoutGoal(v32, v61);
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    v36 = v35 + *(v12 + 20);
    *(v36 + 32) = 0;
    *v36 = 0u;
    *(v36 + 16) = 0u;
    v37 = (v35 + *(v12 + 24));
    *v37 = 0;
    v37[1] = 0;
    v52 = v36;
    v53 = v37;
    outlined assign with take of WorkoutAlert?(v63, v36);
    v38 = v59;
    v39 = *(v60 + 24);
    outlined init with copy of Apple_Workout_WorkoutGoal?(v59 + v39, v11, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    v40 = v58;
    v62 = *(v57 + 48);
    v41 = v62(v11, 1, v58);
    outlined destroy of Apple_Workout_WorkoutGoal?(v11, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    if (v41 == 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal(v65, type metadata accessor for WorkoutGoal);
    }

    else
    {
      v42 = v54;
      outlined init with copy of Apple_Workout_WorkoutGoal?(v38 + v39, v54, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      v43 = v62;
      if (v62(v42, 1, v40) == 1)
      {
        v44 = v55;
        *v55 = 0;
        *(v44 + 8) = 1;
        v44[2] = 0;
        *(v44 + 24) = 1;
        v45 = *(v40 + 24);
        v46 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
        (*(*(v46 - 8) + 56))(v44 + v45, 1, 1, v46);
        v47 = v44 + *(v40 + 28);
        UnknownStorage.init()();
        if (v43(v42, 1, v40) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal?(v42, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
        }
      }

      else
      {
        v44 = v55;
        _s10WorkoutKit0A4StepVWObTm_1(v42, v55, type metadata accessor for Apple_Workout_WorkoutAlert);
      }

      Apple_Workout_WorkoutAlert.workoutKitRepresentation.getter(v63);
      outlined destroy of Apple_Workout_WorkoutGoal(v44, type metadata accessor for Apple_Workout_WorkoutAlert);
      outlined destroy of Apple_Workout_WorkoutGoal(v65, type metadata accessor for WorkoutGoal);
      outlined assign with take of WorkoutAlert?(v63, v52);
    }

    v48 = (v38 + *(v60 + 28));
    v49 = v48[1];
    if (v49)
    {
      v50 = v53;
      *v53 = *v48;
      v50[1] = v49;
    }

    _s10WorkoutKit0A4StepVWObTm_1(v61, v56, type metadata accessor for WorkoutStep);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoal();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of WorkoutAlert?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutGoal?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutGoal?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit0A4StepVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t one-time initialization function for default(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static WorkoutKitLog.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for WorkoutKitLog(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WorkoutKitLog(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

const char *WorkoutKitFeatures.feature.getter()
{
  v1 = "PoolSwimmingCustomWorkouts";
  v2 = "OpenWaterSwimmingCustomWorkouts";
  if (*v0 != 2)
  {
    v2 = "IntervalPaceAlertIndoorRunning";
  }

  if (*v0)
  {
    v1 = "WorkoutPlanRoute";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int WorkoutKitFeatures.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutKitFeatures()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutKitFeatures()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance WorkoutKitFeatures()
{
  v1 = "PoolSwimmingCustomWorkouts";
  v2 = "OpenWaterSwimmingCustomWorkouts";
  if (*v0 != 2)
  {
    v2 = "IntervalPaceAlertIndoorRunning";
  }

  if (*v0)
  {
    v1 = "WorkoutPlanRoute";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutKitFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutKitFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t HKQuantity.lengthMeasurement.getter()
{
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  v28 = v0;
  v1 = [v0 _unit];
  v2 = objc_opt_self();
  v3 = [v2 meterUnitWithMetricPrefix_];
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v5 = [v2 meterUnitWithMetricPrefix_];
    [v28 doubleValueForUnit_];

    v6 = [objc_opt_self() kilometers];
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  v8 = [v0 _unit];
  v9 = [v2 footUnit];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = [v2 footUnit];
    [v28 doubleValueForUnit_];

    v12 = [objc_opt_self() feet];
LABEL_10:
    v21 = v12;
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  v13 = [v0 _unit];
  v14 = [v2 yardUnit];
  v15 = static NSObject.== infix(_:_:)();

  if (v15)
  {
    v16 = [v2 yardUnit];
    [v28 doubleValueForUnit_];

    v12 = [objc_opt_self() yards];
    goto LABEL_10;
  }

  v17 = [v0 _unit];
  v18 = [v2 mileUnit];
  v19 = static NSObject.== infix(_:_:)();

  if (v19)
  {
    v20 = [v2 mileUnit];
    [v28 doubleValueForUnit_];

    v12 = [objc_opt_self() miles];
    goto LABEL_10;
  }

  v22 = [v2 meterUnit];
  v23 = [v28 isCompatibleWithUnit_];

  if (v23)
  {
    v24 = [v2 meterUnit];
    [v28 doubleValueForUnit_];

    v25 = [objc_opt_self() meters];
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  v26 = [v28 _unit];
  lazy protocol witness table accessor for type ImportError and conformance ImportError();
  swift_allocError();
  *v27 = v26;
  return swift_willThrow();
}

uint64_t HKQuantity.durationMeasurement.getter()
{
  v1 = v0;
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  v2 = [v0 _unit];
  v3 = objc_opt_self();
  v4 = [v3 hourUnit];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = [v3 hourUnit];
    [v1 doubleValueForUnit_];

    v7 = [objc_opt_self() hours];
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    return Measurement.init(value:unit:)();
  }

  v8 = [v0 _unit];
  v9 = [v3 minuteUnit];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = [v3 minuteUnit];
    [v1 doubleValueForUnit_];

    v12 = [objc_opt_self() minutes];
LABEL_7:
    v16 = v12;
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    return Measurement.init(value:unit:)();
  }

  v13 = [v3 secondUnit];
  v14 = [v1 isCompatibleWithUnit_];

  if (v14)
  {
    v15 = [v3 secondUnit];
    [v1 doubleValueForUnit_];

    v12 = [objc_opt_self() seconds];
    goto LABEL_7;
  }

  v18 = [v1 0x278B84BEFLL];
  lazy protocol witness table accessor for type ImportError and conformance ImportError();
  swift_allocError();
  *v19 = v18;
  return swift_willThrow();
}

uint64_t HKQuantity.energyMeasurement.getter()
{
  v1 = v0;
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  v2 = [v0 _unit];
  v3 = objc_opt_self();
  v4 = [v3 jouleUnitWithMetricPrefix_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = [v3 jouleUnitWithMetricPrefix_];
    [v1 doubleValueForUnit_];

    v7 = [objc_opt_self() kilojoules];
LABEL_5:
    v11 = v7;
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    return Measurement.init(value:unit:)();
  }

  v8 = [v3 kilocalorieUnit];
  v9 = [v1 isCompatibleWithUnit_];

  if (v9)
  {
    v10 = [v3 kilocalorieUnit];
    [v1 doubleValueForUnit_];

    v7 = [objc_opt_self() kilocalories];
    goto LABEL_5;
  }

  v13 = [v1 _unit];
  lazy protocol witness table accessor for type ImportError and conformance ImportError();
  swift_allocError();
  *v14 = v13;
  return swift_willThrow();
}

uint64_t type metadata accessor for HKUnit(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t ScheduledWorkoutPlan.init(_:scheduledDate:lastCompletedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ScheduledWorkoutPlan();
  v9 = *(v8 + 24);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  (*(v11 + 56))(a4 + v9, 1, 1, v10);
  _s10WorkoutKit0A4PlanVWObTm_0(a1, a4, type metadata accessor for WorkoutPlan);
  (*(v11 + 32))(a4 + *(v8 + 20), a2, v10);
  return outlined assign with take of Date?(a3, a4 + v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t type metadata accessor for ScheduledWorkoutPlan()
{
  result = type metadata singleton initialization cache for ScheduledWorkoutPlan;
  if (!type metadata singleton initialization cache for ScheduledWorkoutPlan)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScheduledWorkoutPlan.init(_:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v40 = type metadata accessor for DateComponents();
  v37 = *(v40 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  v38 = a2;
  Calendar.date(from:)();
  (*(v8 + 8))(v11, v7);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of Date?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v41 = 0xD00000000000002ELL;
    v42 = 0x800000023B67F980;
    v29 = v36;
    v30 = v37;
    v31 = v40;
    (*(v37 + 16))(v36, v38, v40);
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x277CC8990]);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v30 + 8))(v29, v31);
    MEMORY[0x23EEA0A50](v32, v34);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v37 + 8))(v38, v40);
    v24 = *(v20 + 32);
    v24(v23, v18, v19);
    v25 = type metadata accessor for ScheduledWorkoutPlan();
    v24((a3 + *(v25 + 20)), v23, v19);
    v26 = *(v20 + 56);
    v26(v15, 1, 1, v19);
    v27 = *(v25 + 24);
    v26((a3 + v27), 1, 1, v19);
    _s10WorkoutKit0A4PlanVWObTm_0(v39, a3, type metadata accessor for WorkoutPlan);
    return outlined assign with take of Date?(v15, a3 + v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t ScheduledWorkoutPlan.complete.setter(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  if (a1)
  {
    static Date.now.getter();
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    v8 = type metadata accessor for ScheduledWorkoutPlan();
    return outlined assign with take of Date?(v6, v1 + *(v8 + 24), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v10 = *(type metadata accessor for ScheduledWorkoutPlan() + 24);
    outlined destroy of Date?(v1 + v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);

    return v12(v1 + v10, 1, 1, v11);
  }
}

uint64_t ScheduledWorkoutPlan.isEquivalent(to:)(uint64_t a1)
{
  if (!specialized static WorkoutPlan.== infix(_:_:)(v1, a1))
  {
    return 0;
  }

  v2 = *(type metadata accessor for ScheduledWorkoutPlan() + 20);

  return static Date.== infix(_:_:)();
}

BOOL ScheduledWorkoutPlan.complete.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ScheduledWorkoutPlan();
  outlined init with copy of Date?(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Date();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Date?(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v7;
}

uint64_t ScheduledWorkoutPlan.dataRepresentation(as:)(char *a1)
{
  v20 = type metadata accessor for JSONEncodingOptions();
  v18 = *(v20 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = *a1;
  v19 = v1;
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
  if (v14)
  {
    v15 = v7;
    static Message.with(_:)();
    if (!v2)
    {
      JSONEncodingOptions.init()();
      v15 = Message.jsonUTF8Data(options:)();
      (*(v18 + 8))(v6, v20);
      outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v10, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
    }
  }

  else
  {
    v15 = v7;
    static Message.with(_:)();
    if (!v2)
    {
      v15 = Message.serializedData(partial:)();
      outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v13, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
    }
  }

  return v15;
}

uint64_t static ScheduledWorkoutPlan.importFromData(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = type metadata accessor for JSONDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BinaryDecodingOptions();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a19_Internal_ScheduledA4PlanVSgMd, &_s10WorkoutKit06Apple_a19_Internal_ScheduledA4PlanVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v30 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  v36 = a1;
  v37 = a2;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
  v24 = v38;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v24)
  {

    v25 = *(v18 + 56);
    v25(v16, 1, 1, v17);
    outlined destroy of Date?(v16, &_s10WorkoutKit06Apple_a19_Internal_ScheduledA4PlanVSgMd, &_s10WorkoutKit06Apple_a19_Internal_ScheduledA4PlanVSgMR);
    outlined copy of Data._Representation(a1, a2);
    JSONDecodingOptions.init()();
    Message.init(jsonUTF8Data:options:)();
    v25(v13, 0, 1, v17);
    v26 = v30;
    _s10WorkoutKit0A4PlanVWObTm_0(v13, v30, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
    Apple_Workout_Internal_ScheduledWorkoutPlan.workoutKitRepresentation.getter(v31);
    v27 = v26;
  }

  else
  {
    (*(v18 + 56))(v16, 0, 1, v17);
    _s10WorkoutKit0A4PlanVWObTm_0(v16, v23, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
    Apple_Workout_Internal_ScheduledWorkoutPlan.workoutKitRepresentation.getter(v31);
    v27 = v23;
  }

  return outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v27, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
}

uint64_t ScheduledWorkoutPlan.date.getter()
{
  v1 = type metadata accessor for TimeZone();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.current.getter();
  v11 = v0 + *(type metadata accessor for ScheduledWorkoutPlan() + 20);
  Calendar.dateComponents(in:from:)();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t key path getter for ScheduledWorkoutPlan.date : ScheduledWorkoutPlan(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.current.getter();
  v12 = a1 + *(type metadata accessor for ScheduledWorkoutPlan() + 20);
  Calendar.dateComponents(in:from:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t key path setter for ScheduledWorkoutPlan.date : ScheduledWorkoutPlan(uint64_t a1)
{
  v2 = type metadata accessor for DateComponents();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return ScheduledWorkoutPlan.date.setter(v6);
}

uint64_t ScheduledWorkoutPlan.date.setter(uint64_t a1)
{
  v2 = type metadata accessor for DateComponents();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v26[0] = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v26 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  Calendar.date(from:)();
  (*(v7 + 8))(v10, v6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of Date?(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v27 = 0xD00000000000002ELL;
    v28 = 0x800000023B67F980;
    v22 = v26[0];
    (*(v3 + 16))(v26[0], a1, v2);
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x277CC8990]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v3 + 8))(v22, v2);
    MEMORY[0x23EEA0A50](v23, v25);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(a1, v2);
    (*(v16 + 32))(v19, v14, v15);
    v20 = type metadata accessor for ScheduledWorkoutPlan();
    return (*(v16 + 40))(v26[1] + *(v20 + 20), v19, v15);
  }

  return result;
}

void (*ScheduledWorkoutPlan.date.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v6 - 8) + 64));
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(*(v10 - 8) + 64));
  }

  v13 = v12;
  v5[2] = v12;
  v14 = type metadata accessor for DateComponents();
  v5[3] = v14;
  v15 = *(v14 - 8);
  v5[4] = v15;
  v16 = *(v15 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v5[6] = v17;
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.current.getter();
  v18 = v1 + *(type metadata accessor for ScheduledWorkoutPlan() + 20);
  Calendar.dateComponents(in:from:)();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  return ScheduledWorkoutPlan.date.modify;
}

void ScheduledWorkoutPlan.date.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v9 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    ScheduledWorkoutPlan.date.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[1];
    v7 = v2[2];
    v10 = *v2;
    ScheduledWorkoutPlan.date.setter((*a1)[6]);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t key path getter for ScheduledWorkoutPlan.complete : ScheduledWorkoutPlan@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for ScheduledWorkoutPlan();
  outlined init with copy of Date?(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Date();
  LOBYTE(a1) = (*(*(v9 - 8) + 48))(v7, 1, v9) != 1;
  result = outlined destroy of Date?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *a2 = a1;
  return result;
}

uint64_t key path setter for ScheduledWorkoutPlan.complete : ScheduledWorkoutPlan(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  if (*a1 == 1)
  {
    static Date.now.getter();
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    v9 = type metadata accessor for ScheduledWorkoutPlan();
    return outlined assign with take of Date?(v7, a2 + *(v9 + 24), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v11 = *(type metadata accessor for ScheduledWorkoutPlan() + 24);
    outlined destroy of Date?(a2 + v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2 + v11, 1, 1, v12);
  }
}

void (*ScheduledWorkoutPlan.complete.modify(void *a1))(uint64_t **a1)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  v9 = *(type metadata accessor for ScheduledWorkoutPlan() + 24);
  *(v5 + 10) = v9;
  outlined init with copy of Date?(v1 + v9, v8);
  v10 = type metadata accessor for Date();
  v5[3] = v10;
  v11 = *(v10 - 8);
  v5[4] = v11;
  v12 = (*(v11 + 48))(v8, 1, v10) != 1;
  outlined destroy of Date?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v5 + 44) = v12;
  return ScheduledWorkoutPlan.complete.modify;
}

void ScheduledWorkoutPlan.complete.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = ((*a1)[4] + 56);
  v4 = *(*a1 + 10);
  if (*(*a1 + 44))
  {
    v6 = *v1;
    v5 = v1[1];
    static Date.now.getter();
    (*v3)(v5, 0, 1, v2);
    outlined assign with take of Date?(v5, v6 + v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v7 = *v1;
    outlined destroy of Date?(*v1 + v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*v3)(v7 + v4, 1, 1, v2);
  }

  v8 = v1[1];
  free(v1[2]);
  free(v8);

  free(v1);
}

uint64_t ScheduledWorkoutPlan.scheduledDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduledWorkoutPlan() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduledWorkoutPlan.scheduledDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScheduledWorkoutPlan() + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScheduledWorkoutPlan.lastCompletedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScheduledWorkoutPlan() + 24);

  return outlined init with copy of Date?(v3, a1);
}

void ScheduledWorkoutPlan.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15 - v11;
  WorkoutPlan.hash(into:)(a1);
  v13 = type metadata accessor for ScheduledWorkoutPlan();
  v14 = *(v13 + 20);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of Date?(v2 + *(v13 + 24), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }
}

Swift::Int ScheduledWorkoutPlan.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15[-v9 - 8];
  Hasher.init(_seed:)();
  WorkoutPlan.hash(into:)(v15);
  v11 = type metadata accessor for ScheduledWorkoutPlan();
  v12 = *(v11 + 20);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of Date?(v1 + *(v11 + 24), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v16 - v13;
  WorkoutPlan.hash(into:)(a1);
  v15 = *(a2 + 20);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of Date?(v4 + *(a2 + 24), v14);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v7 + 8))(v10, v6);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17[-v12 - 8];
  Hasher.init(_seed:)();
  WorkoutPlan.hash(into:)(v17);
  v14 = *(a2 + 20);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of Date?(v4 + *(a2 + 24), v13);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v9, v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScheduledWorkoutPlan.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C756465686373;
  v4 = 0xED00006574614464;
  v5 = 0x800000023B67EE80;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000023B67EE80;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7A696C6169726573;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEE006E616C506465;
  }

  v8 = 0x656C756465686373;
  if (*a2 == 1)
  {
    v5 = 0xED00006574614464;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7A696C6169726573;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEE006E616C506465;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ScheduledWorkoutPlan.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ScheduledWorkoutPlan.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScheduledWorkoutPlan.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ScheduledWorkoutPlan.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ScheduledWorkoutPlan.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ScheduledWorkoutPlan.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E616C506465;
  v4 = 0xED00006574614464;
  v5 = 0x656C756465686373;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000023B67EE80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7A696C6169726573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ScheduledWorkoutPlan.CodingKeys()
{
  v1 = 0x656C756465686373;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A696C6169726573;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ScheduledWorkoutPlan.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ScheduledWorkoutPlan.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScheduledWorkoutPlan.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScheduledWorkoutPlan.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScheduledWorkoutPlan.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v48 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v48 - v14;
  v15 = type metadata accessor for WorkoutPlan(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WorkoutKit09ScheduledD4PlanV10CodingKeys33_67CB82B903BEAD065118911C28DD1602LLOGMd, &_ss22KeyedDecodingContainerVy10WorkoutKit09ScheduledD4PlanV10CodingKeys33_67CB82B903BEAD065118911C28DD1602LLOGMR);
  v59 = *(v21 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = type metadata accessor for ScheduledWorkoutPlan();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v30 = *(v29 + 24);
  v31 = v7;
  v32 = *(v7 + 56);
  v63 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v30;
  v33 = v6;
  v32(v63 + v30, 1, 1, v6, v27);
  v35 = a1[3];
  v34 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys();
  v36 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
    return outlined destroy of Date?(v63 + v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v50 = v25;
    v51 = v20;
    v37 = v57;
    v38 = v58;
    v52 = v31;
    v60 = v33;
    v66 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v64;
    v39 = v65;
    outlined copy of Data._Representation(v64, v65);
    static WorkoutPlan.protoComposition(from:)(v40, v39, v37);
    v49 = v40;
    outlined init with copy of WorkoutPlan(v37, v38, type metadata accessor for Apple_Workout_WorkoutPlan);
    v41 = v56;
    WorkoutPlan.init(from:)(v38, v56);
    outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v37, type metadata accessor for Apple_Workout_WorkoutPlan);
    v42 = v49;
    outlined consume of Data._Representation(v49, v39);
    v43 = v51;
    _s10WorkoutKit0A4PlanVWObTm_0(v41, v51, type metadata accessor for WorkoutPlan);
    _s10WorkoutKit0A4PlanVWObTm_0(v43, v63, type metadata accessor for WorkoutPlan);
    LOBYTE(v64) = 1;
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    v44 = v60;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v52 + 32))(v63 + *(v50 + 20), v55, v44);
    LOBYTE(v64) = 2;
    v45 = v54;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v59 + 8))(v24, v21);
    outlined consume of Data._Representation(v42, v39);
    v46 = v63;
    outlined assign with take of Date?(v45, v63 + v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of WorkoutPlan(v46, v53, type metadata accessor for ScheduledWorkoutPlan);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v46, type metadata accessor for ScheduledWorkoutPlan);
  }
}

uint64_t ScheduledWorkoutPlan.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WorkoutKit09ScheduledD4PlanV10CodingKeys33_67CB82B903BEAD065118911C28DD1602LLOGMd, &_ss22KeyedEncodingContainerVy10WorkoutKit09ScheduledD4PlanV10CodingKeys33_67CB82B903BEAD065118911C28DD1602LLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  WorkoutPlan.validate()();
  if (v14)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v27 = v11;
  v28 = v8;
  v29 = v7;
  MEMORY[0x28223BE20](v13);
  *(&v27 - 2) = v2;
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);
  v16 = v30;
  static Message.with(_:)();
  v17 = Message.serializedData(partial:)();
  v18 = v27;
  v19 = v28;
  v20 = v17;
  v22 = v21;
  outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v16, type metadata accessor for Apple_Workout_WorkoutPlan);
  v31 = v20;
  v32 = v22;
  v33 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v23 = v29;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v31, v32);
  v24 = type metadata accessor for ScheduledWorkoutPlan();
  v25 = *(v24 + 20);
  LOBYTE(v31) = 1;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v26 = *(v24 + 24);
  LOBYTE(v31) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v19 + 8))(v18, v23);
}

void closure #1 in ScheduledWorkoutPlan.protoRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v63 - v5;
  v7 = type metadata accessor for Date();
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v63 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  WorkoutPlan.validate()();
  if (!v22)
  {
    v65 = v16;
    v66 = v14;
    v67 = v6;
    v64 = v10;
    v70 = v7;
    MEMORY[0x28223BE20](v21);
    *(&v63 - 2) = a2;
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan);
    static Message.with(_:)();
    v63 = 0;
    v23 = *(type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0) + 20);
    v24 = v69;
    v25 = *(v69 + v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v24 + v23);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v31 = specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(v27);

      *(v24 + v23) = v31;
      v27 = v31;
    }

    v32 = v65;
    v33 = v66;
    _s10WorkoutKit0A4PlanVWObTm_0(v19, v66, type metadata accessor for Apple_Workout_WorkoutPlan);
    (*(v32 + 56))(v33, 0, 1, v15);
    v34 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
    swift_beginAccess();
    outlined assign with take of Date?(v33, v27 + v34, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    swift_endAccess();
    v35 = type metadata accessor for ScheduledWorkoutPlan();
    v36 = v20 + *(v35 + 20);
    Date.timeIntervalSince1970.getter();
    v38 = v37;
    v39 = *(v24 + v23);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v24 + v23);
    if ((v40 & 1) == 0)
    {
      v42 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      v45 = specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(v41);

      *(v24 + v23) = v45;
      v41 = v45;
    }

    v46 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
    swift_beginAccess();
    *(v41 + v46) = v38;
    v47 = v67;
    outlined init with copy of Date?(v20 + *(v35 + 24), v67);
    v48 = v68;
    v49 = v70;
    if ((*(v68 + 48))(v47, 1, v70) == 1)
    {
      outlined destroy of Date?(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v50 = v64;
      (*(v48 + 32))(v64, v47, v49);
      Date.timeIntervalSince1970.getter();
      v52 = v51;
      v53 = *(v24 + v23);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        (*(v48 + 8))(v50, v49);
        v54 = *(v24 + v23);
      }

      else
      {
        v55 = v24;
        v56 = *(v24 + v23);
        v57 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
        v58 = *(v57 + 48);
        v59 = *(v57 + 52);
        swift_allocObject();

        v61 = v50;
        v54 = specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(v60);

        (*(v48 + 8))(v61, v49);

        *(v55 + v23) = v54;
      }

      v62 = v54 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
      swift_beginAccess();
      *v62 = v52;
      *(v62 + 8) = 0;
    }
  }
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlan(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL specialized static ScheduledWorkoutPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if (!specialized static WorkoutPlan.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v17 = type metadata accessor for ScheduledWorkoutPlan();
  v18 = *(v17 + 20);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = *(v17 + 24);
  v20 = *(v13 + 48);
  outlined init with copy of Date?(a1 + v19, v16);
  outlined init with copy of Date?(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      outlined destroy of Date?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of Date?(v16, v12);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    outlined destroy of Date?(v16, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v20], v4);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  outlined destroy of Date?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (v23 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutPlan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
  }

  return result;
}

void type metadata completion function for ScheduledWorkoutPlan()
{
  type metadata accessor for WorkoutPlan(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScheduledWorkoutPlan.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ScheduledWorkoutPlan.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized ScheduledWorkoutPlan.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScheduledWorkoutPlan.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DateComponents and conformance DateComponents(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10WorkoutKit0A4PlanVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

Swift::Int ExportError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExportError()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExportError()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](0);
  return Hasher._finalize()();
}

Swift::Int XPCServiceError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCServiceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCServiceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Bool __swiftcall AppError.isEqual(to:)(NSError *to)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit8AppErrorOmMd, &_s10WorkoutKit8AppErrorOmMR);
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  v7 = [(NSError *)to domain];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  v14 = [(NSError *)to code];
  if (v14 == 1)
  {
    return v3;
  }

  if (v14)
  {
    return 0;
  }

  return v3 ^ 1;
}

Swift::Int AppError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExportError and conformance ExportError()
{
  result = lazy protocol witness table cache variable for type ExportError and conformance ExportError;
  if (!lazy protocol witness table cache variable for type ExportError and conformance ExportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExportError and conformance ExportError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type QueryError and conformance QueryError()
{
  result = lazy protocol witness table cache variable for type QueryError and conformance QueryError;
  if (!lazy protocol witness table cache variable for type QueryError and conformance QueryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QueryError and conformance QueryError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError()
{
  result = lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError;
  if (!lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppError and conformance AppError()
{
  result = lazy protocol witness table cache variable for type AppError and conformance AppError;
  if (!lazy protocol witness table cache variable for type AppError and conformance AppError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppError and conformance AppError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkoutKit11ImportErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ImportError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}