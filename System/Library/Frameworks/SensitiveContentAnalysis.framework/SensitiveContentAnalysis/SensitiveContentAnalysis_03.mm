uint64_t sub_1AEA892A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[7] = sub_1AEAF97FC();
  v8[8] = sub_1AEAF97EC();
  v10 = sub_1AEAF977C();

  return MEMORY[0x1EEE6DFA0](sub_1AEA89348, v10, v9);
}

uint64_t sub_1AEA89348()
{
  v1 = *(v0 + 16);

  sub_1AEAF9DBC();
  v2 = *(v1 + OBJC_IVAR____TtCC24SensitiveContentAnalysis15AnalysisHistoryP33_5B72C479793E9A28B06909F4B47E09798Listener_historyUpdated);
  if (v2)
  {
    v3 = *(v0 + 24);

    sub_1AEA897F8(v3);
    v2();
    sub_1AEA438E0(v2);
  }

  (*(v0 + 40))(0);
  v4 = *(v0 + 8);

  return v4();
}

id sub_1AEA89688()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalysisHistory.Listener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AEA896D0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v5 = *(v0 + ((*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1AEA63D38;

  return sub_1AEA8777C(v6, v7, v8, v0 + v4, v5, v2, v3);
}

uint64_t sub_1AEA897F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8C98);
  result = sub_1AEAFA03C();
  v3 = 0;
  v26 = result;
  v27 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v25 = result + 64;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v27 + 56) + 8 * v14);

      v19 = v18;
      SCSensitivityAnalysis.analysis.getter(&v28);

      v20 = v28;
      result = v26;
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v21 = (v26[6] + 16 * v14);
      *v21 = v16;
      v21[1] = v17;
      *(v26[7] + 4 * v14) = v20;
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v26[2] = v24;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AEA8997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1AEA5E1AC;

  return sub_1AEA87088(v8, v9, v10, v7, a5);
}

uint64_t dispatch thunk of AnalysisHistoryStorage.analysesFromMostRecentCommunications(with:excludeParents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AEA4B9C4;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AnalysisHistoryStorage.storeMostRecentAnalysis(_:forHandles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AEA5E1AC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AnalysisHistoryStorage.clearMostRecentAnalyses(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AEA63D38;

  return v9(a1, a2, a3);
}

uint64_t sub_1AEA89E3C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1AEA5E1AC;

  return sub_1AEA892A4(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1AEA89F28(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1AEAF97FC();
    sub_1AEAF9DBC();
    v5 = (v4 + OBJC_IVAR____TtC24SensitiveContentAnalysis15AnalysisHistory_historyUpdated);
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {

      v6(v1, v2);

      return sub_1AEA438E0(v6);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1AEA8A078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AEA63D38;

  return sub_1AEA8997C(a1, v4, v5, v1 + 4, v6);
}

uint64_t sub_1AEA8A144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SamplingPrioritizer.StreamKind.debugDescription.getter()
{
  if (*v0)
  {
    return 0x676E696F6774756FLL;
  }

  else
  {
    return 0x676E696D6F636E69;
  }
}

SensitiveContentAnalysis::SamplingPrioritizer::StreamKind_optional __swiftcall SamplingPrioritizer.StreamKind.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SamplingPrioritizer.StreamKind.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AEA8A210()
{
  v1 = *v0;
  sub_1AEAFA3BC();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1B270D930](v2);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA8A260()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x1B270D930](v1);
}

uint64_t sub_1AEA8A298()
{
  v1 = *v0;
  sub_1AEAFA3BC();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1B270D930](v2);
  return sub_1AEAFA3FC();
}

void *sub_1AEA8A2E4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_1AEA8A304(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_1AEA8A31C()
{
  if (*v0)
  {
    return 0x676E696F6774756FLL;
  }

  else
  {
    return 0x676E696D6F636E69;
  }
}

__n128 SamplingPrioritizer.Priority.latestFrameDetails.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 40);
  result = *(v1 + 50);
  *(a1 + 42) = result;
  return result;
}

__n128 SamplingPrioritizer.Priority.latestFrameDetails.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 40) = *(a1 + 32);
  result = *(a1 + 42);
  *(v1 + 50) = result;
  return result;
}

uint64_t SamplingPrioritizer.Priority.latestActivationTime.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t SamplingPrioritizer.Priority.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[6];
  v5 = v0[7];
  v6 = *(v0 + 64);
  v7 = *(v0 + 65);
  v8 = *(v0 + 9);
  v9 = *(v0 + 80);
  v10 = *(v0 + 81);
  sub_1AEAF9E1C();
  if (v1)
  {
    v11 = 0x676E696F6774756FLL;
  }

  else
  {
    v11 = 0x676E696D6F636E69;
  }

  MEMORY[0x1B270CB50](v11, 0xE800000000000000);

  result = MEMORY[0x1B270CB50](0x6C6962697369562CLL, 0xEC0000003A797469);
  if ((v9 & 1) == 0 && v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_1AEAFA27C();
    MEMORY[0x1B270CB50](v13);

    MEMORY[0x1B270CB50](0x3A657A69532CLL, 0xE600000000000000);
    type metadata accessor for CGSize(0);
    sub_1AEAF9F7C();
    MEMORY[0x1B270CB50](0x6E45656772614C2CLL, 0xED00003A6867756FLL);
    if ((v7 & 1) != 0 || ((v6 & 1) == 0 ? (v14 = v4) : (v14 = v2), (v6 & 1) == 0 ? (v15 = v5) : (v15 = v3), v14 * v15 <= 90000.0))
    {
      v16 = 0xE500000000000000;
      v17 = 0x65736C6166;
    }

    else
    {
      v16 = 0xE400000000000000;
      v17 = 1702195828;
    }

    MEMORY[0x1B270CB50](v17, v16);

    MEMORY[0x1B270CB50](0x497963696C6F502CLL, 0xEC0000003A6C636ELL);
    if (v10)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v10)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    MEMORY[0x1B270CB50](v18, v19);

    return 0;
  }

  return result;
}

BOOL SamplingPrioritizer.Priority.exceedsMinimumFrameArea.getter()
{
  if (*(v0 + 65))
  {
    return 0;
  }

  if (*(v0 + 64))
  {
    v2 = (v0 + 16);
  }

  else
  {
    v2 = (v0 + 48);
  }

  v3 = *v2;
  if (*(v0 + 64))
  {
    v4 = (v0 + 24);
  }

  else
  {
    v4 = (v0 + 56);
  }

  return v3 * *v4 > 90000.0;
}

BOOL SamplingPrioritizer.Priority.shouldSampleStream.getter()
{
  if (*(v0 + 81) != 1 || (*(v0 + 65) & 1) != 0)
  {
    return 0;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if ((*(v0 + 64) & 1) == 0)
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 56);
  }

  return v2 * v3 > 90000.0;
}

double SamplingPrioritizer.Priority.init(kind:policy:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = 1;
  if (v3 == 1)
  {
    sub_1AEA9B44C();
    sub_1AEA76774();
    v4 = sub_1AEAF9CFC();
  }

  *a2 = v3;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 49) = 0u;
  *(a2 + 65) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 81) = v4 & 1;
  return result;
}

__n128 SamplingPrioritizer.Priority.init(kind:policy:latestFrameSize:latestActivationTime:)@<Q0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v10 = *a1;
  v11 = 1;
  if (v10 == 1)
  {
    v12 = *a2;
    v13 = a7;
    v14 = a6;
    *&v21[0] = *sub_1AEA9B44C();
    *&v24[0] = v12;
    sub_1AEA76774();
    v11 = sub_1AEAF9CFC();
    a6 = v14;
    a7 = v13;
  }

  v15 = v11 & 1;
  memset(v24, 0, sizeof(v24));
  v25 = 1;
  LOBYTE(v21[0]) = 1;
  FrameDetails.init(orientation:frameSize:regionOfInterest:)(0x100000000, v24, v21, a6, a7);
  v16 = v22;
  v17 = v23;
  result = v21[0];
  v19 = v21[1];
  v20 = v21[2];
  *a5 = v10;
  *(a5 + 8) = result;
  *(a5 + 24) = v19;
  *(a5 + 40) = v20;
  *(a5 + 56) = v16;
  *(a5 + 64) = v17;
  *(a5 + 72) = a3;
  *(a5 + 80) = a4 & 1;
  *(a5 + 81) = v15;
  return result;
}

uint64_t sub_1AEA8A8D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AEA8A940(v7, v9) & 1;
}

uint64_t sub_1AEA8A940(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2 != v3)
  {
    return v3 & (v2 ^ 1) ^ 1u;
  }

  v5 = *(a2 + 9);
  if (a2[80])
  {
    v5 = 0;
  }

  if (a1[80])
  {
    if (v5)
    {
      v6 = 0;
      return v5 >= v6;
    }
  }

  else
  {
    v6 = *(a1 + 9);
    if (v5 != v6)
    {
      return v5 >= v6;
    }
  }

  v7 = *(a2 + 2) * *(a2 + 3);
  v8 = 0.0;
  if (a2[65])
  {
    v7 = 0.0;
  }

  if ((a1[65] & 1) == 0)
  {
    v8 = *(a1 + 2) * *(a1 + 3);
  }

  return v7 >= v8;
}

BOOL sub_1AEA8A9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if ((v2 & 1) != (v3 & 1))
  {
    v4 = v3 & (v2 ^ 1);
    return (v4 & 1) == 0;
  }

  if (*(a2 + 96))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 88);
  }

  if (*(a1 + 96))
  {
    if (v5)
    {
      v6 = 0;
LABEL_15:
      v4 = v5 < v6;
      return (v4 & 1) == 0;
    }
  }

  else
  {
    v6 = *(a1 + 88);
    if (v5 != v6)
    {
      goto LABEL_15;
    }
  }

  v7 = *(a2 + 32) * *(a2 + 40);
  if (*(a2 + 81))
  {
    v7 = 0.0;
  }

  v8 = *(a1 + 32) * *(a1 + 40);
  if (*(a1 + 81))
  {
    v8 = 0.0;
  }

  v4 = v7 < v8;
  return (v4 & 1) == 0;
}

uint64_t sub_1AEA8AA7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AEA8AAE8(v7, v9) & 1;
}

uint64_t sub_1AEA8AAE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != v3)
  {
    return v3 & (v2 ^ 1) ^ 1u;
  }

  v5 = *(a1 + 9);
  if (a1[80])
  {
    v5 = 0;
  }

  if (a2[80])
  {
    if (v5)
    {
      v6 = 0;
      return v5 >= v6;
    }
  }

  else
  {
    v6 = *(a2 + 9);
    if (v5 != v6)
    {
      return v5 >= v6;
    }
  }

  v7 = *(a1 + 2) * *(a1 + 3);
  v8 = 0.0;
  if (a1[65])
  {
    v7 = 0.0;
  }

  if ((a2[65] & 1) == 0)
  {
    v8 = *(a2 + 2) * *(a2 + 3);
  }

  return v7 >= v8;
}

BOOL sub_1AEA8AB84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if ((v2 & 1) != (v3 & 1))
  {
    v4 = v3 & (v2 ^ 1);
    return (v4 & 1) == 0;
  }

  if (*(a1 + 96))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 88);
  }

  if (*(a2 + 96))
  {
    if (v5)
    {
      v6 = 0;
LABEL_15:
      v4 = v5 < v6;
      return (v4 & 1) == 0;
    }
  }

  else
  {
    v6 = *(a2 + 88);
    if (v5 != v6)
    {
      goto LABEL_15;
    }
  }

  v7 = *(a1 + 32) * *(a1 + 40);
  if (*(a1 + 81))
  {
    v7 = 0.0;
  }

  v8 = *(a2 + 32) * *(a2 + 40);
  if (*(a2 + 81))
  {
    v8 = 0.0;
  }

  v4 = v7 < v8;
  return (v4 & 1) == 0;
}

uint64_t sub_1AEA8AC24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AEA8AC90(v7, v9) & 1;
}

uint64_t sub_1AEA8AC90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  if (v2 != v3)
  {
    return v3 & (v2 ^ 1u);
  }

  v5 = *(a2 + 9);
  if (a2[80])
  {
    v5 = 0;
  }

  if (a1[80])
  {
    if (v5)
    {
      v6 = 0;
      return v5 < v6;
    }
  }

  else
  {
    v6 = *(a1 + 9);
    if (v5 != v6)
    {
      return v5 < v6;
    }
  }

  v7 = *(a2 + 2) * *(a2 + 3);
  v8 = 0.0;
  if (a2[65])
  {
    v7 = 0.0;
  }

  if ((a1[65] & 1) == 0)
  {
    v8 = *(a1 + 2) * *(a1 + 3);
  }

  return v7 < v8;
}

BOOL sub_1AEA8AD20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a1 + 16);
  if ((v2 & 1) != (v3 & 1))
  {
    return v3 & (v2 ^ 1) & 1;
  }

  if (*(a2 + 96))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 88);
  }

  if (*(a1 + 96))
  {
    if (v5)
    {
      v6 = 0;
      return v5 < v6;
    }
  }

  else
  {
    v6 = *(a1 + 88);
    if (v5 != v6)
    {
      return v5 < v6;
    }
  }

  v7 = *(a2 + 32) * *(a2 + 40);
  if (*(a2 + 81))
  {
    v7 = 0.0;
  }

  v8 = *(a1 + 32) * *(a1 + 40);
  if (*(a1 + 81))
  {
    v8 = 0.0;
  }

  return v7 < v8;
}

BOOL sub_1AEA8ADD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1AEA8A9DC(v11, v13);
}

BOOL sub_1AEA8AE3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1AEA8AB84(v11, v13);
}

BOOL sub_1AEA8AEA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1AEA8AD20(v11, v13);
}

uint64_t sub_1AEA8AF14(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1AEAFA2BC(), v6 = 0, (v5 & 1) != 0))
  {
    v7 = *(a1 + 64);
    v14[2] = *(a1 + 48);
    v14[3] = v7;
    v14[4] = *(a1 + 80);
    v15 = *(a1 + 96);
    v8 = *(a1 + 32);
    v14[0] = *(a1 + 16);
    v14[1] = v8;
    v9 = *(a2 + 64);
    v12[2] = *(a2 + 48);
    v12[3] = v9;
    v12[4] = *(a2 + 80);
    v13 = *(a2 + 96);
    v10 = *(a2 + 32);
    v12[0] = *(a2 + 16);
    v12[1] = v10;
    v6 = static SamplingPrioritizer.Priority.== infix(_:_:)(v14, v12);
  }

  return v6 & 1;
}

uint64_t sub_1AEA8AFBC(uint64_t a1)
{
  os_unfair_lock_assert_owner((*(v1 + 4) + 16));
  *v151 = a1;

  v3 = 0;
  sub_1AEA8E058(v151);

  v4 = *v151;
  v5 = *(v1 + 5);
  if (!v5)
  {
LABEL_125:
    *(v1 + 2) = v4;
  }

  v139 = *v151;
  v145 = v1;
  v6 = *(v1 + 2);
  v7 = *(v6 + 16);
  v142 = *(v1 + 5);
  sub_1AEA50FF8(v5);

  if (v7)
  {
    v8 = 0;
    v3 = v7 - 1;
    v140 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = v6 + 32 + 104 * v8;
      v10 = v8;
      while (1)
      {
        if (v10 >= *(v6 + 16))
        {
          goto LABEL_127;
        }

        v11 = *(v9 + 48);
        v12 = *(v9 + 64);
        v13 = *(v9 + 80);
        *&v151[96] = *(v9 + 96);
        v14 = *(v9 + 16);
        v15 = *(v9 + 32);
        *v151 = *v9;
        *&v151[16] = v14;
        *&v151[64] = v12;
        *&v151[80] = v13;
        *&v151[32] = v15;
        *&v151[48] = v11;
        if (v151[97] == 1 && (v151[81] & 1) == 0)
        {
          v16 = ((v151[80] & 1) != 0 ? &v151[32] : &v151[64]);
          v17 = *v16;
          v18 = ((v151[80] & 1) != 0 ? &v151[40] : &v151[72]);
          if (v17 * *v18 > 90000.0)
          {
            break;
          }
        }

        ++v10;
        v9 += 104;
        if (v7 == v10)
        {
          goto LABEL_23;
        }
      }

      sub_1AEA9010C(v151, v147);
      v19 = v140;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v149[0] = v140;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AEA8DF14(0, *(v140 + 16) + 1, 1);
        v19 = *&v149[0];
      }

      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AEA8DF14((v21 > 1), v22 + 1, 1);
        v19 = *&v149[0];
      }

      v8 = v10 + 1;
      *(v19 + 16) = v22 + 1;
      v140 = v19;
      v23 = v19 + 104 * v22;
      v24 = *v151;
      v25 = *&v151[32];
      *(v23 + 48) = *&v151[16];
      *(v23 + 64) = v25;
      *(v23 + 32) = v24;
      v26 = *&v151[48];
      v27 = *&v151[64];
      v28 = *&v151[80];
      *(v23 + 128) = *&v151[96];
      *(v23 + 96) = v27;
      *(v23 + 112) = v28;
      *(v23 + 80) = v26;
    }

    while (v3 != v10);
  }

  else
  {
    v140 = MEMORY[0x1E69E7CC0];
  }

LABEL_23:

  v29 = v139;
  v30 = *(v139 + 16);
  if (v30)
  {
    v31 = 0;
    v3 = v30 - 1;
    v32 = MEMORY[0x1E69E7CC0];
    do
    {
      v33 = v139 + 32 + 104 * v31;
      v34 = v31;
      while (1)
      {
        if (v34 >= *(v29 + 16))
        {
          goto LABEL_128;
        }

        v35 = *(v33 + 48);
        v36 = *(v33 + 64);
        v37 = *(v33 + 80);
        *&v151[96] = *(v33 + 96);
        v38 = *(v33 + 16);
        v39 = *(v33 + 32);
        *v151 = *v33;
        *&v151[16] = v38;
        *&v151[64] = v36;
        *&v151[80] = v37;
        *&v151[32] = v39;
        *&v151[48] = v35;
        if (v151[97] == 1 && (v151[81] & 1) == 0)
        {
          v40 = ((v151[80] & 1) != 0 ? &v151[32] : &v151[64]);
          v41 = *v40;
          v42 = ((v151[80] & 1) != 0 ? &v151[40] : &v151[72]);
          if (v41 * *v42 > 90000.0)
          {
            break;
          }
        }

        ++v34;
        v33 += 104;
        if (v30 == v34)
        {
          goto LABEL_44;
        }
      }

      sub_1AEA9010C(v151, v147);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      *&v149[0] = v32;
      if ((v43 & 1) == 0)
      {
        sub_1AEA8DF14(0, *(v32 + 16) + 1, 1);
        v32 = *&v149[0];
      }

      v45 = *(v32 + 16);
      v44 = *(v32 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1AEA8DF14((v44 > 1), v45 + 1, 1);
        v32 = *&v149[0];
      }

      v31 = v34 + 1;
      *(v32 + 16) = v45 + 1;
      v46 = v32 + 104 * v45;
      v47 = *v151;
      v48 = *&v151[32];
      *(v46 + 48) = *&v151[16];
      *(v46 + 64) = v48;
      *(v46 + 32) = v47;
      v49 = *&v151[48];
      v50 = *&v151[64];
      v51 = *&v151[80];
      *(v46 + 128) = *&v151[96];
      *(v46 + 96) = v50;
      *(v46 + 112) = v51;
      *(v46 + 80) = v49;
      v29 = v139;
    }

    while (v3 != v34);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

LABEL_44:
  v146 = sub_1AEA90174(MEMORY[0x1E69E7CC0]);
  v52 = *(v140 + 16);
  v141 = v32;
  if (!v52)
  {
    v55 = v145;
    v97 = *(v32 + 16);
    if (!v97)
    {
      goto LABEL_114;
    }

    goto LABEL_81;
  }

  v53 = 0;
  v54 = v52 + -2.0;
  v3 = &unk_1AEAFDE98;
  v55 = v145;
  v143 = *(v140 + 16);
LABEL_48:
  v56 = v140 + 32 + 104 * v53;
  v57 = v53;
  do
  {
    if (v57 >= v52)
    {
      goto LABEL_129;
    }

    v58 = *v56;
    v59 = *(v56 + 32);
    v149[1] = *(v56 + 16);
    v149[2] = v59;
    v149[0] = v58;
    v60 = *(v56 + 48);
    v61 = *(v56 + 64);
    v62 = *(v56 + 80);
    v150 = *(v56 + 96);
    v149[4] = v61;
    v149[5] = v62;
    v149[3] = v60;
    v63 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_130;
    }

    v64 = *v56;
    v65 = *(v56 + 16);
    *&v151[40] = *(v56 + 32);
    *&v151[24] = v65;
    *&v151[8] = v64;
    v66 = *(v56 + 48);
    v67 = *(v56 + 64);
    v68 = *(v56 + 80);
    v152 = *(v56 + 96);
    *&v151[88] = v68;
    *&v151[72] = v67;
    *&v151[56] = v66;
    *v151 = v57;
    v70 = *&v151[8];
    v69 = *&v151[16];
    if (*(v55 + 64) != 2)
    {
      v76 = *&v151[16];
      if (*(v55 + 64))
      {
        v77 = 1.0;
        v78 = v146;
        if (v57 > 1)
        {
          v79 = (1.0 - (v57 + -1.0) / (v54 + 1.0)) * ((v55[7] + -2.0) / v54);
          v80 = 1.0 / (v79 + v79);
          if (v80 > 1.0)
          {
            v77 = v80;
          }

          else
          {
            v77 = 1.0;
          }
        }

LABEL_64:
        sub_1AEA9010C(v149, v147);
        sub_1AEA63BD4(v151, v147, &qword_1EB5E8D70);
        v81 = swift_isUniquelyReferenced_nonNull_native();
        *&v147[0] = v78;
        v83 = sub_1AEA8EECC(v70, v76);
        v84 = *(v78 + 16);
        v85 = (v82 & 1) == 0;
        v86 = v84 + v85;
        if (__OFADD__(v84, v85))
        {
          goto LABEL_131;
        }

        v87 = v82;
        if (*(v78 + 24) < v86)
        {
          sub_1AEA62008(v86, v81);
          v88 = sub_1AEA8EECC(v70, v76);
          if ((v87 & 1) != (v89 & 1))
          {
            goto LABEL_133;
          }

          v83 = v88;
          if ((v87 & 1) == 0)
          {
            goto LABEL_71;
          }

LABEL_46:
          sub_1AEA41FAC(v151, &qword_1EB5E8D70);
          v146 = *&v147[0];
          *(*(*&v147[0] + 56) + 8 * v83) = v77;
          sub_1AEA41FAC(v151, &qword_1EB5E8D70);
          v32 = v141;
          goto LABEL_47;
        }

        if (v81)
        {
          if (v82)
          {
            goto LABEL_46;
          }
        }

        else
        {
          sub_1AEA625E0();
          if (v87)
          {
            goto LABEL_46;
          }
        }

LABEL_71:
        v90 = *&v147[0];
        *(*&v147[0] + 8 * (v83 >> 6) + 64) |= 1 << v83;
        v91 = (v90[6] + 16 * v83);
        *v91 = v70;
        v91[1] = v76;
        *(v90[7] + 8 * v83) = v77;
        sub_1AEA41FAC(v151, &qword_1EB5E8D70);
        v92 = v90[2];
        v93 = __OFADD__(v92, 1);
        v94 = v92 + 1;
        if (v93)
        {
          goto LABEL_132;
        }

        v146 = v90;
        v90[2] = v94;
        v32 = v141;
        goto LABEL_47;
      }

      v77 = v55[7];
LABEL_63:
      v78 = v146;
      goto LABEL_64;
    }

    if (v53 < 11)
    {
      v76 = *&v151[16];
      v77 = *(&unk_1F248B720 + 2 * (v53 > 3) + 5);
      goto LABEL_63;
    }

    v71 = v57 + 1;
    v72 = v53;
    sub_1AEA9010C(v149, v147);
    sub_1AEA63BD4(v151, v147, &qword_1EB5E8D70);
    v73 = sub_1AEA8EECC(v70, v69);
    v75 = v74;
    sub_1AEA41FAC(v151, &qword_1EB5E8D70);
    if (v75)
    {
      v95 = v146;
      v96 = swift_isUniquelyReferenced_nonNull_native();
      *&v147[0] = v146;
      if (!v96)
      {
        sub_1AEA625E0();
        v95 = *&v147[0];
      }

      v146 = v95;
      sub_1AEA622AC(v73, v95);
      sub_1AEA41FAC(v151, &qword_1EB5E8D70);
      v32 = v141;
      v63 = v57 + 1;
LABEL_47:
      v53 = v63;
      v52 = v143;
      v55 = v145;
      if (v63 == v143)
      {
        goto LABEL_78;
      }

      goto LABEL_48;
    }

    sub_1AEA41FAC(v151, &qword_1EB5E8D70);
    ++v57;
    v56 += 104;
    v52 = v143;
    v55 = v145;
    v53 = v72;
  }

  while (v71 != v143);
  v32 = v141;
LABEL_78:
  v97 = *(v32 + 16);
  if (v97)
  {
LABEL_81:
    v98 = 0;
    v99 = (v32 + 32);
    v100 = v97 + -2.0;
    v144 = v97;
    do
    {
      v101 = *v99;
      v102 = v99[2];
      v147[1] = v99[1];
      v147[2] = v102;
      v147[0] = v101;
      v103 = v99[3];
      v104 = v99[4];
      v105 = v99[5];
      v148 = *(v99 + 48);
      v147[4] = v104;
      v147[5] = v105;
      v147[3] = v103;
      v107 = v99[4];
      v106 = v99[5];
      v108 = v99[3];
      *&v151[96] = *(v99 + 48);
      *&v151[64] = v107;
      *&v151[80] = v106;
      *&v151[48] = v108;
      v109 = *v99;
      v110 = v99[2];
      *&v151[16] = v99[1];
      *&v151[32] = v110;
      *v151 = v109;
      v111 = v55[7];
      if (!*(v55 + 64))
      {
        v113 = 0;
        v112 = v146;
        goto LABEL_97;
      }

      if (*(v55 + 64) == 1)
      {
        v112 = v146;
        v113 = 0;
        if (v98 <= 1)
        {
          v111 = 1.0;
        }

        else
        {
          v114 = (1.0 - (v98 + -1.0) / (v100 + 1.0)) * ((v111 + -2.0) / v100);
          v115 = 1.0 / (v114 + v114);
          if (v115 <= 1.0)
          {
            v115 = 1.0;
          }

          v111 = v115;
        }
      }

      else
      {
        v112 = v146;
        if (v98 <= 3)
        {
          v113 = 0;
        }

        else
        {
          v113 = 1;
          if (v98 > 0xA)
          {
            v111 = 0.0;
            goto LABEL_97;
          }
        }

        v116 = (&unk_1F248B720 + 16 * v113);
        v113 = 0;
        v111 = v116[5];
      }

LABEL_97:
      v117 = *v151;
      v118 = *&v151[8];
      if (*(v112 + 16))
      {
        sub_1AEA9010C(v147, v149);
        sub_1AEA9010C(v151, v149);
        v119 = sub_1AEA8EECC(v117, v118);
        v121 = v120;
        sub_1AEA90144(v151);
        if (v121)
        {
          v3 = 0;
          v122 = *(*(v112 + 56) + 8 * v119);
          goto LABEL_102;
        }
      }

      else
      {
        sub_1AEA9010C(v147, v149);
      }

      v3 = 1;
      v122 = 0.0;
LABEL_102:
      sub_1AEA9010C(v151, v149);
      v123 = v112;
      v124 = sub_1AEA8EECC(v117, v118);
      v126 = v125;
      sub_1AEA90144(v151);
      if (v126)
      {
        v127 = swift_isUniquelyReferenced_nonNull_native();
        *&v149[0] = v123;
        if (!v127)
        {
          sub_1AEA625E0();
          v123 = *&v149[0];
        }

        v146 = v123;
        sub_1AEA622AC(v124, v123);
      }

      v55 = v145;
      if (v3)
      {
        if (v113)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v122 == v111)
        {
          v128 = v113;
        }

        else
        {
          v128 = 1;
        }

        if ((v128 & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      v142(v117, v118, *&v111, v113);
LABEL_83:
      sub_1AEA90144(v151);
      ++v98;
      v99 = (v99 + 104);
    }

    while (v144 != v98);
  }

LABEL_114:
  v129 = 1 << *(v146 + 32);
  v130 = -1;
  if (v129 < 64)
  {
    v130 = ~(-1 << v129);
  }

  v131 = v130 & *(v146 + 64);
  v132 = (v129 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v133 = 0;
  while (v131)
  {
    v134 = v133;
LABEL_122:
    v135 = __clz(__rbit64(v131));
    v131 &= v131 - 1;
    v136 = (*(v146 + 48) + ((v134 << 10) | (16 * v135)));
    v137 = *v136;
    v3 = v136[1];

    v142(v137, v3, 0, 1);
  }

  while (1)
  {
    v134 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      break;
    }

    if (v134 >= v132)
    {

      swift_bridgeObjectRelease_n();
      sub_1AEA438E0(v142);
      v1 = v145;
      v4 = v139;
      goto LABEL_125;
    }

    v131 = *(v146 + 64 + 8 * v134);
    ++v133;
    if (v131)
    {
      v133 = v134;
      goto LABEL_122;
    }
  }

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
LABEL_132:
  __break(1u);

  __break(1u);
LABEL_133:
  result = sub_1AEAFA31C();
  __break(1u);
  return result;
}

uint64_t SamplingPrioritizer.__allocating_init(algorithm:baseIntervalChanged:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v6 + 64) = a1;
  *(v6 + 32) = v8;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 56) = v7;
  return v6;
}

uint64_t SamplingPrioritizer.init(algorithm:baseIntervalChanged:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v3 + 64) = v7;
  *(v3 + 32) = v8;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 56) = v6;
  return v3;
}

Swift::Void __swiftcall SamplingPrioritizer.trackStream(for:kind:policy:)(Swift::String a1, SensitiveContentAnalysis::SamplingPrioritizer::StreamKind kind, SensitiveContentAnalysis::SensitiveContentPolicy policy)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = *kind;
  v7 = *(v3 + 32);
  os_unfair_lock_lock(v7 + 4);
  sub_1AEA6E584();
  os_unfair_lock_unlock(v7 + 4);
  if (qword_1EB5EAD80 != -1)
  {
    swift_once();
  }

  v8 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v8, qword_1EB5F5C10);

  v9 = sub_1AEAF8FCC();
  v10 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1AEA45C14(countAndFlagsBits, object, v15);
    *(v11 + 12) = 2080;
    if (v6)
    {
      v13 = 0x676E696F6774756FLL;
    }

    else
    {
      v13 = 0x676E696D6F636E69;
    }

    v14 = sub_1AEA45C14(v13, 0xE800000000000000, v15);

    *(v11 + 14) = v14;
    _os_log_impl(&dword_1AEA3F000, v9, v10, "Started tracking stream %s (%s)", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B270E620](v12, -1, -1);
    MEMORY[0x1B270E620](v11, -1, -1);
  }
}

uint64_t sub_1AEA8BE20(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = (a1 + 1);
  v7 = *a1;
  v8 = *(v3 + 32);
  os_unfair_lock_assert_owner(v8 + 4);
  os_unfair_lock_assert_owner(v8 + 4);
  v9 = *(v3 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = *(v9 + v11 + 32) == a2 && *(v9 + v11 + 40) == a3;
      if (v13 || (sub_1AEAFA2BC() & 1) != 0)
      {
        break;
      }

      ++v12;
      v11 += 104;
      if (v10 == v12)
      {
        goto LABEL_9;
      }
    }

    v15 = v8 + 4;
    if (v7 == 2)
    {
      os_unfair_lock_assert_owner(v15);
      v20 = *(v3 + 16);

      sub_1AEA8CA4C(v12, v21);
      sub_1AEA90144(v21);
      return sub_1AEA8AFBC(v20);
    }

    else
    {
      os_unfair_lock_assert_owner(v15);
      v16 = *(v3 + 16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AEA8EF44(v16);
        v16 = result;
      }

      if (v12 >= *(v16 + 16))
      {
        __break(1u);
      }

      else
      {
        v17 = v16 + v11;
        *(v17 + 48) = v7;
        v18 = *v6;
        *(v17 + 72) = v6[1];
        v19 = v6[3];
        *(v17 + 88) = v6[2];
        *(v17 + 104) = v19;
        *(v17 + 114) = *(v6 + 58);
        *(v17 + 56) = v18;

        return sub_1AEA8AFBC(v16);
      }
    }
  }

  else
  {
LABEL_9:
  }

  return result;
}

uint64_t sub_1AEA8BFEC()
{
  if (qword_1EB5EAD80 != -1)
  {
    swift_once();
  }

  v0 = sub_1AEAF8FEC();

  return __swift_project_value_buffer(v0, qword_1EB5F5C10);
}

Swift::Void __swiftcall SamplingPrioritizer.updateLatestActivationTime(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 32);
  os_unfair_lock_lock(v4 + 4);
  sub_1AEA6E460(&v11);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v11;
  if (qword_1EB5EAD80 != -1)
  {
    swift_once();
  }

  v6 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v6, qword_1EB5F5C10);

  v7 = sub_1AEAF8FCC();
  v8 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1AEA45C14(countAndFlagsBits, object, &v11);
    *(v9 + 12) = 2048;
    *(v9 + 14) = v5;
    _os_log_impl(&dword_1AEA3F000, v7, v8, "Stream %s made visible (%llu) ", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B270E620](v10, -1, -1);
    MEMORY[0x1B270E620](v9, -1, -1);
  }
}

void sub_1AEA8C1F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  os_unfair_lock_assert_owner(v7 + 4);
  os_unfair_lock_assert_owner(v7 + 4);
  v8 = *(v3 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *(v8 + v10 + 32) == a1 && *(v8 + v10 + 40) == a2;
      if (v12 || (sub_1AEAFA2BC() & 1) != 0)
      {
        break;
      }

      ++v11;
      v10 += 104;
      if (v9 == v11)
      {
        goto LABEL_9;
      }
    }

    os_unfair_lock_assert_owner(v7 + 4);
    v13 = *(v3 + 16);
    if (v11 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = v13 + v10;
      v15 = *(v14 + 96);
      *(a3 + 32) = *(v14 + 80);
      *(a3 + 48) = v15;
      *(a3 + 64) = *(v14 + 112);
      *(a3 + 80) = *(v14 + 128);
      v16 = *(v14 + 64);
      *a3 = *(v14 + 48);
      *(a3 + 16) = v16;
    }
  }

  else
  {
LABEL_9:
    *a3 = 2;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 66) = 0u;
  }
}

void SamplingPrioritizer.updateLatestFrameDetails(for:details:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v6 = a3[1];
  v52 = *a3;
  v53 = v6;
  *v54 = a3[2];
  *&v54[9] = *(a3 + 41);
  v7 = *(v3 + 32);
  os_unfair_lock_lock(v7 + 4);
  sub_1AEA6E584();
  os_unfair_lock_unlock(v7 + 4);
  if (v45 != 2)
  {
    if (v51)
    {
      goto LABEL_18;
    }

    v14 = v46;
    v15 = v47;
    if ((v50 & 1) == 0)
    {
      v14 = v48;
      v15 = v49;
    }

    if (v14 * v15 <= 90000.0)
    {
LABEL_18:
      if (qword_1EB5EAD80 != -1)
      {
        swift_once();
      }

      v32 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v32, qword_1EB5F5C10);

      v9 = sub_1AEAF8FCC();
      v17 = sub_1AEAF9A8C();

      if (!os_log_type_enabled(v9, v17))
      {
        goto LABEL_28;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44[0] = v19;
      *v18 = 134219010;
      v33 = v53;
      *(v18 + 4) = *(&v52 + 1);
      *(v18 + 12) = 2048;
      *(v18 + 14) = v33;
      *(v18 + 22) = 2080;
      v34 = *(&v53 + 1);
      v36 = *v54;
      v35 = *&v54[16];
      v37 = v54[24];
      if ((v54[24] & 1) == 0)
      {
        v57.origin.x = *(&v53 + 1);
        *&v57.origin.y = *v54;
        v57.size.height = *&v54[16];
        CGRectGetWidth(v57);
      }

      v38 = sub_1AEAF998C();
      v40 = sub_1AEA45C14(v38, v39, v44);

      *(v18 + 24) = v40;
      *(v18 + 32) = 2080;
      if ((v37 & 1) == 0)
      {
        v58.origin.x = v34;
        *&v58.origin.y = v36;
        v58.size.height = v35;
        CGRectGetHeight(v58);
      }

      v41 = sub_1AEAF998C();
      v43 = sub_1AEA45C14(v41, v42, v44);

      *(v18 + 34) = v43;
      *(v18 + 42) = 2080;
      *(v18 + 44) = sub_1AEA45C14(a1, a2, v44);
      v31 = "New region of interest below minimum (%fx%f,%sx%s) for stream %s ";
    }

    else
    {
      if (qword_1EB5EAD80 != -1)
      {
        swift_once();
      }

      v16 = sub_1AEAF8FEC();
      __swift_project_value_buffer(v16, qword_1EB5F5C10);

      v9 = sub_1AEAF8FCC();
      v17 = sub_1AEAF9A8C();

      if (!os_log_type_enabled(v9, v17))
      {
        goto LABEL_28;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v44[0] = v19;
      *v18 = 134219010;
      v20 = v53;
      *(v18 + 4) = *(&v52 + 1);
      *(v18 + 12) = 2048;
      *(v18 + 14) = v20;
      *(v18 + 22) = 2080;
      v21 = *(&v53 + 1);
      v23 = *v54;
      v22 = *&v54[16];
      v24 = v54[24];
      if ((v54[24] & 1) == 0)
      {
        v55.origin.x = *(&v53 + 1);
        *&v55.origin.y = *v54;
        v55.size.height = *&v54[16];
        CGRectGetWidth(v55);
      }

      v25 = sub_1AEAF998C();
      v27 = sub_1AEA45C14(v25, v26, v44);

      *(v18 + 24) = v27;
      *(v18 + 32) = 2080;
      if ((v24 & 1) == 0)
      {
        v56.origin.x = v21;
        *&v56.origin.y = v23;
        v56.size.height = v22;
        CGRectGetHeight(v56);
      }

      v28 = sub_1AEAF998C();
      v30 = sub_1AEA45C14(v28, v29, v44);

      *(v18 + 34) = v30;
      *(v18 + 42) = 2080;
      *(v18 + 44) = sub_1AEA45C14(a1, a2, v44);
      v31 = "New region of interest above minimum (%fx%f,%sx%s) for stream %s ";
    }

    _os_log_impl(&dword_1AEA3F000, v9, v17, v31, v18, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1B270E620](v19, -1, -1);
    v13 = v18;
    goto LABEL_27;
  }

  if (qword_1EB5EAD80 != -1)
  {
    swift_once();
  }

  v8 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v8, qword_1EB5F5C10);

  v9 = sub_1AEAF8FCC();
  v10 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v44[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1AEA45C14(a1, a2, v44);
    _os_log_impl(&dword_1AEA3F000, v9, v10, "Tried to update frame size for untracked stream %s ", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1B270E620](v12, -1, -1);
    v13 = v11;
LABEL_27:
    MEMORY[0x1B270E620](v13, -1, -1);
  }

LABEL_28:
}

Swift::Void __swiftcall SamplingPrioritizer.untrackStream(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 32);
  os_unfair_lock_lock(v4 + 4);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v4 + 4);
  if (qword_1EB5EAD80 != -1)
  {
    swift_once();
  }

  v5 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v5, qword_1EB5F5C10);

  v6 = sub_1AEAF8FCC();
  v7 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1AEA45C14(countAndFlagsBits, object, &v10);
    _os_log_impl(&dword_1AEA3F000, v6, v7, "Stopped tracking stream %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B270E620](v9, -1, -1);
    MEMORY[0x1B270E620](v8, -1, -1);
  }
}

uint64_t sub_1AEA8C9E4()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA6E460(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1AEA8CA4C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AEA8EF44(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 104 * a1;
    v9 = *(v8 + 112);
    v10 = v7 - 1;
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v9;
    *(a2 + 96) = *(v8 + 128);
    v11 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v11;
    v12 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v12;
    result = memmove((v8 + 32), (v8 + 136), 104 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

Swift::Double_optional __swiftcall BaseIntervalAlgorithm.baseInterval(for:streamCount:)(Swift::Int a1, Swift::Int streamCount)
{
  v5 = *v2;
  if (*(v2 + 8))
  {
    if (*(v2 + 8) != 1)
    {
      if (a1 <= 3)
      {
        v7 = 0;
      }

      else
      {
        v7 = 1;
        if (a1 > 0xA)
        {
          LOBYTE(v5) = 0;
          goto LABEL_14;
        }
      }

      v5 = *(&unk_1F248B720 + 2 * v7 + 5);
      goto LABEL_14;
    }

    if (a1 <= 1)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v6 = (1.0 - (a1 + -1.0) / (streamCount + -2.0 + 1.0)) * ((v5 + -2.0) / (streamCount + -2.0));
      v3 = 1.0 / (v6 + v6);
      if (v3 <= 1.0)
      {
        v3 = 1.0;
      }

      LOBYTE(v5) = LOBYTE(v3);
    }
  }

LABEL_14:
  result.value = v3;
  result.is_nil = LOBYTE(v5);
  return result;
}

uint64_t SamplingPrioritizer.deinit()
{

  sub_1AEA438E0(*(v0 + 40));
  return v0;
}

uint64_t SamplingPrioritizer.__deallocating_deinit()
{

  sub_1AEA438E0(*(v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 65, 7);
}

void static BaseIntervalAlgorithm.effective.getter(uint64_t a1@<X8>)
{
  sub_1AEA8CCB4(&v3);
  v2 = v4;
  if (v4 == 255)
  {
    if (SCFeatures.isEnabled.getter())
    {
      *a1 = 0x4014000000000000;
      *(a1 + 8) = 1;
    }

    else
    {
      *a1 = 0x3FF0000000000000;
      *(a1 + 8) = 0;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = v2;
  }
}

void sub_1AEA8CCB4(uint64_t a1@<X8>)
{
  if (*sub_1AEA5CE80() != 1)
  {
    goto LABEL_14;
  }

  sub_1AEA49EF8(0, &qword_1ED989AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8E10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AEAFDB70;
  v3 = sub_1AEAAD9C0();
  v4 = *v3;
  *(v2 + 32) = *v3;
  v5 = v4;
  v6 = sub_1AEA8411C();
  v7 = *v6;
  *(v2 + 40) = *v6;
  v8 = sub_1AEA49EF8(0, &qword_1ED989AC0);
  v9 = v7;
  sub_1AEAADB9C(0xD00000000000002CLL, 0x80000001AEB06C50, v2, v8, &v34);

  v10 = v34;
  if (v34)
  {
    if (qword_1EB5EAD80 != -1)
    {
      swift_once();
    }

    v11 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v11, qword_1EB5F5C10);
    v12 = v10;
    v13 = sub_1AEAF8FCC();
    v14 = sub_1AEAF9A8C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      [v12 doubleValue];
      *(v15 + 4) = v16;
      _os_log_impl(&dword_1AEA3F000, v13, v14, "Using target average sample rate algorithm from defaults: .targetAverageSampleRate(%f)", v15, 0xCu);
      MEMORY[0x1B270E620](v15, -1, -1);
    }

    [v12 doubleValue];
    v18 = v17;

    *a1 = v18;
    v19 = 1;
    goto LABEL_15;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AEAFDB70;
  v21 = *v3;
  *(v20 + 32) = *v3;
  v22 = *v6;
  *(v20 + 40) = *v6;
  v23 = v21;
  v24 = v22;
  sub_1AEAADB9C(0xD000000000000025, 0x80000001AEB06C80, v20, v8, &v34);

  v25 = v34;
  if (!v34)
  {
LABEL_14:
    *a1 = 0;
    v19 = -1;
    goto LABEL_15;
  }

  if (qword_1EB5EAD80 != -1)
  {
    swift_once();
  }

  v26 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v26, qword_1EB5F5C10);
  v27 = v25;
  v28 = sub_1AEAF8FCC();
  v29 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    [v27 doubleValue];
    *(v30 + 4) = v31;
    _os_log_impl(&dword_1AEA3F000, v28, v29, "Using forced sample rate algorithm from defaults: .forced(%f)", v30, 0xCu);
    MEMORY[0x1B270E620](v30, -1, -1);
  }

  [v27 doubleValue];
  v33 = v32;

  v19 = 0;
  *a1 = v33;
LABEL_15:
  *(a1 + 8) = v19;
}

Swift::Double_optional __swiftcall SamplingPrioritizer.baseInterval(for:)(Swift::String a1)
{
  v2 = *(v1 + 32);
  os_unfair_lock_lock(v2 + 4);
  sub_1AEA8FAE4(&v5);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v5;
  result.value = v3;
  result.is_nil = v4;
  return result;
}

void sub_1AEA8D0D4(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
    v6 = 0x6170206D6F726620;
  }

  else
  {
    v6 = 0;
  }

  if (a3)
  {
    v7 = 0xEC000000746E6572;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  v8 = sub_1AEA5D260();
  v10 = v9;
  v11 = *(v3 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_sampleTimer) + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config;
  swift_beginAccess();
  if ((a2 & 1) == 0)
  {
    if ((*(v11 + 8) & 1) == 0)
    {
      v25 = *v11;
      if (*v11 >= *&a1)
      {
        if (*v11 <= *&a1)
        {

          goto LABEL_31;
        }

        if (qword_1EB5EAD80 != -1)
        {
          swift_once();
        }

        v33 = sub_1AEAF8FEC();
        __swift_project_value_buffer(v33, qword_1EB5F5C10);

        v13 = sub_1AEAF8FCC();
        v27 = sub_1AEAF9A8C();

        if (!os_log_type_enabled(v13, v27))
        {
          goto LABEL_29;
        }

        v15 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = *&v40;
        *v15 = 136315907;
        v34 = sub_1AEA45C14(v8, v10, &v41);
        v35 = v6;
        v36 = a1;
        v37 = v34;

        *(v15 + 4) = v37;
        *(v15 + 12) = 2080;
        *&a1 = COERCE_DOUBLE(sub_1AEA45C14(v35, v7, &v41));

        *(v15 + 14) = *&a1;
        LOBYTE(a1) = v36;
        *(v15 + 22) = 2049;
        *(v15 + 24) = v25;
        *(v15 + 32) = 2049;
        *(v15 + 34) = v36;
        v32 = "%s increased sample rate%s: %{private}f -> %{private}f";
      }

      else
      {
        if (qword_1EB5EAD80 != -1)
        {
          swift_once();
        }

        v26 = sub_1AEAF8FEC();
        __swift_project_value_buffer(v26, qword_1EB5F5C10);

        v13 = sub_1AEAF8FCC();
        v27 = sub_1AEAF9A8C();

        if (!os_log_type_enabled(v13, v27))
        {
          goto LABEL_29;
        }

        v15 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = *&v40;
        *v15 = 136315907;
        v28 = sub_1AEA45C14(v8, v10, &v41);
        v29 = v6;
        v30 = a1;
        v31 = v28;

        *(v15 + 4) = v31;
        *(v15 + 12) = 2080;
        *&a1 = COERCE_DOUBLE(sub_1AEA45C14(v29, v7, &v41));

        *(v15 + 14) = *&a1;
        LOBYTE(a1) = v30;
        *(v15 + 22) = 2049;
        *(v15 + 24) = v25;
        *(v15 + 32) = 2049;
        *(v15 + 34) = v30;
        v32 = "%s decreased sample rate%s: %{private}f -> %{private}f";
      }

      _os_log_impl(&dword_1AEA3F000, v13, v27, v32, v15, 0x2Au);
      swift_arrayDestroy();
      v19 = v40;
      goto LABEL_28;
    }

    if (qword_1EB5EAD80 != -1)
    {
      swift_once();
    }

    v20 = sub_1AEAF8FEC();
    __swift_project_value_buffer(v20, qword_1EB5F5C10);

    v13 = sub_1AEAF8FCC();
    v21 = sub_1AEAF9A8C();

    if (os_log_type_enabled(v13, v21))
    {
      v15 = swift_slowAlloc();
      v22 = a1;
      *&a1 = COERCE_DOUBLE(swift_slowAlloc());
      v41 = *&a1;
      *v15 = 136315651;
      v23 = sub_1AEA45C14(v8, v10, &v41);

      *(v15 + 4) = v23;
      *(v15 + 12) = 2080;
      v24 = sub_1AEA45C14(v6, v7, &v41);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2049;
      *(v15 + 24) = v22;
      _os_log_impl(&dword_1AEA3F000, v13, v21, "%s set initial sample rate%s: %{private}f", v15, 0x20u);
      swift_arrayDestroy();
      v19 = a1;
      LOBYTE(a1) = v22;
      goto LABEL_28;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (qword_1EB5EAD80 != -1)
  {
    swift_once();
  }

  v12 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v12, qword_1EB5F5C10);

  v13 = sub_1AEAF8FCC();
  v14 = sub_1AEAF9A8C();

  if (!os_log_type_enabled(v13, v14))
  {
    goto LABEL_29;
  }

  v15 = swift_slowAlloc();
  v41 = COERCE_DOUBLE(swift_slowAlloc());
  v16 = a1;
  *&a1 = v41;
  *v15 = 136315394;
  v17 = sub_1AEA45C14(v8, v10, &v41);

  *(v15 + 4) = v17;
  *(v15 + 12) = 2080;
  v18 = sub_1AEA45C14(v6, v7, &v41);

  *(v15 + 14) = v18;
  _os_log_impl(&dword_1AEA3F000, v13, v14, "%s removed sample rate%s", v15, 0x16u);
  swift_arrayDestroy();
  v19 = a1;
  LOBYTE(a1) = v16;
LABEL_28:
  MEMORY[0x1B270E620](v19, -1, -1);
  MEMORY[0x1B270E620](v15, -1, -1);
LABEL_30:

LABEL_31:
  v39 = a1;
  SampleTimer.updateBaseInterval(to:)(*&v38);
}

uint64_t sub_1AEA8D754(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v29 - v4;
  v6 = a1[1];
  v34 = *a1;
  v35 = v6;
  *v36 = a1[2];
  *&v36[9] = *(a1 + 41);
  v37 = 0;
  v7 = &v1[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_latestFrameDetails];
  result = swift_beginAccess();
  v9 = v7[57];
  v10 = v37;
  if (v37)
  {
    if (v7[57])
    {
      return result;
    }

    goto LABEL_6;
  }

  v11 = a1[1];
  v31[0] = *a1;
  v31[1] = v11;
  *v32 = a1[2];
  *&v32[9] = *(a1 + 41);
  v33 = v37;
  if ((v9 & 1) != 0 || (v12 = *(v7 + 1), v29[0] = *v7, v29[1] = v12, v30[0] = *(v7 + 2), *(v30 + 9) = *(v7 + 41), sub_1AEA8FBCC(), result = sub_1AEAF957C(), (result & 1) == 0))
  {
LABEL_6:
    v13 = a1[1];
    *v7 = *a1;
    *(v7 + 1) = v13;
    *(v7 + 2) = a1[2];
    *(v7 + 41) = *(a1 + 41);
    v7[57] = v10;
    v14 = &v1[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_state];
    swift_beginAccess();
    v15 = v14[88];
    if (v15 == 255)
    {
      sub_1AEA5D1B0(v31);
      sub_1AEA72280();
      sub_1AEA62F28(v31);
      v27 = sub_1AEA5D260();
      SamplingPrioritizer.updateLatestFrameDetails(for:details:)(v27, v28, a1);
    }

    else
    {
      v17 = *(v14 + 9);
      v16 = *(v14 + 10);
      v19 = *(v14 + 7);
      v18 = *(v14 + 8);
      v22 = v14 + 40;
      v20 = *(v14 + 5);
      v21 = *(v22 + 1);
      v23 = sub_1AEAF982C();
      (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v1;
      *(v24 + 40) = v20;
      *(v24 + 48) = v21;
      *(v24 + 56) = v19;
      *(v24 + 64) = v18;
      *(v24 + 72) = v17;
      *(v24 + 80) = v16;
      *(v24 + 88) = v15;
      v25 = v35;
      *(v24 + 96) = v34;
      *(v24 + 112) = v25;
      *(v24 + 128) = *v36;
      *(v24 + 137) = *&v36[9];
      sub_1AEA63350(v20, v21, v19, v18, v17, v16, v15);
      v26 = v1;
      sub_1AEA5E2A0(0, 0, v5, &unk_1AEAFDB90, v24);
    }
  }

  return result;
}

uint64_t sub_1AEA8DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AEA8DA5C, 0, 0);
}

uint64_t sub_1AEA8DA5C()
{
  v21 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_1AEA5D1B0(v0 + 16);
  v3 = *(v0 + 48);
  sub_1AEA62F28(v0 + 16);
  v4 = *(v1 + 16);
  v18 = *v1;
  v19 = v4;
  *v20 = *(v1 + 32);
  v20[16] = *(v1 + 48);
  v5 = sub_1AEA5D260();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v10 = v2[1];
  v9 = v2[2];
  v11 = *v2;
  *(v8 + 73) = *(v2 + 41);
  *(v8 + 48) = v10;
  *(v8 + 64) = v9;
  *(v8 + 32) = v11;
  LOBYTE(v5) = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x110))(&v18, sub_1AEA900A4, v8);

  if ((v5 & 1) == 0)
  {
    v12 = *(v0 + 96);
    sub_1AEA5D1B0(v0 + 16);
    sub_1AEA72280();
    sub_1AEA62F28(v0 + 16);
    v13 = sub_1AEA5D260();
    v14 = v12[1];
    v18 = *v12;
    v19 = v14;
    *v20 = v12[2];
    *&v20[9] = *(v12 + 41);
    SamplingPrioritizer.updateLatestFrameDetails(for:details:)(v13, v15, &v18);
  }

  v16 = *(v0 + 8);

  return v16();
}

double static BaseIntervalAlgorithm.streamSampleRate(for:totalStreams:targetAverageSampleRate:)(double a1, double a2, double a3)
{
  v3 = 1.0;
  if (a1 > 1.0)
  {
    v3 = 1.0;
    v4 = 1.0 / ((a3 + -2.0) / (a2 + -2.0) * (1.0 - (a1 + -1.0) / (a2 + -2.0 + 1.0)) + (a3 + -2.0) / (a2 + -2.0) * (1.0 - (a1 + -1.0) / (a2 + -2.0 + 1.0)));
    if (v4 > 1.0)
    {
      return v4;
    }
  }

  return v3;
}

uint64_t sub_1AEA8DC74()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1EB5F5C10);
  __swift_project_value_buffer(v0, qword_1EB5F5C10);
  return sub_1AEAF8FDC();
}

char *sub_1AEA8DCEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AEA8DDF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AEA8DF14(char *a1, int64_t a2, char a3)
{
  result = sub_1AEA8DF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AEA8DF34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AEA8E058(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AEA8EF58(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1AEA8E0C4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AEA8E0C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AEAFA26C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1AEAF972C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1AEA8E31C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1AEA8E1BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AEA8E1BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 104 * a3 - 104;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 120);
      v10 = *(v8 + 16);
      if (v9 != v10)
      {
        if ((v9 & (v10 ^ 1) & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      if (*(v8 + 96))
      {
        v11 = 0;
      }

      else
      {
        v11 = *(v8 + 88);
      }

      if (*(v8 + 200))
      {
        if (v11)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v12 = *(v8 + 192);
        if (v11 != v12)
        {
          if (v11 >= v12)
          {
            goto LABEL_4;
          }

          goto LABEL_23;
        }
      }

      v13 = *(v8 + 32) * *(v8 + 40);
      if (*(v8 + 81))
      {
        v13 = 0.0;
      }

      v14 = *(v8 + 136) * *(v8 + 144);
      if (*(v8 + 185))
      {
        v14 = 0.0;
      }

      if (v13 >= v14)
      {
LABEL_4:
        ++a3;
        v5 += 104;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

LABEL_23:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v24 = *(v8 + 168);
      v25 = *(v8 + 184);
      v26 = *(v8 + 200);
      v20 = *(v8 + 104);
      v21 = *(v8 + 120);
      v22 = *(v8 + 136);
      v23 = *(v8 + 152);
      v15 = *(v8 + 16);
      *(v8 + 104) = *v8;
      *(v8 + 120) = v15;
      v16 = *(v8 + 48);
      *(v8 + 136) = *(v8 + 32);
      v17 = *(v8 + 64);
      v18 = *(v8 + 80);
      *(v8 + 200) = *(v8 + 96);
      *(v8 + 184) = v18;
      *(v8 + 168) = v17;
      *(v8 + 152) = v16;
      *(v8 + 64) = v24;
      *(v8 + 80) = v25;
      *(v8 + 96) = v26;
      *v8 = v20;
      *(v8 + 16) = v21;
      *(v8 + 32) = v22;
      *(v8 + 48) = v23;
      v8 -= 104;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1AEA8E31C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v110 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_131:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_169;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_133:
      v104 = *(v8 + 2);
      if (v104 >= 2)
      {
        while (*a3)
        {
          v105 = *&v8[16 * v104];
          v106 = *&v8[16 * v104 + 24];
          sub_1AEA8EAE0((*a3 + 104 * v105), (*a3 + 104 * *&v8[16 * v104 + 16]), (*a3 + 104 * v106), v5);
          if (v4)
          {
          }

          if (v106 < v105)
          {
            goto LABEL_156;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1AEA8EEB8(v8);
          }

          if (v104 - 2 >= *(v8 + 2))
          {
            goto LABEL_157;
          }

          v107 = &v8[16 * v104];
          *v107 = v105;
          *(v107 + 1) = v106;
          result = sub_1AEA8EE2C(v104 - 1);
          v104 = *(v8 + 2);
          if (v104 <= 1)
          {
          }
        }

        goto LABEL_167;
      }
    }

LABEL_163:
    result = sub_1AEA8EEB8(v8);
    v8 = result;
    goto LABEL_133;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      ++v7;
      goto LABEL_47;
    }

    v11 = *a3 + 104 * v10;
    v12 = *(v11 + 16);
    v13 = *a3 + 104 * v7;
    v14 = *(v13 + 16);
    if (v12 == v14)
    {
      v16 = *(v11 + 32);
      v17 = *(v11 + 40);
      v18 = *(v11 + 81);
      v19 = *(v13 + 32);
      v20 = *(v13 + 40);
      v21 = *(v13 + 81);
      v22 = *(v13 + 96);
      v23 = *(v13 + 88);
      if (v22)
      {
        v23 = 0;
      }

      if (*(v11 + 96))
      {
        if (v23)
        {
          v24 = 0;
LABEL_19:
          v15 = v23 < v24;
          goto LABEL_20;
        }
      }

      else
      {
        v24 = *(v11 + 88);
        if (v23 != v24)
        {
          goto LABEL_19;
        }
      }

      v25 = v19 * v20;
      if (v21)
      {
        v25 = 0.0;
      }

      v26 = v16 * v17;
      if (v18)
      {
        v26 = 0.0;
      }

      v15 = v25 < v26;
      goto LABEL_20;
    }

    v15 = v12 & (v14 ^ 1);
LABEL_20:
    v27 = v7 + 2;
    v28 = 104 * v7;
    v29 = (*a3 + 104 * v7 + 304);
    v30 = 104 * v7 + 104;
    do
    {
      v7 = v27;
      v32 = v10;
      v5 = v30;
      if (v27 >= v6)
      {
        break;
      }

      v33 = *(v29 - 80);
      v34 = *(v29 - 184);
      if (v33 == v34)
      {
        if (*(v29 - 104))
        {
          v35 = 0;
        }

        else
        {
          v35 = *(v29 - 14);
        }

        if (*v29)
        {
          if (!v35)
          {
            goto LABEL_32;
          }

          v36 = 0;
        }

        else
        {
          v36 = *(v29 - 1);
          if (v35 == v36)
          {
LABEL_32:
            v37 = *(v29 - 21) * *(v29 - 20);
            if (*(v29 - 119))
            {
              v37 = 0.0;
            }

            v38 = *(v29 - 8) * *(v29 - 7);
            if (*(v29 - 15))
            {
              v38 = 0.0;
            }

            v31 = v37 < v38;
            goto LABEL_22;
          }
        }

        v31 = v35 < v36;
      }

      else
      {
        v31 = v33 & (v34 ^ 1);
      }

LABEL_22:
      v27 = v7 + 1;
      v29 += 104;
      v10 = (v32 + 1);
      v30 = v5 + 104;
    }

    while (v15 == v31);
    if (v15)
    {
      if (v7 < v9)
      {
        goto LABEL_160;
      }

      if (v9 < v7)
      {
        v108 = v9;
        do
        {
          if (v9 != v32)
          {
            v40 = *a3;
            if (!*a3)
            {
              goto LABEL_166;
            }

            v41 = (v40 + v5);
            v120 = *(v40 + v28 + 64);
            v122 = *(v40 + v28 + 80);
            v124 = *(v40 + v28 + 96);
            v112 = *(v40 + v28);
            v114 = *(v40 + v28 + 16);
            v116 = *(v40 + v28 + 32);
            v118 = *(v40 + v28 + 48);
            result = memmove((v40 + v28), (v40 + v5), 0x68uLL);
            *(v41 + 4) = v120;
            *(v41 + 5) = v122;
            *(v41 + 48) = v124;
            *v41 = v112;
            *(v41 + 1) = v114;
            *(v41 + 2) = v116;
            *(v41 + 3) = v118;
          }

          ++v9;
          v5 -= 104;
          v28 += 104;
        }

        while (v9 < v32--);
        v6 = a3[1];
        v9 = v108;
      }
    }

LABEL_47:
    if (v7 >= v6)
    {
      goto LABEL_80;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_159;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_80;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_161;
    }

    if (&v9[a4] < v6)
    {
      v6 = &v9[a4];
    }

    if (v6 < v9)
    {
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    if (v7 == v6)
    {
LABEL_80:
      if (v7 < v9)
      {
        goto LABEL_158;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v5 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1AEA8DCEC(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v59 = *(v8 + 2);
      v58 = *(v8 + 3);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        result = sub_1AEA8DCEC((v58 > 1), v59 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v60;
      v61 = &v8[16 * v59];
      *(v61 + 4) = v5;
      *(v61 + 5) = v7;
      v62 = *v110;
      if (!*v110)
      {
        goto LABEL_168;
      }

      if (!v59)
      {
LABEL_3:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_131;
        }

        continue;
      }

      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v8 + 4);
          v65 = *(v8 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_100:
          if (v67)
          {
            goto LABEL_147;
          }

          v80 = &v8[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_150;
          }

          v86 = &v8[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_153;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_154;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_121;
          }

          goto LABEL_114;
        }

        v90 = &v8[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_114:
        if (v85)
        {
          goto LABEL_149;
        }

        v93 = &v8[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_152;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_121:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        if (!*a3)
        {
          goto LABEL_165;
        }

        v5 = *&v8[16 * v101 + 32];
        v102 = *&v8[16 * v63 + 40];
        sub_1AEA8EAE0((*a3 + 104 * v5), (*a3 + 104 * *&v8[16 * v63 + 32]), (*a3 + 104 * v102), v62);
        if (v4)
        {
        }

        if (v102 < v5)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AEA8EEB8(v8);
        }

        if (v101 >= *(v8 + 2))
        {
          goto LABEL_144;
        }

        v103 = &v8[16 * v101];
        *(v103 + 4) = v5;
        *(v103 + 5) = v102;
        result = sub_1AEA8EE2C(v63);
        v60 = *(v8 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v8[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_145;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_146;
      }

      v75 = &v8[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_148;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_151;
      }

      if (v79 >= v71)
      {
        v97 = &v8[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_155;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_121;
      }

      goto LABEL_100;
    }

    break;
  }

  v42 = *a3;
  v43 = *a3 + 104 * v7 - 104;
  v44 = &v9[-v7];
LABEL_57:
  v45 = v44;
  v46 = v43;
  while (1)
  {
    v47 = *(v46 + 120);
    v48 = *(v46 + 16);
    if (v47 == v48)
    {
      if (*(v46 + 96))
      {
        v49 = 0;
      }

      else
      {
        v49 = *(v46 + 88);
      }

      if (*(v46 + 200))
      {
        if (v49)
        {
          goto LABEL_56;
        }

LABEL_68:
        v51 = *(v46 + 32) * *(v46 + 40);
        if (*(v46 + 81))
        {
          v51 = 0.0;
        }

        v52 = *(v46 + 136) * *(v46 + 144);
        if (*(v46 + 185))
        {
          v52 = 0.0;
        }

        if (v51 < v52)
        {
          goto LABEL_75;
        }

LABEL_56:
        ++v7;
        v43 += 104;
        --v44;
        if (v7 == v6)
        {
          v7 = v6;
          goto LABEL_80;
        }

        goto LABEL_57;
      }

      v50 = *(v46 + 192);
      if (v49 == v50)
      {
        goto LABEL_68;
      }

      if (v49 >= v50)
      {
        goto LABEL_56;
      }
    }

    else if ((v47 & (v48 ^ 1) & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_75:
    if (!v42)
    {
      break;
    }

    v121 = *(v46 + 168);
    v123 = *(v46 + 184);
    v125 = *(v46 + 200);
    v113 = *(v46 + 104);
    v115 = *(v46 + 120);
    v117 = *(v46 + 136);
    v119 = *(v46 + 152);
    v53 = *(v46 + 16);
    *(v46 + 104) = *v46;
    *(v46 + 120) = v53;
    v54 = *(v46 + 48);
    *(v46 + 136) = *(v46 + 32);
    v55 = *(v46 + 64);
    v56 = *(v46 + 80);
    *(v46 + 200) = *(v46 + 96);
    *(v46 + 184) = v56;
    *(v46 + 168) = v55;
    *(v46 + 152) = v54;
    *(v46 + 64) = v121;
    *(v46 + 80) = v123;
    *(v46 + 96) = v125;
    *v46 = v113;
    *(v46 + 16) = v115;
    *(v46 + 32) = v117;
    *(v46 + 48) = v119;
    v46 -= 104;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_56;
    }
  }

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
  return result;
}

uint64_t sub_1AEA8EAE0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 104;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 104;
  if (v9 >= v11)
  {
    v22 = 104 * v11;
    if (a4 != __src || &__src[v22] <= a4)
    {
      memmove(a4, __src, 104 * v11);
    }

    v13 = &v4[v22];
    if (v10 < 104 || v6 <= v7)
    {
      goto LABEL_63;
    }

LABEL_36:
    v23 = v5;
    while (1)
    {
      v24 = *(v13 - 88);
      v25 = *(v6 - 88);
      if (v24 == v25)
      {
        if (*(v6 - 8))
        {
          v26 = 0;
        }

        else
        {
          v26 = *(v6 - 2);
        }

        if (*(v13 - 8))
        {
          if (!v26)
          {
            goto LABEL_48;
          }

          v5 = v23 - 104;
        }

        else
        {
          v27 = *(v13 - 2);
          if (v26 == v27)
          {
LABEL_48:
            v28 = *(v6 - 9) * *(v6 - 8);
            if (*(v6 - 23))
            {
              v28 = 0.0;
            }

            v29 = *(v13 - 9) * *(v13 - 8);
            if (*(v13 - 23))
            {
              v29 = 0.0;
            }

            v5 = v23 - 104;
            if (v28 < v29)
            {
LABEL_57:
              v31 = v6 - 104;
              if (v23 != v6)
              {
                memmove(v5, v6 - 104, 0x68uLL);
              }

              if (v13 <= v4 || (v6 -= 104, v31 <= v7))
              {
                v6 = v31;
                goto LABEL_63;
              }

              goto LABEL_36;
            }

            goto LABEL_55;
          }

          v5 = v23 - 104;
          if (v26 < v27)
          {
            goto LABEL_57;
          }
        }
      }

      else
      {
        v5 = v23 - 104;
        if (v24 & (v25 ^ 1))
        {
          goto LABEL_57;
        }
      }

LABEL_55:
      v30 = (v13 - 104);
      if (v13 != v23)
      {
        memmove(v5, v13 - 104, 0x68uLL);
      }

      v13 -= 104;
      v23 = v5;
      if (v30 <= v4)
      {
        v13 = v30;
        goto LABEL_63;
      }
    }
  }

  v12 = 104 * v9;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, v12);
  }

  v13 = &v4[v12];
  if (v8 >= 104 && v6 < v5)
  {
    do
    {
      v14 = v6[16];
      v15 = v4[16];
      if (v14 != v15)
      {
        if ((v14 & (v15 ^ 1) & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (v4[96])
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v4 + 11);
      }

      if (v6[96])
      {
        if (v16)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v17 = *(v6 + 11);
        if (v16 != v17)
        {
          if (v16 >= v17)
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }
      }

      v18 = *(v4 + 4) * *(v4 + 5);
      if (v4[81])
      {
        v18 = 0.0;
      }

      v19 = *(v6 + 4) * *(v6 + 5);
      if (v6[81])
      {
        v19 = 0.0;
      }

      if (v18 >= v19)
      {
LABEL_26:
        v20 = v4;
        v21 = v7 == v4;
        v4 += 104;
        if (v21)
        {
          goto LABEL_28;
        }

LABEL_27:
        memmove(v7, v20, 0x68uLL);
        goto LABEL_28;
      }

LABEL_22:
      v20 = v6;
      v21 = v7 == v6;
      v6 += 104;
      if (!v21)
      {
        goto LABEL_27;
      }

LABEL_28:
      v7 += 104;
    }

    while (v4 < v13 && v6 < v5);
  }

  v6 = v7;
LABEL_63:
  v32 = 104 * ((v13 - v4) / 104);
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, v32);
  }

  return 1;
}

uint64_t sub_1AEA8EE2C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AEA8EEB8(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1AEA8EECC(uint64_t a1, uint64_t a2)
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  v4 = sub_1AEAFA3FC();

  return sub_1AEA61BA0(a1, a2, v4);
}

uint64_t _s24SensitiveContentAnalysis19SamplingPrioritizerC8PriorityV1loiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != v3)
  {
    return v3 & (v2 ^ 1u);
  }

  if (a1[80])
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 9);
  }

  if (a2[80] == 1)
  {
    if (v5)
    {
      v6 = 0;
      return v5 < v6;
    }
  }

  else
  {
    v6 = *(a2 + 9);
    if (v5 != v6)
    {
      return v5 < v6;
    }
  }

  v7 = *(a1 + 2) * *(a1 + 3);
  if (a1[65])
  {
    v7 = 0.0;
  }

  v8 = *(a2 + 2) * *(a2 + 3);
  if (a2[65])
  {
    v8 = 0.0;
  }

  return v7 < v8;
}

uint64_t _s24SensitiveContentAnalysis19SamplingPrioritizerC8PriorityV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 9);
  v4 = a1[80];
  v5 = a1[81];
  v6 = *(a2 + 9);
  v7 = a2[80];
  v8 = a2[81];
  if (a1[65])
  {
    if ((a2[65] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[65])
    {
      return 0;
    }

    sub_1AEA8FBCC();
    if ((sub_1AEAF957C() & 1) == 0)
    {
      return 0;
    }
  }

  if ((v4 & 1) == 0)
  {
    if (v3 == v6)
    {
      v9 = v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }

    return v5 ^ v8 ^ 1u;
  }

  if (v7)
  {
    return v5 ^ v8 ^ 1u;
  }

  return 0;
}

uint64_t sub_1AEA8F10C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v16 = 2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));

  sub_1AEA8BE20(&v16, v2, v3);
  v22 = 1;
  v21 = 1;
  v6 = 1;
  if (v4 == 1)
  {
    v15 = v5;
    v16 = *sub_1AEA9B44C();
    sub_1AEA76774();
    v6 = sub_1AEAF9CFC();
  }

  v7 = v21;
  v8 = *(v1 + 32);

  os_unfair_lock_assert_owner(v8 + 4);
  v9 = *(v1 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AEA8DDF0(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1AEA8DDF0((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  v12 = &v9[104 * v11];
  *(v12 + 4) = v2;
  *(v12 + 5) = v3;
  v12[48] = v4;
  v13 = *(&v16 + 3);
  *(v12 + 49) = v16;
  *(v12 + 13) = v13;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 97) = 0u;
  v12[113] = 1;
  *(v12 + 59) = WORD2(v15);
  *(v12 + 114) = v15;
  *(v12 + 15) = 0;
  v12[128] = v7;
  v12[129] = v6 & 1;
  return sub_1AEA8AFBC(v9);
}

uint64_t sub_1AEA8F2C8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v4 + 24);
  v6 = v5 + 1;
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
    *(v4 + 24) = v6;
    sub_1AEA8C1F4(v7, v8, v10);
    if (LOBYTE(v10[0]) != 2)
    {
      v10[9] = v6;
      v11 = 0;
    }

    result = sub_1AEA8BE20(v10, v7, v8);
    *a1 = v6;
  }

  return result;
}

double sub_1AEA8F368@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_1AEA8C1F4(v3, v4, v10);
  if (v10[0] != 2)
  {
    v6 = v5[1];
    *&v10[8] = *v5;
    *&v10[24] = v6;
    *&v10[40] = v5[2];
    *&v10[49] = *(v5 + 41);
    v10[65] = 0;
  }

  sub_1AEA8BE20(v10, v3, v4);
  v7 = *&v10[48];
  *(a1 + 32) = *&v10[32];
  *(a1 + 48) = v7;
  *(a1 + 64) = *&v10[64];
  *(a1 + 80) = v11;
  result = *v10;
  v9 = *&v10[16];
  *a1 = *v10;
  *(a1 + 16) = v9;
  return result;
}

uint64_t sub_1AEA8F434()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = 2;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  memset(v8, 0, sizeof(v8));

  return sub_1AEA8BE20(&v4, v1, v2);
}

void sub_1AEA8F4A4(void *a1@<X8>)
{
  os_unfair_lock_assert_owner((*(v1 + 32) + 16));
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v60 = MEMORY[0x1E69E7CC0];

    sub_1AEA61E58(0, v4, 0);
    v6 = *(v3 + 16);
    if (v6 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = *(v3 + 16);
    }

    v26 = v7;
    if (v6)
    {
      v8 = 0;
      v5 = v60;
      v27 = v4 - 1;
      v28 = v3;
      v9 = 32;
      while (v8 < *(v3 + 16))
      {
        v10 = *(v3 + v9);
        v11 = *(v3 + v9 + 32);
        v40[1] = *(v3 + v9 + 16);
        v40[2] = v11;
        v40[0] = v10;
        v12 = *(v3 + v9 + 48);
        v13 = *(v3 + v9 + 64);
        v14 = *(v3 + v9 + 80);
        v41 = *(v3 + v9 + 96);
        v40[4] = v13;
        v40[5] = v14;
        v40[3] = v12;
        v15 = *(v3 + v9 + 16);
        v33 = *(v3 + v9);
        v34 = v15;
        v16 = *(v3 + v9 + 32);
        v17 = *(v3 + v9 + 48);
        v18 = *(v3 + v9 + 64);
        v19 = *(v3 + v9 + 80);
        v39 = *(v3 + v9 + 96);
        v37 = v18;
        v38 = v19;
        v35 = v16;
        v36 = v17;
        memmove(__dst, (v3 + v9), 0x62uLL);
        v48 = __dst[3];
        v49 = __dst[4];
        v50 = __dst[5];
        v45 = __dst[0];
        v46 = __dst[1];
        v47 = __dst[2];
        v58 = v38;
        v57 = v37;
        v56 = v36;
        v53 = v33;
        v54 = v34;
        v51 = v43;
        v44 = v8;
        v52 = v8;
        v59 = v39;
        v55 = v35;
        sub_1AEA9010C(v40, v31);
        sub_1AEA9010C(__dst, v31);
        sub_1AEA41FAC(&v52, &qword_1EB5E8D70);
        v20 = v45;
        *&v31[0] = v44;
        v29 = sub_1AEAFA27C();
        v30 = v21;
        MEMORY[0x1B270CB50](8250, 0xE200000000000000);
        MEMORY[0x1B270CB50](v20, *(&v20 + 1));
        MEMORY[0x1B270CB50](8250, 0xE200000000000000);
        v31[2] = v48;
        v31[3] = v49;
        v31[4] = v50;
        v32 = v51;
        v31[0] = v46;
        v31[1] = v47;
        v22 = SamplingPrioritizer.Priority.debugDescription.getter();
        MEMORY[0x1B270CB50](v22);

        sub_1AEA41FAC(&v44, &qword_1EB5E8D70);
        v60 = v5;
        v24 = *(v5 + 16);
        v23 = *(v5 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1AEA61E58((v23 > 1), v24 + 1, 1);
          v5 = v60;
        }

        *(v5 + 16) = v24 + 1;
        v25 = v5 + 16 * v24;
        *(v25 + 32) = v29;
        *(v25 + 40) = v30;
        if (v27 == v8)
        {

          goto LABEL_14;
        }

        ++v8;
        v9 += 104;
        v3 = v28;
        if (v26 == v8)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a1 = v5;
  }
}

uint64_t sub_1AEA8F794@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  os_unfair_lock_assert_owner((*(v3 + 32) + 16));
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    v9 = v5 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v8 <= *(v5 + 16))
      {
        v11 = *(v5 + 16);
      }

      else
      {
        v11 = v8;
      }

      v12 = (v9 + 104 * v8++);
      v13 = -v11;
      while (1)
      {
        if (v13 + v8 == 1)
        {
          __break(1u);
          return result;
        }

        v14 = v12[3];
        v15 = v12[4];
        v16 = v12[5];
        v54 = *(v12 + 48);
        v17 = v12[1];
        v18 = v12[2];
        v48 = *v12;
        v49 = v17;
        v52 = v15;
        v53 = v16;
        v50 = v18;
        v51 = v14;
        if (HIBYTE(v54) == 1 && (BYTE1(v53) & 1) == 0)
        {
          v19 = ((v53 & 1) != 0 ? &v50 : &v52);
          v20 = *v19;
          v21 = (v53 & 1) != 0 ? (&v50 + 8) : (&v52 + 8);
          if (v20 * *v21 > 90000.0)
          {
            break;
          }
        }

        ++v8;
        v12 = (v12 + 104);
        if (v8 - v6 == 1)
        {
          goto LABEL_25;
        }
      }

      v45 = v9;
      sub_1AEA9010C(&v48, v47);
      result = swift_isUniquelyReferenced_nonNull_native();
      v55 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1AEA8DF14(0, v10[2] + 1, 1);
        v10 = v55;
      }

      v23 = v10[2];
      v22 = v10[3];
      v24 = v23 + 1;
      v9 = v45;
      if (v23 >= v22 >> 1)
      {
        v43 = v10[2];
        v44 = v23 + 1;
        result = sub_1AEA8DF14((v22 > 1), v23 + 1, 1);
        v23 = v43;
        v24 = v44;
        v9 = v45;
        v10 = v55;
      }

      v10[2] = v24;
      v25 = &v10[13 * v23];
      v26 = v48;
      v27 = v50;
      *(v25 + 3) = v49;
      *(v25 + 4) = v27;
      *(v25 + 2) = v26;
      v28 = v51;
      v29 = v52;
      v30 = v53;
      *(v25 + 64) = v54;
      *(v25 + 6) = v29;
      *(v25 + 7) = v30;
      *(v25 + 5) = v28;
    }

    while (v8 != v6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

LABEL_25:

  v31 = v10[2];
  v32 = 0.0;
  if (!v31)
  {
LABEL_33:
    LOBYTE(v38) = 1;
LABEL_34:
    v39 = a1;
    goto LABEL_35;
  }

  v33 = 0;
  v34 = *(v3 + 56);
  v35 = *(v3 + 64);
  v36 = v10 + 5;
  while (1)
  {
    v37 = *(v36 - 1) == v2 && *v36 == v4;
    if (v37 || (sub_1AEAFA2BC() & 1) != 0)
    {
      break;
    }

    ++v33;
    v36 += 13;
    if (v31 == v33)
    {
      goto LABEL_33;
    }
  }

  if (!v35)
  {
    LOBYTE(v38) = 0;
    v32 = v34;
    goto LABEL_34;
  }

  if (v35 == 1)
  {
    v39 = a1;
    LOBYTE(v38) = 0;
    if (v33 <= 1)
    {
      v32 = 1.0;
    }

    else
    {
      v40 = (v34 + -2.0) / (v10[2] + -2.0) * (1.0 - (v33 + -1.0) / (v10[2] + -2.0 + 1.0));
      v41 = 1.0 / (v40 + v40);
      if (v41 > 1.0)
      {
        v32 = v41;
      }

      else
      {
        v32 = 1.0;
      }
    }

    goto LABEL_35;
  }

  v39 = a1;
  if (v33 <= 3)
  {
    v38 = 0;
LABEL_48:
    v42 = (&unk_1F248B720 + 16 * v38);
    LOBYTE(v38) = 0;
    v32 = v42[5];
    goto LABEL_35;
  }

  v38 = 1;
  if (v33 <= 0xA)
  {
    goto LABEL_48;
  }

LABEL_35:

  *v39 = v32;
  *(v39 + 8) = v38;
  return result;
}

void *sub_1AEA8FAE4@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    *a1 = v6;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1AEA8FB30()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AEA5E1AC;

  return sub_1AEA8DA38(v3, v4, v5, v2, v0 + 40, v0 + 96);
}

unint64_t sub_1AEA8FBCC()
{
  result = qword_1EB5E8D48;
  if (!qword_1EB5E8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8D48);
  }

  return result;
}

unint64_t sub_1AEA8FC24()
{
  result = qword_1EB5E8D50;
  if (!qword_1EB5E8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8D50);
  }

  return result;
}

unint64_t sub_1AEA8FC7C()
{
  result = qword_1EB5E8D58;
  if (!qword_1EB5E8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8D58);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1AEA8FD54(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[82])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AEA8FD98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BaseIntervalAlgorithm(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BaseIntervalAlgorithm(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AEA8FE90(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AEA8FEA8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1AEA8FEFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_1AEA8FF44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_1AEA8FFC0()
{
  result = qword_1EB5EB190[0];
  if (!qword_1EB5EB190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EB190);
  }

  return result;
}

uint64_t sub_1AEA90014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    return v3 & (v2 ^ 1u);
  }

  if (*(a1 + 96))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + 88);
  }

  if (*(a2 + 96))
  {
    if (v5)
    {
      v6 = 0;
      return v5 < v6;
    }
  }

  else
  {
    v6 = *(a2 + 88);
    if (v5 != v6)
    {
      return v5 < v6;
    }
  }

  v7 = *(a1 + 32) * *(a1 + 40);
  if (*(a1 + 81))
  {
    v7 = 0.0;
  }

  v8 = *(a2 + 32) * *(a2 + 40);
  if (*(a2 + 81))
  {
    v8 = 0.0;
  }

  return v7 < v8;
}

void sub_1AEA900A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v3;
  v5[0] = *(v0 + 64);
  *(v5 + 9) = *(v0 + 73);
  sub_1AEA6C784(v1, v2, v4);
}

unint64_t sub_1AEA90174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9D70);
    v3 = sub_1AEAFA06C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AEA8EECC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id SCSensitivityAnalyzer.VideoAnalysisHandler.progress.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void SCSensitivityAnalyzer.VideoAnalysisHandler.progress.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1AEA90374()
{
  v1 = v0[19];
  v7 = *(v1 + OBJC_IVAR____TtCE24SensitiveContentAnalysisCSo21SCSensitivityAnalyzer20VideoAnalysisHandler_analyzer);
  v2 = sub_1AEAF8C6C();
  v0[20] = v2;
  v0[14] = sub_1AEA90738;
  v0[15] = v1;
  v3 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1AEA907D4;
  v0[13] = &block_descriptor_2;
  v4 = _Block_copy(v0 + 10);
  v0[21] = v4;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1AEA9053C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D80);
  v0[10] = v3;
  v0[11] = 1107296256;
  v0[12] = sub_1AEA90828;
  v0[13] = &block_descriptor_3;
  v0[14] = v5;
  [v7 analyzeVideoFile:v2 progressHandler:v4 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AEA9053C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1AEA906BC;
  }

  else
  {
    v2 = sub_1AEA9064C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA9064C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  _Block_release(*(v0 + 168));

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1AEA906BC()
{
  v1 = v0[21];
  v2 = v0[20];
  swift_willThrow();
  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

id sub_1AEA90738(double a1)
{
  result = swift_beginAccess();
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    return [*(v1 + 16) setCompletedUnitCount_];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AEA907D4(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_1AEA90828(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1AEA90918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtCE24SensitiveContentAnalysisCSo21SCSensitivityAnalyzer20VideoAnalysisHandler_fileURL;
  v8 = sub_1AEAF8CAC();
  (*(*(v8 - 8) + 32))(v6 + v7, a3, v8);
  *(v6 + OBJC_IVAR____TtCE24SensitiveContentAnalysisCSo21SCSensitivityAnalyzer20VideoAnalysisHandler_analyzer) = a2;
  return v6;
}

uint64_t SCSensitivityAnalyzer.VideoAnalysisHandler.deinit()
{
  v1 = OBJC_IVAR____TtCE24SensitiveContentAnalysisCSo21SCSensitivityAnalyzer20VideoAnalysisHandler_fileURL;
  v2 = sub_1AEAF8CAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t SCSensitivityAnalyzer.VideoAnalysisHandler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCE24SensitiveContentAnalysisCSo21SCSensitivityAnalyzer20VideoAnalysisHandler_fileURL;
  v2 = sub_1AEAF8CAC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t SCSensitivityAnalyzer.videoAnalysis(forFileAt:)(uint64_t a1)
{
  v3 = sub_1AEAF8CAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() progressWithTotalUnitCount_];
  [v7 setCompletedUnitCount_];
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for SCSensitivityAnalyzer.VideoAnalysisHandler();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  (*(v4 + 32))(v8 + OBJC_IVAR____TtCE24SensitiveContentAnalysisCSo21SCSensitivityAnalyzer20VideoAnalysisHandler_fileURL, v6, v3);
  *(v8 + OBJC_IVAR____TtCE24SensitiveContentAnalysisCSo21SCSensitivityAnalyzer20VideoAnalysisHandler_analyzer) = v1;
  v9 = v1;
  return v8;
}

uint64_t type metadata accessor for SCSensitivityAnalyzer.VideoAnalysisHandler()
{
  result = qword_1EB5EB220;
  if (!qword_1EB5EB220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1AEA90D64()
{
  v2[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2[0] = 0;
  if ([swift_getObjCClassFromMetadata() shouldAnalyzeMedia_])
  {
    return v2[0];
  }

  v1 = v2[0];
  sub_1AEAF8C5C();

  return swift_willThrow();
}

id sub_1AEA90E90()
{
  v5[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_1AEAF958C();
  v5[0] = 0;
  v2 = [ObjCClassFromMetadata shouldAnalyzeMediaWithType:v1 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1AEAF8C5C();

  return swift_willThrow();
}

uint64_t sub_1AEA9100C(void *a1)
{
  static Entitlements.advisoryChecks.getter();
  Entitlements.Checks.checkSupportsAnalysis()();

  if (v3)
  {

    swift_getObjectType();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    static SensitiveContentPolicy.current.getter(&v8);
    v6[1] = v8;
    v7 = v9;
    v6[0] = *sub_1AEA9B38C();
    Optional<A>.check(for:)(v6, &v10);
    v4 = [v1 initWithQueue_];

    return v4;
  }
}

uint64_t sub_1AEA91174(void *a1)
{
  v1 = a1;
  isMovie = NSURL.sca_isMovieFile.getter();

  return isMovie & 1;
}

uint64_t NSURL.sca_isMovieFile.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D88);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1AEAF8E7C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = [v1 pathExtension];
  if (v12)
  {
    v13 = v12;
    sub_1AEAF95BC();

    sub_1AEAF8E4C();
    sub_1AEAF8E3C();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v11, v4, v5);
      sub_1AEAF8E5C();
      v14 = sub_1AEAF8E6C();
      v15 = *(v6 + 8);
      v15(v9, v5);
      v15(v11, v5);
      return v14 & 1;
    }

    sub_1AEA9143C(v4);
  }

  v14 = 0;
  return v14 & 1;
}

void *sub_1AEA913B4()
{
  static Entitlements.advisoryChecks.getter();
  Entitlements.Checks.checkSupportsAnalysis()();

  if (!v1)
  {
    static SensitiveContentPolicy.current.getter(&v4);
    v2[1] = v4;
    v3 = v5;
    v2[0] = *sub_1AEA9B38C();
    return Optional<A>.check(for:)(v2, &v6);
  }

  return result;
}

uint64_t sub_1AEA9143C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AEA914AC()
{
  result = sub_1AEAF8CAC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t VideoStreamAnalyzer.encode(forConnection:)()
{
  v0 = sub_1AEAF918C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AEA91678();
  sub_1AEA5F75C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8DF0);
  sub_1AEAF916C();
  (*(v1 + 8))(v3, v0);
  return v5[1];
}

uint64_t sub_1AEA91678()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E28);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  sub_1AEAF917C();
  v19 = sub_1AEA5D6CC();
  v20 = 0;
  sub_1AEA93D44();
  sub_1AEAF923C();
  sub_1AEA5D260();
  sub_1AEAF91DC();
  sub_1AEA5FEB4();
  sub_1AEAF91DC();
  v4 = *(v0 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_sampleTimer) + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config;
  swift_beginAccess();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  v19 = *v4;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  sub_1AEAF55DC();
  v10 = sub_1AEAF918C();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  sub_1AEAF91AC();
  empty = xpc_array_create_empty();
  v12 = sub_1AEA5D2B8();
  if (v12 > 2)
  {
    sub_1AEA5D4AC(v12);
    result = sub_1AEAFA01C();
    __break(1u);
  }

  else
  {
    sub_1AEA5D1B0(&v19);
    v13 = v23;
    v14 = sub_1AEA62F28(&v19);
    v15 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0xB0))(v14);

    v16 = [v15 _endpoint];
    xpc_array_append_value(empty, v16);
    swift_unknownObjectRelease();
    return sub_1AEAF91FC();
  }

  return result;
}

uint64_t VideoStreamAnalyzer.__allocating_init(coder:)(void *a1)
{
  v2 = sub_1AEAF8FEC();
  MEMORY[0x1EEE9AC00](v2);
  v3 = a1;
  v4 = sub_1AEA91BC8(v3);

  return v4;
}

uint64_t sub_1AEA91BC8(void *a1)
{
  v5 = sub_1AEAF8FEC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1AEAF958C();
    v10 = [v8 decodeIntegerForKey_];

    if ((v10 & 0x8000000000000000) == 0)
    {
      v51 = v1;
      sub_1AEA49EF8(0, &qword_1EB5E8B00);
      v11 = sub_1AEAF9BDC();
      if (v11 && (v3 = v11, v65 = 0, sub_1AEA49EF8(0, &qword_1EB5E8AF8), sub_1AEAF96DC(), v3, (v12 = v65) != 0))
      {
        v3 = sub_1AEA49EF8(0, &unk_1EB5E8E50);
        v13 = sub_1AEAF9BDC();
        if (v13 && (v14 = v13, v65 = 0, v66 = 0, sub_1AEAF95AC(), v14, (v15 = v66) != 0))
        {
          v50 = v65;
          v16 = sub_1AEAF9BDC();
          if (v16 && (v65 = 0, v66 = 0, v3 = v15, v17 = v16, sub_1AEAF95AC(), v17, v66))
          {
            v49 = v66;
            v47 = v65;
            type metadata accessor for SampleTimerSecureCodingConfig();
            v18 = sub_1AEAF9BDC();
            if (v18)
            {
              v48 = v18;
              sub_1AEA71D38(v67);
              v19 = (*((*MEMORY[0x1E69E7D40] & *v67[4]) + 0x108))(v12);
              if (v2)
              {

                sub_1AEA62F28(v67);
              }

              else
              {
                v26 = v19;
                v27 = v20;
                v28 = v21;
                v29 = v22;

                v30 = v27;
                v31 = v3;
                static Entitlements.Source.auditToken(_:)(v26, v30, v28, v29, v63);
                v61[0] = v63[0];
                v61[1] = v63[1];
                v61[2] = v63[2];
                v62 = v64;
                v32 = sub_1AEA5FEA4(v10);
                sub_1AEA5D204(v67, v54);
                v33 = v48[OBJC_IVAR____TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig_config + 8];
                v34 = *&v48[OBJC_IVAR____TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig_config + 16];
                v35 = v48[OBJC_IVAR____TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig_config + 24];
                v36 = *&v48[OBJC_IVAR____TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig_config + 32];
                v37 = v48[OBJC_IVAR____TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig_config + 40];
                v55 = *&v48[OBJC_IVAR____TtC24SensitiveContentAnalysis29SampleTimerSecureCodingConfig_config];
                v56 = v33;
                v57 = v34;
                v58 = v35;
                v59 = v36;
                v60 = v37;
                sub_1AEA71F88(v50, v3, v47, v49, v61, v32, v54, &v55, &v65);
                sub_1AEA5D154(&v65, v54);
                v3 = (*(v51 + 160))(v54, 1);
                v38 = sub_1AEA5DB30();
                v40 = v52;
                v39 = v53;
                (*(v52 + 16))(v68, v38, v53);

                v41 = sub_1AEAF8FCC();
                LODWORD(v29) = sub_1AEAF9A8C();

                LODWORD(v51) = v29;
                if (os_log_type_enabled(v41, v29))
                {
                  v42 = swift_slowAlloc();
                  v43 = swift_slowAlloc();
                  v54[0] = v43;
                  *v42 = 136315138;
                  v44 = v41;
                  v45 = sub_1AEA45C14(v50, v31, v54);

                  *(v42 + 4) = v45;
                  _os_log_impl(&dword_1AEA3F000, v44, v51, "Decoded analyzer from NSXPCCoder: %s", v42, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v43);
                  MEMORY[0x1B270E620](v43, -1, -1);
                  MEMORY[0x1B270E620](v42, -1, -1);

                  (*(v52 + 8))(v68, v53);
                }

                else
                {

                  (*(v40 + 8))(v68, v39);
                }

                sub_1AEA62E64(&v65);
                sub_1AEA62F28(v67);
              }

              return v3;
            }

            sub_1AEA7050C();
            swift_allocError();
            v24 = 6;
          }

          else
          {

            sub_1AEA7050C();
            swift_allocError();
            v24 = 5;
          }
        }

        else
        {

          sub_1AEA7050C();
          swift_allocError();
          v24 = 4;
        }
      }

      else
      {
        sub_1AEA7050C();
        swift_allocError();
        v24 = 3;
      }

      *v23 = v24;
      swift_willThrow();

      return v3;
    }

    __break(1u);
  }

  result = sub_1AEAFA01C();
  __break(1u);
  return result;
}

uint64_t VideoStreamAnalyzer.__allocating_init(xpcObject:)()
{
  v1 = sub_1AEAF8FEC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_unknownObjectRetain();
  v6 = sub_1AEA924E0(v5);
  if (v0)
  {
    v7 = sub_1AEA5DB30();
    (*(v2 + 16))(v4, v7, v1);
    v8 = v0;
    v9 = sub_1AEAF8FCC();
    v10 = sub_1AEAF9A9C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v19 = v1;
      v12 = v11;
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v0;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1AEA3F000, v9, v10, "Failed to decode stream analyzer xpc object with error: %@", v12, 0xCu);
      sub_1AEA41FAC(v13, &unk_1EB5E9C00);
      MEMORY[0x1B270E620](v13, -1, -1);
      v16 = v12;
      v1 = v19;
      MEMORY[0x1B270E620](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1AEA924E0(uint64_t a1)
{
  v108 = a1;
  v1 = sub_1AEAF8FEC();
  v80 = *(v1 - 8);
  v81 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v82 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v69 - v4;
  v6 = sub_1AEAF92AC();
  v83 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AEAF918C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v69 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - v17;
  static Entitlements.Source.currentProcess.getter(v105);
  v85 = v105[0];
  v86 = v105[1];
  v87 = v105[2];
  v88 = v106;
  v19 = v84;
  sub_1AEA72268(&v85);
  v84 = v19;
  if (v19)
  {
    sub_1AEA44C1C(v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1), v88);
    swift_unknownObjectRelease();
    return v10;
  }

  v75 = v8;
  v76 = v6;
  v72 = v13;
  v73 = v5;
  v74 = v16;
  v77 = v10;
  v78 = v9;
  sub_1AEA44C1C(v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1), v88);
  v10 = v108;
  swift_unknownObjectRetain();
  sub_1AEAF91BC();
  sub_1AEA93D44();
  sub_1AEAF922C();
  v20 = v18;
  if (BYTE8(v105[0]) == 1)
  {
    sub_1AEA7050C();
    swift_allocError();
    v22 = 2;
LABEL_12:
    *v21 = v22;
    swift_willThrow();
LABEL_13:
    swift_unknownObjectRelease();
    (*(v77 + 8))(v20, v78);
    return v10;
  }

  v23 = *&v105[0];
  v24 = sub_1AEAF91EC();
  if (!v24)
  {
    sub_1AEA7050C();
    swift_allocError();
    v22 = 3;
    goto LABEL_12;
  }

  v25 = v24;
  swift_unknownObjectRetain();
  v26 = v75;
  sub_1AEAF92BC();
  sub_1AEA49EF8(0, &qword_1EB5E8AF8);
  v27 = v84;
  v28 = sub_1AEAF929C();
  (*(v83 + 8))(v26, v76);
  v29 = MEMORY[0x1B270C730](0x72657A796C616E61, 0xEC00000044495555);
  if (!v30)
  {

    sub_1AEA7050C();
    swift_allocError();
    *v38 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v75 = v29;
  v83 = v30;
  v31 = MEMORY[0x1B270C730](0x7069636974726170, 0xEF44495555746E61);
  v33 = v78;
  if (!v32)
  {

    sub_1AEA7050C();
    swift_allocError();
    *v39 = 5;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v77 + 8))(v20, v33);
    return v10;
  }

  v76 = v32;
  v70 = v23;
  v71 = v31;
  v34 = v73;
  sub_1AEAF919C();
  v35 = v77;
  if ((*(v77 + 48))(v34, 1, v33) == 1)
  {

    sub_1AEA41FAC(v34, &qword_1EB5E8E28);
    sub_1AEA7050C();
    swift_allocError();
    *v36 = 6;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v35 + 8))(v20, v78);
    return v10;
  }

  v69 = v25;
  v40 = v78;
  (*(v35 + 32))(v74, v34, v78);
  sub_1AEA71D38(v107);
  v41 = v35;
  v42 = (*((*MEMORY[0x1E69E7D40] & *v107[4]) + 0x108))(v28);
  v84 = v27;
  if (v27)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_21:

    v55 = *(v41 + 8);
    v55(v74, v40);
    v55(v20, v40);
    sub_1AEA62F28(v107);
    return v10;
  }

  v46 = v42;
  v47 = v43;
  v48 = v44;
  v49 = v45;

  v50 = v83;

  v51 = v47;
  v40 = v78;
  static Entitlements.Source.auditToken(_:)(v46, v51, v48, v49, v103);
  v101[0] = v103[0];
  v101[1] = v103[1];
  v101[2] = v103[2];
  v102 = v104;
  v52 = sub_1AEA5FEA4(v70);
  sub_1AEA5D204(v107, &v85);
  v53 = v72;
  (*(v41 + 16))(v72, v74, v40);
  sub_1AEAF5A54(v53, &v95);
  v89 = v95;
  v90 = v96;
  v91 = v97;
  v92 = v98;
  v93 = v99;
  v94 = v100;
  v54 = v84;
  sub_1AEA71F88(v75, v50, v71, v76, v101, v52, &v85, &v89, v105);
  v84 = v54;
  if (v54)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  sub_1AEA5D154(v105, &v85);
  v10 = (v79[20].isa)(&v85, 1);
  v56 = sub_1AEA5DB30();
  v57 = v80;
  v58 = v81;
  (*(v80 + 16))(v82, v56, v81);

  v59 = sub_1AEAF8FCC();
  v60 = sub_1AEAF9A8C();

  v79 = v59;
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v85 = v62;
    *v61 = 136315138;
    v63 = sub_1AEA45C14(v75, v83, &v85);

    *(v61 + 4) = v63;
    v64 = v79;
    _os_log_impl(&dword_1AEA3F000, v79, v60, "Decoded analyzer from xpc_object_t: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1B270E620](v62, -1, -1);
    MEMORY[0x1B270E620](v61, -1, -1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v57 + 8))(v82, v81);
    sub_1AEA62E64(v105);
    v65 = v78;
    v66 = *(v77 + 8);
    v66(v74, v78);
    v67 = v20;
    v68 = v65;
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v57 + 8))(v82, v58);
    sub_1AEA62E64(v105);
    v66 = *(v77 + 8);
    v66(v74, v40);
    v67 = v20;
    v68 = v40;
  }

  v66(v67, v68);
  sub_1AEA62F28(v107);
  return v10;
}

uint64_t sub_1AEA92F28(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = a1;
  sub_1AEA5D6CC();
  v7 = sub_1AEAF9C5C();
  v8 = sub_1AEAF958C();
  [v5 encodeObject:v7 forKey:v8];

  sub_1AEA5D260();
  v9 = sub_1AEAF958C();

  v10 = sub_1AEAF958C();
  [v5 encodeObject:v9 forKey:v10];

  type metadata accessor for SampleTimerSecureCodingConfig();
  v11 = *(v2 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_sampleTimer) + OBJC_IVAR____TtC24SensitiveContentAnalysis11SampleTimer_config;
  swift_beginAccess();
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  v15 = *(v11 + 32);
  v16 = *(v11 + 40);
  v30 = *v11;
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v17 = sub_1AEAF7350(&v30);
  v18 = sub_1AEAF958C();
  [v5 encodeObject:v17 forKey:v18];

  sub_1AEA5FEB4();
  v19 = sub_1AEAF958C();

  v20 = sub_1AEAF958C();
  [v5 encodeObject:v19 forKey:v20];

  v21 = sub_1AEA5D2B8();
  if (v21 > 2)
  {
    sub_1AEA5D4AC(v21);
LABEL_8:
    result = sub_1AEAFA01C();
    __break(1u);
    return result;
  }

  if (qword_1EB5EB230 != -1)
  {
    swift_once();
  }

  v22 = qword_1EB5EB238;
  os_unfair_lock_lock((qword_1EB5EB238 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8E10);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1AEAFC480;
  sub_1AEA5D1B0(&v30);
  v24 = v34;
  v25 = sub_1AEA62F28(&v30);
  v26 = (*((*MEMORY[0x1E69E7D40] & *v24) + 0xB0))(v25);

  *(v23 + 32) = v26;
  sub_1AEA49EF8(0, &qword_1EB5E8AF8);
  v27 = sub_1AEAF96CC();

  v28 = sub_1AEAF958C();
  [v5 encodeObject:v27 forKey:v28];

  os_unfair_lock_unlock(v22 + 4);
  return sub_1AEA5F75C();
}

uint64_t sub_1AEA93358(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x746E696F70646E65;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x736E6F6974706FLL;
    }

    else
    {
      v5 = 0x746E696F70646E65;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x72657A796C616E61;
    v6 = 0xEC00000044495555;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x7069636974726170;
    }

    else
    {
      v5 = 0x6E6F4372656D6974;
    }

    if (v4 == 3)
    {
      v6 = 0xEF44495555746E61;
    }

    else
    {
      v6 = 0xEB00000000676966;
    }
  }

  v7 = 0x72657A796C616E61;
  v8 = 0xEC00000044495555;
  v9 = 0x7069636974726170;
  v10 = 0xEF44495555746E61;
  if (a2 != 3)
  {
    v9 = 0x6E6F4372656D6974;
    v10 = 0xEB00000000676966;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x736E6F6974706FLL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1AEAFA2BC();
  }

  return v13 & 1;
}

uint64_t sub_1AEA93514()
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();

  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA93618()
{
  sub_1AEAF95DC();
}

uint64_t sub_1AEA93708()
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();

  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA93808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AEA939A8();
  *a1 = result;
  return result;
}

void sub_1AEA93838(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000073;
  v4 = 0x746E696F70646E65;
  v5 = 0xEC00000044495555;
  v6 = 0x72657A796C616E61;
  v7 = 0xEF44495555746E61;
  v8 = 0x7069636974726170;
  if (v2 != 3)
  {
    v8 = 0x6E6F4372656D6974;
    v7 = 0xEB00000000676966;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x736E6F6974706FLL;
    v3 = 0xE700000000000000;
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

uint64_t sub_1AEA93904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EB5EB238 = result;
  return result;
}

id sub_1AEA93944@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696B0E0]) init];
  result = [v4 _setEndpoint_];
  *a2 = v4;
  return result;
}

uint64_t sub_1AEA939A8()
{
  v0 = sub_1AEAFA08C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1AEA939F8()
{
  result = qword_1EB5E8E00;
  if (!qword_1EB5E8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8E00);
  }

  return result;
}

unint64_t sub_1AEA93A50()
{
  result = qword_1EB5E8E08;
  if (!qword_1EB5E8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8E08);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s8XPCErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8XPCErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AEA93D44()
{
  result = qword_1EB5E8E30;
  if (!qword_1EB5E8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8E30);
  }

  return result;
}

void Atomic.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = **v1;
  v5 = *(v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1AEA93F80(v3 + v5, a1);
  os_unfair_lock_unlock((v3 + v6));
}

uint64_t sub_1AEA93E98()
{
  type metadata accessor for Atomic();

  sub_1AEA976CC();
}

uint64_t Atomic.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1AEA976CC();
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*Atomic.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[1] = a2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = *v2;
  v7[5] = v11;
  v7[6] = v12;
  *v7 = v12;
  Atomic.wrappedValue.getter(v11);
  return sub_1AEA940F0;
}

void sub_1AEA940F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v5 + 16))(*(*a1 + 32), v3, v6);

    sub_1AEA976CC();
    v7 = *(v5 + 8);
    v7(v4, v6);

    v7(v3, v6);
  }

  else
  {

    sub_1AEA976CC();
    (*(v5 + 8))(v3, v6);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1AEA94214(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1AEA42D1C(a1, a2);
  return v4;
}

uint64_t ConcurrencyError.hashValue.getter()
{
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](0);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA942D8()
{
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](0);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEA94344()
{
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](0);
  return sub_1AEAFA3FC();
}

id *sub_1AEA94384()
{
  v1 = *(*v0 + 12);
  v2 = sub_1AEAF9C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1AEA94434()
{
  sub_1AEA94384();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AsyncSequence<>.firstAndTheRest.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[6] = AssociatedTypeWitness;
  v6 = sub_1AEAF9C3C();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = *(AssociatedTypeWitness - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA945D0, 0, 0);
}

uint64_t sub_1AEA945D0()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1AEA946A0;
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DB20](v3, &unk_1AEAFE0D0, v1, v5, v4);
}

uint64_t sub_1AEA946A0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1AEA94A1C;
  }

  else
  {

    v2 = sub_1AEA947BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AEA947BC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[2];
  v5 = v0[3];
  if (v4 == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
    sub_1AEAFA40C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v6, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v8 = v0[11];
    v14 = v0[5];
    v9 = *(v2 + 32);
    v9(v8, v1, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
    sub_1AEAFA40C();
    v10 = swift_getTupleTypeMetadata2();
    v11 = *(v10 + 48);
    v9(v6, v8, v3);
    swift_storeEnumTagMultiPayload();
    (*(*(v5 - 8) + 16))(v6 + v11, v14, v5);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1AEA94A1C()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  sub_1AEAFA40C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 + 48);
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  (*(*(v4 - 8) + 16))(&v3[v6], v2, v4);
  (*(*(TupleTypeMetadata2 - 8) + 56))(v3, 0, 1, TupleTypeMetadata2);

  v7 = v0[1];

  return v7();
}

uint64_t withTimeout<A>(_:isolation:error:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v14;
  *(v8 + 80) = v15;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 136) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  if (a5)
  {
    swift_getObjectType();
    v9 = sub_1AEAF977C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v8 + 88) = v9;
  *(v8 + 96) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1AEA94C54, v9, v11);
}

uint64_t sub_1AEA94C54()
{
  if (*(v0 + 136))
  {
    v10 = (*(v0 + 64) + **(v0 + 64));
    v1 = swift_task_alloc();
    *(v0 + 128) = v1;
    *v1 = v0;
    v1[1] = sub_1AEA94F6C;
    v2 = *(v0 + 16);

    return v10(v2);
  }

  else
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v11 = *(v0 + 24);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    v7 = *(v0 + 64);
    *(v6 + 16) = v4;
    *(v6 + 24) = v7;
    *(v6 + 40) = v11;
    *(v6 + 56) = v5;
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1AEA94E34;
    v9 = *(v0 + 16);

    return MEMORY[0x1EEE6DD58](v9);
  }
}

uint64_t sub_1AEA94E34()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];

    return MEMORY[0x1EEE6DFA0](sub_1AEA95060, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_1AEA94F6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AEA95060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA950C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  sub_1AEAF9C3C();
  v8[11] = swift_task_alloc();
  v8[12] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  v9 = sub_1AEAF98BC();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA95224, 0, 0);
}

uint64_t sub_1AEA95224()
{
  v1 = v0[16];
  v2 = v0[10];
  v17 = v0[9];
  v16 = v0[8];
  v15 = v0[7];
  v3 = v0[5];
  v4 = v0[6];
  v14 = v0[4];
  v5 = sub_1AEAF982C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v3;
  v7[6] = v4;
  sub_1AEAF98DC();

  sub_1AEA958F0(v1, &unk_1AEAFE328, v7);
  sub_1AEA4D550(v1);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v15;
  v8[6] = v16;
  v8[7] = v17;
  v9 = v17;
  sub_1AEA958F0(v1, &unk_1AEAFE338, v8);
  sub_1AEA4D550(v1);
  v0[17] = *v14;
  sub_1AEAF989C();
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_1AEA95470;
  v11 = v0[13];
  v12 = v0[11];

  return MEMORY[0x1EEE6DAD8](v12, 0, 0, v11, v0 + 2);
}

uint64_t sub_1AEA95470()
{

  if (v0)
  {
    v1 = sub_1AEA95760;
  }

  else
  {
    v1 = sub_1AEA95580;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AEA95580()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = *(v1 - 8);
  if ((*(v3 + 48))(v2, 1, v1) == 1)
  {
    v4 = v0[9];
    (*(v0[14] + 8))(v0[15], v0[13]);
    if (!v4)
    {
      sub_1AEA97768();
      swift_allocError();
    }

    v5 = v0[9];
    swift_willThrow();
    v10 = v5;

    v9 = v0[1];
  }

  else
  {
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[13];
    (*(v3 + 32))(v0[3], v2, v1);
    sub_1AEAF98CC();
    (*(v7 + 8))(v6, v8);

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_1AEA95760()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AEA957F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1AEA5E1AC;

  return v8(a1);
}

uint64_t sub_1AEA958F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1AEA77344(a1, v18 - v8);
  v10 = sub_1AEAF982C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1AEA4D550(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1AEAF977C();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AEAF981C();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1AEA95AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1AEAF9F5C();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA95B88, 0, 0);
}

uint64_t sub_1AEA95B88()
{
  sub_1AEAFA34C();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1AEA95C48;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1AEA761F0(v3, v2, 0, 0, 1);
}

uint64_t sub_1AEA95C48()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1AEA95E60;
  }

  else
  {
    v5 = sub_1AEA95DB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AEA95DB8()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    sub_1AEA97768();
    swift_allocError();
  }

  swift_willThrow();
  v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1AEA95E60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA95EC4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = a1;
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  sub_1AEAFA40C();
  v4 = sub_1AEAF9C3C();
  v5 = sub_1AEA44374();
  result = (*(*(v4 - 8) + 8))(&v7, v4);
  *a3 = v5;
  return result;
}

void *sub_1AEA95F80(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1AEA95EC4(0, 255, &v6);
  v4[2] = v6;
  v4[3] = a1;
  v4[4] = a2;
  return v4;
}

uint64_t sub_1AEA95FFC()
{

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  sub_1AEAFA40C();
  sub_1AEAF9C3C();
  type metadata accessor for Atomic();
  Atomic.withLock<A>(_:)();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1AEA960E8()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1AEA96128(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = v19;
  *(v9 + 72) = v8;
  *(v9 + 48) = a8;
  *(v9 + 56) = v18;
  *(v9 + 168) = a4;
  *(v9 + 32) = a3;
  *(v9 + 40) = a7;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v11 = sub_1AEAF8FEC();
  *(v9 + 80) = v11;
  v12 = *(v11 - 8);
  *(v9 + 88) = v12;
  *(v9 + 96) = *(v12 + 64);
  *(v9 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  *(v9 + 112) = swift_task_alloc();
  if (a5)
  {
    swift_getObjectType();
    v13 = sub_1AEAF977C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *(v9 + 120) = v13;
  *(v9 + 128) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1AEA9627C, v13, v15);
}

uint64_t sub_1AEA9627C()
{
  if (*(v0 + 168))
  {
    v21 = (*(v0 + 56) + **(v0 + 56));
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_1AEA9674C;
    v2 = *(v0 + 16);
    v3 = v21;
  }

  else
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);
    v9 = *(v0 + 72);
    v8 = *(v0 + 80);
    v10 = *(v0 + 48);
    v19 = *(v0 + 40);
    v22 = *(v0 + 56);
    v18 = *(v0 + 32);
    v11 = *(v0 + 24);
    v12 = sub_1AEAF982C();
    (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
    (*(v6 + 16))(v5, v9, v8);
    v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = 0;
    *(v14 + 3) = 0;
    *(v14 + 4) = v11;
    *(v14 + 5) = v18;
    (*(v6 + 32))(&v14[v13], v5, v8);
    v15 = &v14[(v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v15 = v19;
    *(v15 + 1) = v10;

    *(v0 + 136) = sub_1AEA96DD4(0, 0, v4, &unk_1AEAFE110, v14);
    sub_1AEA4D550(v4);
    v20 = (v22 + *v22);
    v16 = swift_task_alloc();
    *(v0 + 144) = v16;
    *v16 = v0;
    v16[1] = sub_1AEA96564;
    v2 = *(v0 + 16);
    v3 = v20;
  }

  return v3(v2);
}

uint64_t sub_1AEA96564()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1AEA96880;
  }

  else
  {
    v5 = sub_1AEA966A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1AEA966A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  sub_1AEAF985C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA9674C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AEA96880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  sub_1AEAF985C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA9692C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1AEAF9F5C();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AEA969F4, 0, 0);
}

uint64_t sub_1AEA969F4()
{
  sub_1AEAFA34C();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1AEA96AB4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1AEA761F0(v3, v2, 0, 0, 1);
}

uint64_t sub_1AEA96AB4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1AEA96D70;
  }

  else
  {
    v5 = sub_1AEA96C24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AEA96C24()
{
  v10 = v0;

  v1 = sub_1AEAF8FCC();
  v2 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136380675;
    *(v5 + 4) = sub_1AEA45C14(v4, v3, &v9);
    _os_log_impl(&dword_1AEA3F000, v1, v2, "%{private}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1B270E620](v6, -1, -1);
    MEMORY[0x1B270E620](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1AEA96D70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEA96DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1AEA77344(a3, v22 - v9);
  v11 = sub_1AEAF982C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1AEA4D550(v10);
  }

  else
  {
    sub_1AEAF981C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1AEAF977C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1AEAF95CC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_1AEA97020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a8 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v28[-v17];
  v29 = v19;
  v30 = v20;
  v31 = a9;
  v32 = v16;
  v33 = v21;
  sub_1AEA973EC(sub_1AEA97BA0, v28, v22, v23, v24, v25, v19);
  if (v10)
  {
    v34 = v10;
    v26 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    if (swift_dynamicCast())
    {

      (*(v12 + 32))(v15, v18, a8);
      (*(v12 + 16))(a10, v15, a8);
      swift_willThrowTypedImpl();
      (*(v12 + 8))(v15, a8);
    }

    else
    {

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1AEAF9E1C();
      MEMORY[0x1B270CB50](0xD000000000000043, 0x80000001AEB06FD0);
      v27 = sub_1AEAFA4AC();
      MEMORY[0x1B270CB50](v27);

      sub_1AEAFA01C();
      __break(1u);
    }
  }
}

uint64_t sub_1AEA97278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  result = v12(&v16 - v10);
  if (v4)
  {
    v14 = *(v6 + 32);
    v14(v9, v11, a4);
    if (sub_1AEAFA28C())
    {
      return (*(v6 + 8))(v9, a4);
    }

    else
    {
      swift_allocError();
      return (v14)(v15, v9, a4);
    }
  }

  return result;
}

uint64_t sub_1AEA973EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1AEAF97EC();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = swift_allocObject();
  v11[2] = a7;
  v11[3] = a1;
  v11[4] = a2;
  sub_1AEA7727C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1AEAF9E1C();
    MEMORY[0x1B270CB50](0xD00000000000003FLL, 0x80000001AEB07040);
    v14 = sub_1AEAFA4AC();
    MEMORY[0x1B270CB50](v14);

    MEMORY[0x1B270CB50](46, 0xE100000000000000);
    result = sub_1AEAFA01C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AEA97580()
{
  sub_1AEAF92FC();
  sub_1AEA428FC(&qword_1ED98AAC8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EC8);
  sub_1AEA42944(&qword_1ED98AAA8, &qword_1EB5E8EC8);
  return sub_1AEAF9D5C();
}

void sub_1AEA97658(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  if (a2)
  {
    v10 = a1;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1B270D080](v10, a3, a4, v9);

  _Block_release(v9);
}

void sub_1AEA976CC()
{
  v1 = *v0;
  v2 = **v0;
  v3 = *(v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  sub_1AEA97FFC(v1 + v3);
  os_unfair_lock_unlock((v1 + v4));
}

unint64_t sub_1AEA97768()
{
  result = qword_1ED989F88;
  if (!qword_1ED989F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED989F88);
  }

  return result;
}

uint64_t sub_1AEA977BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AEA4B9C4;

  return sub_1AEA94B88();
}

uint64_t sub_1AEA97848(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1AEA5E1AC;

  return sub_1AEA950C4(a1, a2, v7, v8, v9, v11, v10, v6);
}

uint64_t sub_1AEA97924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  if (v4 == 255)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    _ss6ResultO24SensitiveContentAnalysisE8catchingAByxq_Gxyq_YKXE_tcfC(sub_1AEA97E20, &v10);
    v6 = v10;
    v7 = v11;
    *a1 = v10;
    *(a1 + 8) = v7;
    v10 = v6;
    v11 = v7;
    sub_1AEA97E6C(v6, v7);
  }

  else
  {
    v5 = *a1;
    v10 = *a1;
    v11 = v4 & 1;
    sub_1AEA97E6C(v5, v4 & 1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F70);
  }

  v8 = sub_1AEAFA40C();
  return sub_1AEA61604(v8, &v12, a2);
}

uint64_t sub_1AEA97A84()
{
  v2 = *(sub_1AEAF8FEC() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1AEA63D38;

  return sub_1AEA9692C(v9, v10, v11, v4, v5, v0 + v3, v7, v8);
}

unint64_t sub_1AEA97BC8()
{
  result = qword_1EB5E8ED0;
  if (!qword_1EB5E8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E8ED0);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1AEA97CC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1AEA97D0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AEA97D48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AEA97E20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))();
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id sub_1AEA97E6C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1AEA97E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1AEA63D38;

  return sub_1AEA957F8(a1, v4, v5, v6);
}

uint64_t sub_1AEA97F54()
{
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1AEA63D38;

  return sub_1AEA95AC4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1AEA97FFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

char *static SCSensitivityAnalysis.optedToShowAnalysis()()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8ED8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AEAFC470;
  *(v0 + 32) = *sub_1AEAD9304();
  v6 = v0;
  sub_1AEA631F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8988);
  sub_1AEA42944(&qword_1EB5E8990, &qword_1EB5E8988);
  sub_1AEAF9D5C();
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AEAFC470;
  *(v1 + 32) = *sub_1AEAD981C();
  v6 = v1;
  sub_1AEA632F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EE8);
  sub_1AEA42944(&qword_1EB5E8EF0, &qword_1EB5E8EE8);
  sub_1AEAF9D5C();
  v4[0] = v4[1];
  SensitivityAnalysis.init(harmsDetected:flags:)(&v5, v4, &v6);
  v3 = v6;
  return SCSensitivityAnalysis.init(analysis:)(&v3);
}

uint64_t static SensitivityAnalysis.allSingleDetectionHarmVariants(with:)(__int16 *a1)
{
  v1 = *a1;
  v2 = sub_1AEAD9328();
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];

    sub_1AEA994B4(0, v4, 0);
    v6 = 32;
    v5 = v16;
    do
    {
      v14 = *(v3 + v6);
      v13 = v1;
      SensitivityAnalysis.init(harmsDetected:flags:)(&v14, &v13, v15);
      v7 = v15[0];
      v8 = v15[1];
      v16 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1AEA994B4((v9 > 1), v10 + 1, 1);
        v5 = v16;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 4 * v10;
      *(v11 + 32) = v7;
      *(v11 + 34) = v8;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return v5;
}

_WORD *sub_1AEA98384()
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1AEA631F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8988);
  sub_1AEA42944(&qword_1EB5E8990, &qword_1EB5E8988);
  sub_1AEAF9D5C();
  v2 = v4;
  sub_1AEAD9BFC(&v1);
  return SensitivityAnalysis.init(harmsDetected:flags:)(&v2, &v1, &dword_1EB5EB6C8);
}

_WORD *sub_1AEA98518(uint64_t a1, uint64_t (*a2)(void), _WORD *a3)
{
  v6 = *a2();
  sub_1AEAD9BFC(&v5);
  return SensitivityAnalysis.init(harmsDetected:flags:)(&v6, &v5, a3);
}

_WORD *sub_1AEA98620(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), _WORD *a4)
{
  v11 = *a2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EE0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AEAFC470;
  *(v6 + 32) = *a3();
  v9 = v6;
  sub_1AEA632F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EE8);
  sub_1AEA42944(&qword_1EB5E8EF0, &qword_1EB5E8EE8);
  sub_1AEAF9D5C();
  v8 = v10;
  return SensitivityAnalysis.init(harmsDetected:flags:)(&v11, &v8, a4);
}

_WORD *sub_1AEA988C0()
{
  v3 = MEMORY[0x1E69E7CC0];
  sub_1AEA631F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8988);
  sub_1AEA42944(&qword_1EB5E8990, &qword_1EB5E8988);
  sub_1AEAF9D5C();
  v2 = v4;
  v1 = *sub_1AEAD7038();
  return SensitivityAnalysis.init(harmsDetected:flags:)(&v2, &v1, &dword_1EB5EB768);
}

int *sub_1AEA98980()
{
  if (qword_1EB5EB760 != -1)
  {
    swift_once();
  }

  return &dword_1EB5EB768;
}

_WORD *sub_1AEA98AA8(uint64_t a1, uint64_t (*a2)(void), _WORD *a3)
{
  v6 = *a2();
  v5 = *sub_1AEAD7038();
  return SensitivityAnalysis.init(harmsDetected:flags:)(&v6, &v5, a3);
}

_WORD *sub_1AEA98B8C(uint64_t a1, uint64_t (*a2)(void), _WORD *a3)
{
  v9 = *a2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AEAFC460;
  *(v4 + 32) = *sub_1AEAD981C();
  *(v4 + 34) = *sub_1AEAD7038();
  v7 = v4;
  sub_1AEA632F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EE8);
  sub_1AEA42944(&qword_1EB5E8EF0, &qword_1EB5E8EE8);
  sub_1AEAF9D5C();
  v6 = v8;
  return SensitivityAnalysis.init(harmsDetected:flags:)(&v9, &v6, a3);
}

void *sub_1AEA98D08@<X0>(void *result@<X0>, _WORD *a2@<X1>, _WORD *a3@<X2>, _WORD *a4@<X8>)
{
  if (*result != -1)
  {
    v5 = a2;
    v6 = a3;
    v7 = a4;
    result = swift_once();
    a2 = v5;
    a4 = v7;
    a3 = v6;
  }

  v4 = *a3;
  *a4 = *a2;
  a4[1] = v4;
  return result;
}

char *sub_1AEA98D70()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB6C0 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB6C8;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB7D8 = result;
  return result;
}

char *sub_1AEA98E14()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB6D0 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB6D8;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB7E8 = result;
  return result;
}

char *sub_1AEA98EB8()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB6E0 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB6E8;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB7F8 = result;
  return result;
}

char *sub_1AEA98F5C()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB730 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB738;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB808 = result;
  return result;
}

char *sub_1AEA99000()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB740 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB748;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB818 = result;
  return result;
}

char *sub_1AEA990A4()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB760 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB768;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB828 = result;
  return result;
}

char *sub_1AEA99148()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB770 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB778;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB838 = result;
  return result;
}

char *sub_1AEA991EC()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB780 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB788;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB848 = result;
  return result;
}

char *sub_1AEA99290()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB7A0 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB7A8;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB858 = result;
  return result;
}

char *sub_1AEA99334()
{
  type metadata accessor for SCSensitivityAnalysis(0);
  if (qword_1EB5EB7B0 != -1)
  {
    swift_once();
  }

  v1 = dword_1EB5EB7B8;
  result = SCSensitivityAnalysis.init(analysis:)(&v1);
  qword_1EB5EB868 = result;
  return result;
}

id sub_1AEA993D8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

char *SensitivityAnalysis.scSensitivityAnalysis.getter()
{
  v1 = *v0;
  type metadata accessor for SCSensitivityAnalysis(0);
  v3 = v1;
  return SCSensitivityAnalysis.init(analysis:)(&v3);
}

double SensitivityAnalysis.sensitiveContentWithoutDescription.getter@<D0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  v3 = 0uLL;
  v4 = -1;
  *&result = SensitiveContent.init(analysis:description:)(&v5, &v3, a1).n128_u64[0];
  return result;
}

char *sub_1AEA994B4(char *a1, int64_t a2, char a3)
{
  result = sub_1AEA994D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AEA994D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t Participant.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Participant.firstName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Participant.lastName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double Participant.init(displayName:handles:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 48) = a3;
  result = 0.0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  return result;
}

uint64_t sub_1AEA99688(uint64_t result, uint64_t a2)
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
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1AEAFA3BC();

    sub_1AEAF95DC();
    v16 = sub_1AEAFA3FC();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1AEAFA2BC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
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

uint64_t sub_1AEA99840()
{
  v1 = 0x4E79616C70736964;
  v2 = 0x656D614E7473616CLL;
  if (*v0 != 2)
  {
    v2 = 0x73656C646E6168;
  }

  if (*v0)
  {
    v1 = 0x6D614E7473726966;
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

uint64_t sub_1AEA998C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEA9B054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEA998FC(uint64_t a1)
{
  v2 = sub_1AEA9AF94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEA99938(uint64_t a1)
{
  v2 = sub_1AEA9AF94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Participant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEA9AF94();
  sub_1AEAFA42C();
  v23 = 0;
  v9 = v18;
  sub_1AEAFA1DC();
  if (!v9)
  {
    v10 = v13;
    v22 = 1;
    sub_1AEAFA1AC();
    v21 = 2;
    sub_1AEAFA1AC();
    v19 = v10;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F08);
    sub_1AEA9AFE8(&qword_1EB5E8F10);
    sub_1AEAFA22C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Participant.hash(into:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[5];
  v5 = v1[6];
  sub_1AEAF95DC();
  if (v3)
  {
    sub_1AEAFA3DC();
    sub_1AEAF95DC();
    if (v4)
    {
LABEL_3:
      sub_1AEAFA3DC();
      sub_1AEAF95DC();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AEAFA3DC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sub_1AEAFA3DC();
LABEL_6:

  return sub_1AEA4AC28(a1, v5);
}

uint64_t Participant.hashValue.getter()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  if (!v1)
  {
    sub_1AEAFA3DC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1AEAFA3DC();
    goto LABEL_6;
  }

  sub_1AEAFA3DC();
  sub_1AEAF95DC();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1AEAFA3DC();
  sub_1AEAF95DC();
LABEL_6:
  sub_1AEA4AC28(v5, v3);
  return sub_1AEAFA3FC();
}

uint64_t Participant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F18);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEA9AF94();
  sub_1AEAFA41C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_1AEAFA0FC();
  v24 = v10;
  v28 = 1;
  v11 = sub_1AEAFA0CC();
  v23 = v12;
  v21 = v11;
  v27 = 2;
  v20 = sub_1AEAFA0CC();
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F08);
  v26 = 3;
  sub_1AEA9AFE8(&qword_1EB5E8F20);
  sub_1AEAFA14C();
  (*(v6 + 8))(v8, v5);
  v16 = v24;
  v15 = v25;
  *a2 = v9;
  a2[1] = v16;
  v17 = v20;
  v19 = v22;
  v18 = v23;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v19;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Participant.handlesForStoring.getter()
{
  sub_1AEA9A2C4(*(v0 + 48));
  v2 = sub_1AEA47CAC(v1);

  return v2;
}

uint64_t String.normalizedHandle.getter()
{
  v0 = sub_1AEAF958C();
  IsEmail = IMStringIsEmail();

  v2 = sub_1AEAF958C();
  if (!IsEmail)
  {
    v4 = MEMORY[0x1B270DB10]();

    if (!v4)
    {
      return 0;
    }

    v5 = sub_1AEAF958C();
    v3 = IMNormalizeFormattedString();

    if (!v3)
    {
      return 0;
    }

LABEL_6:
    v6 = sub_1AEAF95BC();

    return v6;
  }

  v3 = IMNormalizeFormattedString();

  if (v3)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1AEA9A26C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = String.normalizedHandle.getter();
  if (!v6)
  {

    result = v3;
    v6 = v4;
  }

  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_1AEA9A2C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = a1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1AEA61E58(0, v1, 0);
  v3 = v2 + 56;
  v4 = sub_1AEAF9D6C();
  v5 = 0;
  v30 = v2 + 64;
  v31 = v1;
  v32 = v2 + 56;
  v33 = v2;
  while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
  {
    v7 = v4 >> 6;
    if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
    {
      goto LABEL_27;
    }

    v34 = *(v2 + 36);
    v8 = (*(v2 + 48) + 16 * v4);
    v10 = *v8;
    v9 = v8[1];

    v11 = sub_1AEAF958C();
    IsEmail = IMStringIsEmail();

    v13 = sub_1AEAF958C();
    if (IsEmail)
    {
      v14 = IMNormalizeFormattedString();
    }

    else
    {
      v15 = MEMORY[0x1B270DB10]();

      if (!v15)
      {
        goto LABEL_14;
      }

      v13 = sub_1AEAF958C();
      v14 = IMNormalizeFormattedString();
    }

    v16 = v14;

    if (v16)
    {
      v10 = sub_1AEAF95BC();
      v18 = v17;

      v9 = v18;
    }

LABEL_14:
    v20 = *(v35 + 16);
    v19 = *(v35 + 24);
    v21 = v34;
    if (v20 >= v19 >> 1)
    {
      sub_1AEA61E58((v19 > 1), v20 + 1, 1);
      v21 = v34;
    }

    *(v35 + 16) = v20 + 1;
    v22 = v35 + 16 * v20;
    *(v22 + 32) = v10;
    *(v22 + 40) = v9;
    v2 = v33;
    v6 = 1 << *(v33 + 32);
    if (v4 >= v6)
    {
      goto LABEL_28;
    }

    v3 = v32;
    v23 = *(v32 + 8 * v7);
    if ((v23 & (1 << v4)) == 0)
    {
      goto LABEL_29;
    }

    if (v21 != *(v33 + 36))
    {
      goto LABEL_30;
    }

    v24 = v23 & (-2 << (v4 & 0x3F));
    if (v24)
    {
      v6 = __clz(__rbit64(v24)) | v4 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v7 << 6;
      v26 = v7 + 1;
      v27 = (v30 + 8 * v7);
      while (v26 < (v6 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          sub_1AEA9B2DC(v4, v21, 0);
          v6 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      sub_1AEA9B2DC(v4, v21, 0);
    }

LABEL_4:
    ++v5;
    v4 = v6;
    if (v5 == v31)
    {
      return;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1AEA9A580(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1AEAF9A0C();
  if (!v19)
  {
    return sub_1AEAF971C();
  }

  v41 = v19;
  v45 = sub_1AEAF9F2C();
  v32 = sub_1AEAF9F3C();
  sub_1AEAF9EDC();
  result = sub_1AEAF99FC();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1AEAF9A4C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1AEAF9F1C();
      result = sub_1AEAF9A1C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AEA9A9A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F28);
  result = sub_1AEAF9DEC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1AEAFA3BC();
      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void *sub_1AEA9AC00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F28);
  v2 = *v0;
  v3 = sub_1AEAF9DDC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1AEA9AD5C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F28);
  result = sub_1AEAF9DEC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1AEAFA3BC();

      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1AEA9AF94()
{
  result = qword_1EB5EB870[0];
  if (!qword_1EB5EB870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EB870);
  }

  return result;
}

uint64_t sub_1AEA9AFE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E8F08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AEA9B054(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656C646E6168 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1AEA9B1D8()
{
  result = qword_1EB5EB980[0];
  if (!qword_1EB5EB980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EB980);
  }

  return result;
}

unint64_t sub_1AEA9B230()
{
  result = qword_1EB5EBA90;
  if (!qword_1EB5EBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EBA90);
  }

  return result;
}

unint64_t sub_1AEA9B288()
{
  result = qword_1EB5EBA98[0];
  if (!qword_1EB5EBA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EBA98);
  }

  return result;
}

uint64_t sub_1AEA9B2DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1AEA9B320@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SensitiveContentPolicy.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](v1);
  return sub_1AEAFA3FC();
}

uint64_t static PolicyCache.shared.getter()
{
  if (qword_1ED98D748 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  return v1;
}

Swift::Void __swiftcall PolicyCache.prefetch()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_1AEAF982C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1AEA9D794(0, 0, v3, &unk_1AEAFE620, v5);
}

uint64_t sub_1AEA9B734()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PolicyCache.prefetch()(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AEA9B7B8, 0, 0);
}

uint64_t sub_1AEA9B7B8()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = -1;
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1AEA9B868;
  v2 = *(v0 + 72);

  return PolicyCache.restart(with:)(v2, v0 + 16);
}

uint64_t sub_1AEA9B868()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_1AEA41FAC(v2 + 16, &qword_1EB5E8F38);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AEA75CE8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t static SensitiveContentPolicy.changeNotifications.getter()
{
  memset(v1, 0, sizeof(v1));
  v2 = -1;
  if (qword_1ED98D748 != -1)
  {
    swift_once();
  }

  sub_1AEAFA47C();
  PolicyCache.changes(for:)(v1, v3);

  sub_1AEA41FAC(v1, &qword_1EB5E8F38);
  sub_1AEA4A3D0();
  return sub_1AEAF9FDC();
}