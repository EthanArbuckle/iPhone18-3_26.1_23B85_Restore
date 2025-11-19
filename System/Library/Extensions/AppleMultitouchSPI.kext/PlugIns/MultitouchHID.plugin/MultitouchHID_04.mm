void MTMultipleFirmwaresModeSwitcher::switchFirmware(uint64_t a1, int a2, int a3)
{
  v23[2] = *MEMORY[0x29EDCA608];
  (*(**(a1 + 8) + 480))(*(a1 + 8), 30);
  v6 = *(a1 + 40);
  if (!a2)
  {
    v7 = 16;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v7 = 24;
LABEL_5:
    v8 = *(v6 + v7);
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v17 = 0;
  if ([*v6 updateProperty:*(v6 + 8) property:v8 options:0 error:&v17])
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v9 = MTLoggingPlugin();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v11 = "Unknown";
      if (a2 == 1)
      {
        v11 = "WakeOnTouch";
      }

      if (a2)
      {
        v12 = v11;
      }

      else
      {
        v12 = "Active";
      }

      v13 = MTModeSwitcher::modeToText(v10, a3);
      *buf = 136446978;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      LODWORD(v23[0]) = a3;
      WORD2(v23[0]) = 2048;
      *(v23 + 6) = 0;
      _os_log_impl(&dword_29D381000, v9, OS_LOG_TYPE_DEFAULT, "FW switched to %{public}s with mode %{public}s (0x%x) (deviceID 0x%llX)", buf, 0x26u);
    }

    *(a1 + 24) = 1;
    *(a1 + 28) = a3;
  }

  else
  {
    (*(**(a1 + 8) + 80))(*(a1 + 8));
    MTDeviceGetDeviceID();
    v14 = MTLoggingPlugin();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(*(a1 + 40) + 8);
      *buf = 138543874;
      v19 = v15;
      v20 = 2114;
      v21 = v8;
      v22 = 2048;
      v23[0] = 0;
      _os_log_impl(&dword_29D381000, v14, OS_LOG_TYPE_ERROR, "Error updating %{public}@ to %{public}@ (deviceID 0x%llX)", buf, 0x20u);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

const char *MTMultipleFirmwaresModeSwitcher::firmwareBinaryToText(uint64_t a1, int a2)
{
  v2 = "Unknown";
  if (a2 == 1)
  {
    v2 = "WakeOnTouch";
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return "Active";
  }
}

void *MTChordCyclingTrackpad::MTChordCyclingTrackpad(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  result = MTChordCycling::MTChordCycling(a1, a2, a3, a4, a5, a6);
  *result = &unk_2A24133C0;
  return result;
}

{
  result = MTChordCycling::MTChordCycling(a1, a2, a3, a4, a5, a6);
  *result = &unk_2A24133C0;
  return result;
}

uint64_t MTChordCyclingTrackpad::chk4newTapChord(MTChordCyclingTrackpad *this, MTHandStatistics *a2, const MTHandMotion *a3, MTChordGestureSet *a4)
{
  if (a4 && *(a2 + 10) > *(a2 + 16) && (*(*this + 48))(this, a2))
  {
    v8 = *(this + 260);
    v9 = *(a4 + 54);
    if ((!v8 || (v9 >= *(this + 258) || v9 < *(a2 + 186)) && *(a4 + 56) != v8) && (v9 != 2 || *(a4 + 55) != 2 || *(a2 + 195) != 1))
    {
      (*(*this + 72))(this, a2, a3, a4);
    }
  }

  v10 = *(*this + 80);

  return v10(this, a2, a3);
}

void MTChordCyclingTrackpad::handleChordTaps(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a1[260] && (*(*a1 + 48))(a1) && ((a6 & 1) != 0 || a1[258] < 2u || (*(*a1 + 56))(a1, a2)))
  {
    if ((*(*a1 + 96))(a1, a2, a3, a6))
    {
      v12 = a1[262];
      if (!v12 || (a1[6] & v12) != 0)
      {
        v13 = a1[259];
        if ((a6 & 1) != 0 || v13 < 2)
        {
          if (v13 == 1)
          {
            v16 = *(a1 + 110);
            if (v16 != *(a1 + 111) && *v16 && vabdd_f64(*(a2 + 96), *(a2 + 104)) < *&qword_2A17A1E00 && *(a2 + 211) + *(a2 + 186) <= 1 && (a6 & 1) == 0)
            {
              (*(*a1 + 104))(a1, a2, a3 + 168, a4);
              goto LABEL_47;
            }
          }

          if (a6 && *(a2 + 80) - *(a2 + 88) <= 0.09)
          {
            return;
          }
        }

        else
        {
          v14 = *(a1 + 110);
          v15 = *(a1 + 111);
          if (v14 != v15 && *v14)
          {
            goto LABEL_13;
          }

          v17 = *(a1 + 102);
          if (v17 != *(a1 + 103) && *v17)
          {
            if (v14 != v15 && *v14)
            {
LABEL_13:
              (*(*a1 + 112))(a1, a2, a3 + 168, a4);
              goto LABEL_49;
            }

            v18 = *(a1 + 49);
            if (*(v18 + 28) == 1 && *(v18 + 24) >= 3)
            {
              MTTapDragManager::handleTapsForMultiFingerDrag(*(a1 + 49), a2, a3, a4);
              goto LABEL_49;
            }

            goto LABEL_46;
          }
        }

        v19 = *(a1 + 102);
        if (v19 == *(a1 + 103) || !*v19 || a6 && (a5 & 1) == 0 && (*(v19 + 5) & 1) == 0)
        {
          if (!a6 || (v20 = *(a1 + 106), v20 == *(a1 + 107)) || !*v20 || v12 && (a1[6] & v12) == 0)
          {
LABEL_49:

            MTChordIntegrating::nullify(a1 + 102);
            return;
          }

          MTGesture::dispatchEvents(a1 + 106, *(a1 + 49), a4, 0, 0, a3 + 168, 24576, a1[260], *(a2 + 8));
          v21 = *(a1 + 49);
          *(v21 + 72) = *(a2 + 8);
          LOBYTE(v22) = 1;
LABEL_48:
          *(v21 + 49) = v22;
          goto LABEL_49;
        }

        v23 = *(a1 + 49);
        if (a1[258] != 1 || *v19 != 65)
        {
          MTTapDragManager::clearCycle(v23);
          v18 = *(a1 + 49);
LABEL_46:
          MTGesture::dispatchEvents(a1 + 102, v18, a4, 0, 0, a3 + 168, 12288, a1[260], *(a2 + 8));
          goto LABEL_47;
        }

        MTTapDragManager::handleTapsForDrag(v23, a2, a3, a4);
LABEL_47:
        v21 = *(a1 + 49);
        v22 = a1[258];
        *(v21 + 72) = *(a2 + 8);
        goto LABEL_48;
      }
    }
  }
}

uint64_t MTChordCyclingTrackpad::possiblyStopChordMomentum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MTChordCycling::possiblyStopChordMomentum(a1, a2, a3, a4);
  v8 = *(a1 + 392);
  v9 = *(a2 + 8) - *(a1 + 1240);

  return MTTapDragManager::chk4dragCycling(v8, a2, a3, a4, v9);
}

void MTChordCyclingTrackpad::chk4chordCycling(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  if (*(a2 + 211) + *(a2 + 186) > *(a2 + 190) + *(a2 + 187) && *(a1 + 632))
  {
    MTChordIntegrating::clearMickeysSinceLastTouchdown(a1 + 408);
  }

  (*(*a1 + 136))(a1, a2, a4);
  if (*(a2 + 210))
  {
    v8 = *(a1 + 632);
    if (v8 && *(a1 + 624) == 1 || *(a1 + 1040) && *(a1 + 1032) == 1)
    {
      *(*(a1 + 392) + 80) = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *(a1 + 680);
      if (v9)
      {
        if (*v9 != v9[1] && **v9 == 37 && *(a1 + 672) == 1)
        {
          v10 = *(a2 + 186);
          if ((*(a2 + 168) & 0x20) != 0)
          {
            v10 += *(a2 + 188);
          }

          if (v10 >= *(a2 + 187) && v10 > 2)
          {
            return;
          }
        }
      }
    }
  }

  if (!*(a2 + 298) && (*(a2 + 186) != 1 || *(a2 + 195) == 0))
  {
LABEL_25:
    (*(*a1 + 88))(a1, a2, a3, a4);
    v12 = *(*a1 + 144);

    v12(a1, a2, a3, a4);
    return;
  }

  v13 = *(a1 + 392);
  if (*(v13 + 28))
  {
    v14 = *(a2 + 186);
    v15 = *(a2 + 187);
    if (*(v13 + 24) >= 3)
    {
      v16 = *(a2 + 211);
      v17 = *(a2 + 190);
      v18 = v17 + v15;
      goto LABEL_34;
    }
  }

  else
  {
    v14 = *(a2 + 186);
    v15 = *(a2 + 187);
  }

  v16 = *(a2 + 211);
  v17 = *(a2 + 190);
  v18 = v17 + v15;
  if (v16 + v14 < v18 && v16 + v14 <= *(v13 + 48))
  {
    (*(*a1 + 88))(a1, a2, a3, a4);
    goto LABEL_45;
  }

LABEL_34:
  v19 = v16 + v14;
  if (v19 >= v18 || !*(a1 + 1040))
  {
    goto LABEL_45;
  }

  if (v19 != 1 || (v20 = 0, v21 = 1, !v17) && *(a2 + 195))
  {
    if ((*(a1 + 1044) & 0x100) == 0)
    {
      v22 = *(a1 + 848);
      if (v22 == *(a1 + 856) || !*v22)
      {
        goto LABEL_45;
      }
    }

    v21 = 0;
    v20 = 1;
  }

  (*(*a1 + 120))(a1, a2, a3, a4, v21, v20);
LABEL_45:
  (*(*a1 + 144))(a1, a2, a3, a4);
  v23 = (*(*a1 + 24))(a1, a2);
  MatchingChord = MTChordTable::findMatchingChord(a1, v23, 0);
  (*(*a1 + 128))(a1, a2, a3, MatchingChord);
  v25 = a3[17].f32[1];
  if (MatchingChord && (*(MatchingChord + 228) & 0x100) != 0)
  {
    if ((*(a2 + 296) & 1) != 0 && v25 <= 0.765)
    {
      return;
    }

    if (*(MatchingChord + 220) < *(a2 + 198) && *(a2 + 186) == *(a2 + 298))
    {
      if (!*(a1 + 632) || (*(a1 + 672) & 1) != 0 || *(a2 + 8) - *(a2 + 56) <= *&qword_2A17A1D80)
      {
        return;
      }

      goto LABEL_102;
    }
  }

  if ((*(a1 + 636) & 0x100) != 0 && (*(a1 + 672) & 1) == 0 && (*(a2 + 296) & 1) != 0 && v25 <= 0.765)
  {
LABEL_102:

    MTChordIntegrating::endChordIntegration(a1 + 408, a2, a3, a4, a1);
    return;
  }

  if (!*(a1 + 632))
  {
    if (!MatchingChord || !MTChordGestureSet::isChordReadyToIntegrate(MatchingChord, a2, a3))
    {
      return;
    }

    goto LABEL_155;
  }

  MTChordIntegrating::markMomentumPause((a1 + 408), a2);
  if (*(a2 + 8) - *(a2 + 288) <= *(a2 + 8) - *(a2 + 16) && MatchingChord && *(a2 + 211) + *(a2 + 186) >= 4)
  {
    v33 = *(a1 + 680);
    if (!v33 || *v33 == v33[1] || **v33 - 35 >= 5)
    {
      goto LABEL_155;
    }
  }

  else if (!MatchingChord)
  {
    return;
  }

  if (*(MatchingChord + 224) == *(a1 + 632) && (MTChordGestureSet::chordGestureSetEquals(MatchingChord, (a1 + 408)) & 1) != 0)
  {
    return;
  }

  v26 = *(a1 + 392);
  if (*(v26 + 24) >= 2)
  {
    if ((**v26)(v26))
    {
      v27 = *(a1 + 392);
      if (*(v27 + 28) != 1 || *(v27 + 24) < 3)
      {
        return;
      }
    }
  }

  v28 = *(MatchingChord + 216);
  v29 = *(a1 + 624);
  if (v28 < v29)
  {
    v30 = *(a1 + 680);
    if (v30)
    {
      if (*v30 == *(v30 + 1) || (**v30 & 0xFFFE) != 0x26)
      {
        goto LABEL_65;
      }

      if (!MTSlideGesture::isFluidFullyTriggered(v30))
      {
        goto LABEL_66;
      }

      v30 = *(a1 + 680);
      if (v30)
      {
LABEL_65:
        if (*v30 == *(v30 + 1) || (**v30 & 0xFFFE) != 0x26)
        {
          goto LABEL_68;
        }

LABEL_66:
        if (*(a2 + 298) && *(a2 + 211) + *(a2 + 186) >= *(a2 + 190) + *(a2 + 187))
        {
          goto LABEL_68;
        }

        goto LABEL_25;
      }
    }

LABEL_68:
    if (*(a1 + 672) == 1 && ((*(a1 + 636) & 0x80) == 0 || (MTChordIntegrating::hasPartiallyTriggeredFluidNotificationOrNotificationAlt((a1 + 408)) & 1) != 0 || ((*(MatchingChord + 228) & 8) == 0 || *(a2 + 211)) && *(MatchingChord + 216) >= *(a2 + 186)))
    {
      if ((*(a1 + 636) & 0x10) == 0)
      {
        return;
      }

      if ((*(MatchingChord + 228) & 1) == 0)
      {
        return;
      }

      v31 = *(a1 + 680);
      if (v31)
      {
        if (*v31 != v31[1] && **v31 == 37)
        {
          v32 = *(a2 + 186);
          if (v32 <= *(a2 + 195) || *(a2 + 211) + v32 != 1)
          {
            return;
          }
        }
      }

      if (MTChordIntegrating::hasPartiallyTriggeredFluidNotificationOrNotificationAlt((a1 + 408)))
      {
        return;
      }

      if ((*(a1 + 636) & 0x80) == 0)
      {
        if ((*(a1 + 636) & 0x100) != 0)
        {
          if (*(MatchingChord + 216) != 1 || *(a2 + 211) + *(a2 + 186) != 1 || *(a1 + 1264) == 1 && *(a1 + 1268) == 4)
          {
            return;
          }
        }

        else if (*(a2 + 8) - *(a2 + 128) <= *&gTimingPrefs * 0.5)
        {
          return;
        }
      }
    }

LABEL_155:
    v49 = *(*a1 + 64);

    v49(a1, a2, a3, a4, MatchingChord);
    return;
  }

  v35 = *(a1 + 704) <= v29 + 1 || v28 < *(a2 + 186);
  v36 = MTChordIntegrating::recentMomentumPause((a1 + 408), a2, HIBYTE(*(MatchingChord + 228)) & 1);
  if (*(MatchingChord + 216) < 3u)
  {
    hasEnabledFluidNavigation = 0;
  }

  else
  {
    hasEnabledFluidNavigation = MTChordGestureSet::hasEnabledFluidNavigation(MatchingChord, a1);
  }

  if (!v35)
  {
    goto LABEL_132;
  }

  if ((*(MatchingChord + 228) & 0x100) != 0 && (v38 = *(a1 + 680)) != 0 && *v38 != v38[1] && (**v38 & 0xFFFE) == 0x46 || (v39 = *(a2 + 8), v40 = v39 - *(a2 + 280), v40 >= *&qword_2A17A1D80))
  {
    LOBYTE(v35) = 0;
    goto LABEL_132;
  }

  if ((hasEnabledFluidNavigation & 1) == 0)
  {
    v43 = *(a2 + 80);
    LOBYTE(v35) = v39 > v43;
    if (v39 <= v43 || v36)
    {
      goto LABEL_132;
    }

    if (a3[12].f32[2] == 0.0)
    {
      LOBYTE(v35) = a3[12].f32[3] != 0.0;
      goto LABEL_132;
    }

LABEL_131:
    LOBYTE(v35) = 1;
    goto LABEL_132;
  }

  v41 = a3[12].f32[2] != 0.0 || v36;
  if (v41)
  {
    goto LABEL_131;
  }

  v42 = a3[12].f32[3];
  LOBYTE(v35) = v42 != 0.0;
  if (v42 == 0.0 && ((hasEnabledFluidNavigation ^ 1) & 1) == 0)
  {
    LOBYTE(v35) = MTChordIntegrating::switchingVerticalToHorizontal((a1 + 408), 20.0, v40 == 0.0);
  }

LABEL_132:
  if ((*(a1 + 672) & 1) == 0)
  {
    goto LABEL_155;
  }

  if (*(a2 + 8) - *(a2 + 264) < *&qword_2A17A1D80)
  {
    if ((*(MatchingChord + 228) & 0x100) == 0 && !MTChordGestureSet::hasEnabledFluidDock(MatchingChord, a1))
    {
      goto LABEL_155;
    }

    if (*(MatchingChord + 216) != 3)
    {
      goto LABEL_155;
    }

    v44 = *(a1 + 680);
    if (!v44 || *v44 == v44[1] || (**v44 & 0xFFFE) != 0x46)
    {
      goto LABEL_155;
    }
  }

  v45 = *(a1 + 636);
  if ((v45 & 0x20) != 0 || (v45 & 0x40) != 0 && ((v35 & 1) != 0 || (v46 = *(a1 + 400), MTChordGestureSet::hasActiveEdgeSlide(MatchingChord, a2, a1))))
  {
    v47 = *(MatchingChord + 228);
    if ((v47 & 2) != 0)
    {
      goto LABEL_155;
    }

    if (v35 & ((v47 & 4) >> 2))
    {
      goto LABEL_155;
    }

    if ((v35 & ((v47 & 0x800) >> 11)) == 1)
    {
      v48 = *(a1 + 680);
      if (v48)
      {
        if (*v48 != v48[1] && **v48 == 68 && *(a1 + 624) == 1)
        {
          goto LABEL_155;
        }
      }
    }
  }
}

MTSlideGesture *MTChordIntegrating::hasPartiallyTriggeredFluidNotificationOrNotificationAlt(MTChordIntegrating *this)
{
  result = *(this + 34);
  if (result)
  {
    if (*result == *(result + 1) || (**result & 0xFFFE) != 0x26)
    {
      return 0;
    }

    else
    {
      return !MTSlideGesture::isFluidFullyTriggered(result);
    }
  }

  return result;
}

void MTChordCyclingTrackpad::~MTChordCyclingTrackpad(MTChordCyclingTrackpad *this)
{
  MTChordCycling::~MTChordCycling(this);

  JUMPOUT(0x29ED547D0);
}

BOOL MTSlideGesture::isFluidFullyTriggered(MTSlideGesture *this)
{
  if (*this == *(this + 1))
  {
    return 0;
  }

  if (**this - 35 > 4)
  {
    return 0;
  }

  if (MTSlideGesture::fluidSwipePercentage(this) <= 1.0)
  {
    return MTSlideGesture::fluidSwipePercentage(this) < -1.0;
  }

  return 1;
}

void MTChordCycling::~MTChordCycling(MTChordCycling *this)
{
  *this = &unk_2A2413488;
  v12 = (this + 976);
  std::vector<MTSlideGesture>::__destroy_vector::operator()[abi:ne200100](&v12);
  v2 = *(this + 118);
  if (v2)
  {
    *(this + 119) = v2;
    operator delete(v2);
  }

  v3 = *(this + 114);
  if (v3)
  {
    *(this + 115) = v3;
    operator delete(v3);
  }

  v4 = *(this + 110);
  if (v4)
  {
    *(this + 111) = v4;
    operator delete(v4);
  }

  v5 = *(this + 106);
  if (v5)
  {
    *(this + 107) = v5;
    operator delete(v5);
  }

  v6 = *(this + 102);
  if (v6)
  {
    *(this + 103) = v6;
    operator delete(v6);
  }

  v12 = (this + 568);
  std::vector<MTSlideGesture>::__destroy_vector::operator()[abi:ne200100](&v12);
  v7 = *(this + 67);
  if (v7)
  {
    *(this + 68) = v7;
    operator delete(v7);
  }

  v8 = *(this + 63);
  if (v8)
  {
    *(this + 64) = v8;
    operator delete(v8);
  }

  v9 = *(this + 59);
  if (v9)
  {
    *(this + 60) = v9;
    operator delete(v9);
  }

  v10 = *(this + 55);
  if (v10)
  {
    *(this + 56) = v10;
    operator delete(v10);
  }

  v11 = *(this + 51);
  if (v11)
  {
    *(this + 52) = v11;
    operator delete(v11);
  }

  MTChordTable::~MTChordTable(this);
}

{
  MTChordCycling::~MTChordCycling(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t MTChordCycling::MTChordCycling(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v10 = MTChordTable::MTChordTable(a1, a2, a3);
  *v10 = &unk_2A2413488;
  *(v10 + 392) = a4;
  *(v10 + 400) = a5;
  MTChordIntegrating::MTChordIntegrating((v10 + 408));
  MTChordIntegrating::MTChordIntegrating((a1 + 816));
  MTParameterFactory::initChordCyclingParams(a1 + 368, a6);
  MTParameterFactory::initGestureTimingParams(a1 + 388);
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_29D3C111C(_Unwind_Exception *a1)
{
  MTChordGestureSet::~MTChordGestureSet((v1 + 408));
  MTChordTable::~MTChordTable(v1);
  _Unwind_Resume(a1);
}

uint64_t MTChordCycling::clearChordCyclingState(MTChordCycling *this)
{
  MTChordIntegrating::nullify(this + 51);
  MTChordIntegrating::nullify(this + 102);
  *(this + 157) = 0;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  MTTapDragManager::clearState(*(this + 49));

  return MTChordTable::clearChordCyclingState(this);
}

uint64_t MTChordCycling::getCommittedFingerCount(MTChordCycling *this)
{
  if (*(this + 672) == 1)
  {
    return *(this + 156);
  }

  else
  {
    return 0;
  }
}

double MTChordCycling::selectSlideChord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MTChordIntegrating::endChordIntegration(a1 + 408, a2, a3, a4, a1);
  if (a5)
  {
    MTChordIntegrating::operator=((a1 + 408), a5);
    *(a1 + 1224) = *(a2 + 8);
    MTChordIntegrating::beginChordIntegration((a1 + 408), a2);
    result = *(a2 + 8);
    *(a1 + 656) = result;
  }

  return result;
}

double MTChordCycling::selectTapChord(MTChordCycling *this, const MTHandStatistics *a2, const MTHandMotion *a3, MTChordGestureSet *a4)
{
  if (a4)
  {
    *(this + 153) = *(a2 + 1);
    MTChordIntegrating::operator=((this + 816), a4);
    result = *(a2 + 1);
    *(this + 133) = result;
  }

  return result;
}

void MTChordCycling::handleChordLiftoff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 1040))
  {
    v8 = *(a1 + 392);
    v9 = *(v8 + 24) >= 2 && *(v8 + 48) > 1u || *(a2 + 211) + *(a2 + 186) == 1;
    (*(*a1 + 120))(a1, a2, a3, a4, v9, 0);
    MTChordIntegrating::endChordIntegration(a1 + 816, a2, a3, a4, a1);
  }

  if (*(a1 + 632))
  {

    MTChordIntegrating::endChordIntegration(a1 + 408, a2, a3, a4, a1);
  }
}

BOOL MTChordCycling::touchdownSinceTapOrExcessMotion(MTChordCycling *this, const MTHandStatistics *a2)
{
  v2 = *(a2 + 10);
  v3 = *(a2 + 1);
  v4 = v3 - v2;
  v5 = *(this + 49);
  v6 = v3 - *(v5 + 72);
  v7 = v3 - *(v5 + 80);
  if (v6 < v7)
  {
    v7 = v6;
  }

  return v4 < v7 && v2 > *(this + 157);
}

BOOL MTChordCycling::subsetSinceTapOrExcessMotion(MTChordCycling *this, const MTHandStatistics *a2)
{
  v2 = *(a2 + 33);
  v3 = *(a2 + 1);
  v4 = v3 - v2;
  v5 = *(this + 49);
  v6 = v3 - *(v5 + 72);
  v7 = v3 - *(v5 + 80);
  if (v6 < v7)
  {
    v7 = v6;
  }

  return v4 < v7 && v2 > *(this + 157);
}

void MTChordCycling::chk4excessTapMotion(MTChordCycling *this, const MTHandStatistics *a2, const MTHandMotion *a3)
{
  if (*(this + 260) && *(this + 158) && *(this + 672) == 1)
  {
    if ((v3 = *(this + 85)) != 0 && *v3 != v3[1] && ((**v3 & 0x80) != 0 || ((v4 = **v3 - 35, v5 = v4 > 0x2B, v6 = (1 << v4) & 0x8010000001FLL, !v5) ? (v7 = v6 == 0) : (v7 = 1), !v7)) || (*(a2 + 186) >= 2u ? (v8 = dword_2A17A1DE0 / 2) : (v8 = dword_2A17A1DE0), *(this + 174) >= v8))
    {
      *(this + 157) = *(a2 + 1);
      MTChordIntegrating::nullify(this + 102);
    }
  }
}

uint64_t MTChordCycling::chk4newTapChord(MTChordCycling *this, MTHandStatistics *a2, const MTHandMotion *a3, MTChordGestureSet *a4)
{
  if (a4 && *(a2 + 10) > *(a2 + 16) && (*(*this + 48))(this, a2))
  {
    v8 = *(this + 260);
    if (!v8 || ((v9 = *(a4 + 54), v9 >= *(this + 258)) || v9 < *(a2 + 186)) && *(a4 + 56) != v8)
    {
      (*(*this + 72))(this, a2, a3, a4);
    }
  }

  v10 = *(*this + 80);

  return v10(this, a2, a3);
}

BOOL MTChordCycling::tapHasValidTimingAndStrength(MTChordCycling *this, const MTHandStatistics *a2, const MTHandMotion *a3, char a4)
{
  if (*(a2 + 51) <= *(this + 92))
  {
    return 0;
  }

  v5 = *(a2 + 10);
  v6 = *(a2 + 1);
  if (v6 - v5 >= *&qword_2A17A1DA8 || v5 - *(a2 + 9) >= *&qword_2A17A1DA8 * 0.5 || (a4 & 1) == 0 && v6 - *(a2 + 33) >= *&qword_2A17A1DA8)
  {
    return 0;
  }

  if (*(a2 + 186) && (*(a2 + 185) & 1) != 0)
  {
    return 0;
  }

  if (v6 - v5 <= *&qword_2A17A1DB0 && (*(this + 400) & 1) != 0)
  {
    return 0;
  }

  MTAbsoluteTimeGetCurrent();
  if (v9 - *(a2 + 5) < *&qword_2A17A1DA8)
  {
    return 0;
  }

  MTAbsoluteTimeGetCurrent();
  if (v10 - *(a2 + 6) < *&qword_2A17A1DA8)
  {
    return 0;
  }

  if (*(this + 158))
  {
    if (*(this + 173))
    {
      return 0;
    }

    v11 = *(this + 85);
    if (v11)
    {
      if (*v11 != v11[1] && **v11 == 70)
      {
        return 0;
      }
    }
  }

  return (*(a2 + 44) == *(a2 + 45) || *(a2 + 108) >= 2u) && (!(*(a2 + 211) | *(a2 + 186)) || (*(a2 + 184) & 1) == 0) && *(a3 + 61) <= *&dword_2A17A1E28;
}

void MTChordCycling::processDoubleTap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 392);
  v5 = *(a2 + 8);
  v6 = *(v4 + 72);
  v7 = v5 - v6;
  if (v5 - v6 < *&qword_2A17A1DD8 && v6 > *(v4 + 88))
  {
    v9 = *(v4 + 49);
    if (*(a1 + 1032) == v9 && (hypotf(*(a2 + 248) - *(a2 + 240), *(a2 + 252) - *(a2 + 244)) < *(a1 + 380) || vabdd_f64(*(a2 + 96), *(a2 + 104)) < *&qword_2A17A1E00) && (*(a1 + 376) != 1 || v7 >= v5 - *(a2 + 136)))
    {
      if (*(a1 + 384) != 1 || (v9 == *(a2 + 199) ? (v13 = v9 == *(a2 + 200)) : (v13 = 0), v13))
      {
        MTGesture::dispatchEvents((a1 + 880), v4, a4, 0, 0, a3, 28672, *(a1 + 1040), v5);
        v14 = *(a1 + 392);
        *(v14 + 88) = *(a2 + 8);

        MTTapDragManager::clearCycle(v14);
      }
    }
  }
}

void MTChordCycling::processMultiFingerDoubleTap(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v6 = *(a1 + 392);
  v7 = *(a2 + 8);
  v8 = *(v6 + 72);
  if (v7 - v8 < *&qword_2A17A1DD8 && v8 > *(v6 + 88) && (v9 = *(v6 + 49), *(a1 + 1032) == v9) && (*(a1 + 376) != 1 || v7 - v8 >= v7 - *(a2 + 136)) && (*(a1 + 384) != 1 || (v9 == *(a2 + 199) ? (v10 = v9 == *(a2 + 200)) : (v10 = 0), v10)))
  {
    MTGesture::dispatchEvents((a1 + 880), v6, a4, 0, 0, a3, 28672, *(a1 + 1040), v7);
    v14 = *(a1 + 392);
    *(v14 + 88) = *(a2 + 8);
    MTTapDragManager::clearCycle(v14);
  }

  else if (*(a1 + 1036) >= 2)
  {
    v11 = *(a1 + 816);
    if (v11 != *(a1 + 824))
    {
      if (*v11)
      {
        v12 = *(a1 + 880);
        if (v12 != *(a1 + 888))
        {
          if (*v12)
          {
            if (*v11 == 67)
            {
              v13 = *(v11 + 4);
              if (v13 == 1024 || v13 == 512)
              {
                MTTapDragManager::queueMultiFingerTapWaitingForDouble(*(a1 + 392), a2, a3, a4, v13);
              }
            }
          }
        }
      }
    }
  }

  v15 = *(a1 + 392);
  v16 = *(a1 + 1032);
  *(v15 + 72) = *(a2 + 8);
  *(v15 + 49) = v16;

  MTChordIntegrating::nullify((a1 + 816));
}

void MTChordCycling::handleChordTaps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 1040))
  {
    return;
  }

  if (!(*(*a1 + 48))(a1))
  {
    return;
  }

  if (!(*(*a1 + 96))(a1, a2, a3, a6))
  {
    return;
  }

  v11 = *(a1 + 1048);
  if (v11)
  {
    if ((*(a1 + 24) & v11) == 0)
    {
      return;
    }
  }

  v12 = *(a1 + 816);
  if (v12 == *(a1 + 824))
  {
    goto LABEL_10;
  }

  v13 = 0;
  if (!*v12 || (a6 & 1) != 0)
  {
    goto LABEL_11;
  }

  if (*(a2 + 211) | *(a2 + 186))
  {
LABEL_10:
    v13 = 0;
  }

  else
  {
    MTGesture::dispatchEvents((a1 + 816), *(a1 + 392), a4, 0, 0, a3 + 168, 12288, *(a1 + 1040), *(a2 + 8));
    v13 = 1;
  }

LABEL_11:
  if (*(a1 + 1036) == 1)
  {
    v14 = *(a1 + 880);
    if (v14 != *(a1 + 888) && *v14 && (a6 & 1) == 0 && *(a2 + 211) + *(a2 + 186) <= 1)
    {
      (*(*a1 + 104))(a1, a2, a3 + 168, a4);
      v13 = 1;
    }
  }

  if (a6 && *(a2 + 80) - *(a2 + 88) <= 0.09 || *(a1 + 1036) < 2 || (v15 = *(a1 + 880), v15 == *(a1 + 888)) || !*v15 || *(a3 + 356) >= 21.0 || (v16 = *(a2 + 8), v17 = v16 - *(a2 + 64), v17 >= *&qword_2A17A1DA8 + *&qword_2A17A1E08) || (v18 = v16 - *(a2 + 56), v17 - v18 >= *&qword_2A17A1E08) || v18 - (v16 - *(a2 + 80)) >= *&qword_2A17A1E08)
  {
    if (!v13)
    {
      return;
    }
  }

  else
  {
    (*(*a1 + 112))(a1, a2, a3 + 168, a4);
  }

  if (*(a1 + 1040))
  {
    v19 = *(a1 + 392);
    v20 = *(a1 + 1032);
    *(v19 + 72) = *(a2 + 8);
    *(v19 + 49) = v20;

    MTChordIntegrating::nullify((a1 + 816));
  }
}

uint64_t MTChordCycling::possiblyStartChordMomentum(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 211) + *(a2 + 186) < *(a2 + 190) + *(a2 + 187))
  {
    if (*(result + 632))
    {
      v3 = *(a2 + 8);
      return MTChordIntegrating::possiblyStartMomentum(result + 408, a2, a3, result);
    }
  }

  return result;
}

uint64_t MTChordCycling::possiblyStopChordMomentum(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 1264) == 1 && *(a2 + 211) + *(a2 + 186) > *(a2 + 190) + *(a2 + 187))
  {
    v4 = *(result + 1268);
    if (*(result + 1276) == v4 && *(result + 1272) == 1)
    {
      *(*(result + 392) + 80) = *(a2 + 8);
    }

    return MTDragManagerEventQueue::stopMomentum(result, a4, v4);
  }

  return result;
}

uint64_t MTChordCycling::chk4chordCycling(_DWORD *a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  if (*(a2 + 211) + *(a2 + 186) > *(a2 + 190) + *(a2 + 187) && a1[158])
  {
    MTChordIntegrating::clearMickeysSinceLastTouchdown((a1 + 102));
  }

  (*(*a1 + 144))(a1, a2, a3, a4);
  (*(*a1 + 136))(a1, a2, a4);
  v8 = *a1;
  if (!(*(a2 + 298) | *(a2 + 186)))
  {
    v9 = *(v8 + 88);

    return v9(a1, a2, a3, a4);
  }

  v11 = (*(v8 + 24))(a1, a2);
  MatchingChord = MTChordTable::findMatchingChord(a1, v11, 0);
  result = (*(*a1 + 128))(a1, a2, a3, MatchingChord);
  v13 = a1[158];
  if (v13)
  {
    if (!MatchingChord)
    {
      return result;
    }

    if (*(MatchingChord + 224) == v13)
    {
      result = MTChordGestureSet::chordGestureSetEquals(MatchingChord, (a1 + 102));
      if (result)
      {
        return result;
      }
    }

    v14 = *(a1 + 672);
    if (*(MatchingChord + 216) >= a1[156])
    {
      if ((a1[168] & 1) != 0 && ((a1[159] & 0x20) == 0 || ((*(MatchingChord + 228) & 2) == 0 || (*(a2 + 164) - 3000) >= 0xFFFFFC18 && a1[7] != 2 && *(a2 + 298) != *(a2 + 302)) && *(a2 + 8) - *(a2 + 56) >= 0.09))
      {
        return result;
      }
    }

    else if ((a1[168] & 1) != 0 || (*(a2 + 164) - 3000) >= 0xFFFFFC18 && a1[7] != 2)
    {
      v15 = *(a1 + 318);
      if ((v15 & 0x10) == 0 || (*(MatchingChord + 228) & 1) == 0 || (v15 & 0x80) == 0 && *(a2 + 8) - *(a2 + 128) <= *&gTimingPrefs * 0.5)
      {
        return result;
      }

      v16 = *(a1 + 85);
      if (v16)
      {
        if (*v16 != v16[1] && **v16 - 35 < 5)
        {
          return result;
        }
      }
    }
  }

  else
  {
    if (!MatchingChord)
    {
      return result;
    }

    result = MTChordGestureSet::isChordReadyToIntegrate(MatchingChord, a2, a3);
    if (!result)
    {
      return result;
    }
  }

  v17 = *(*a1 + 64);

  return v17(a1, a2, a3, a4, MatchingChord);
}

double MTChordCycling::parseHandGesturesCreateHIDEvents(_DWORD *a1, MTHandStatistics *a2, MTHandMotion *a3, uint64_t a4)
{
  (*(*a1 + 152))(a1);
  if (a1[158])
  {
    MTChordIntegrating::continueChordIntegration((a1 + 102), a2, a3, a4, a1, result, v9, v10);

    return MTChordIntegrating::decayMomentumFilters((a1 + 102), a2);
  }

  return result;
}

uint64_t MTChordCycling::shouldBlockClicks(MTChordCycling *this, const MTHandStatistics *a2, const MTHandMotion *a3)
{
  v3 = *(a3 + 62);
  v4 = 0.0;
  if (v3 > 1.0)
  {
    v4 = 0.5;
    if (v3 < 100.0)
    {
      v4 = ((v3 + -1.0) / 99.0) * 0.5;
    }
  }

  v5 = *(a2 + 1);
  v6 = *(this + 158);
  if (v6)
  {
    v7 = *(this + 85);
    if (v7)
    {
      v6 = *v7 != v7[1] && **v7 == 69;
      if (*v7 != v7[1] && **v7 == 71)
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  if (v5 - *(this + 155) <= v4)
  {
    v6 = 1;
  }

  if (v5 - *(this + 156) <= v4)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

void MTTapDragManager::MTTapDragManager(MTTapDragManager *this)
{
  *this = &unk_2A2413550;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 27) = 0;
}

uint64_t MTTapDragManager::clearState(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 9) = 0;
  *(this + 24) = 0;
  *(this + 27) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 72) = 0;
  return this;
}

uint64_t MTTapDragManager::clearCycle(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 9) = 0;
  return this;
}

uint64_t MTTapDragManager::dragHandModifiers(MTTapDragManager *this)
{
  v2 = *(this + 6);
  if (v2 < 2 || (result = 256, v2 != 2) && (*(this + 28) & 1) != 0)
  {
    result = *(this + 2);
    if (result)
    {
      if (MTForceManagement::whichForceButtonActivated(result) == 1)
      {
        return 256;
      }

      else
      {
        result = *(this + 2);
        if (result)
        {
          if (MTForceManagement::whichForceButtonActivated(result) == 2)
          {
            return 512;
          }

          else
          {
            result = *(this + 2);
            if (result)
            {
              return (MTForceManagement::whichForceButtonActivated(result) == 4) << 10;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL MTTapDragManager::shouldReleaseTapDragDueToPause(MTTapDragManager *this, double a2)
{
  v2 = *(this + 6);
  if (v2 < 2)
  {
    return 0;
  }

  if (v2 <= 3)
  {
    return a2 - *(this + 4) < *&gTimingPrefs;
  }

  return 1;
}

BOOL MTTapDragManager::halfTapDragTimedOut(MTTapDragManager *this, double a2)
{
  v4 = *(this + 28);
  v5 = qword_2A17A1DD0;
  v6 = qword_2A17A1DC0;
  if (((*(*this + 16))(this) & 0x100) == 0)
  {
    return 1;
  }

  if (v4)
  {
    v8 = *&v5;
  }

  else
  {
    v8 = *&v6;
  }

  v9 = a2 - *(this + 9);
  if (v9 >= a2 - *(this + 10))
  {
    v9 = a2 - *(this + 10);
  }

  return v9 > v8;
}

uint64_t MTTapDragManager::updateLastState(uint64_t this)
{
  v1 = *(this + 24) > 2;
  *(this + 29) = v1;
  *(this + 30) = *(this + 28) & v1;
  return this;
}

BOOL MTTapDragManager::isAnyPathTouching(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a2 && a3 >= 1)
  {
    v4 = a3 - 1;
    v5 = (a2 + 20);
    do
    {
      v6 = *v5;
      v5 += 24;
      result = (v6 - 3) < 2;
    }

    while ((v6 - 3) >= 2 && v4-- != 0);
  }

  return result;
}

uint64_t MTTapDragManager::hasPhysicalDraggingEnded(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 24) < 3)
  {
    v3 = *(a1 + 29);
  }

  else
  {
    v3 = 1;
    if (a2 && a3 >= 1)
    {
      v4 = a3 - 1;
      v5 = (a2 + 20);
      do
      {
        v6 = *v5;
        v5 += 24;
        v7 = v6 - 5;
        v3 = (v6 - 5) < 0xFFFFFFFE;
        v9 = v4-- != 0;
      }

      while (v7 <= 0xFFFFFFFD && v9);
    }
  }

  return v3 & 1;
}

BOOL MTTapDragManager::shouldSustainDrag(MTTapDragManager *this, double a2, int a3)
{
  if (*(this + 9))
  {
    return 0;
  }

  if (a3 - *(this + 48) > 0)
  {
    return 1;
  }

  v6 = *(this + 6);
  if (v6 >= 2)
  {
    if (v6 > 3 || a2 - *(this + 4) < *&gTimingPrefs)
    {
      return 0;
    }

    if (v6 != 2 && *(this + 8) == 1 && ((**this)(this) & 1) != 0)
    {
      return 1;
    }
  }

  return !MTTapDragManager::halfTapDragTimedOut(this, a2);
}

uint64_t MTTapDragManager::sendWaitingClickAtHalfTimeout(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if (*(a1 + 9) != 1)
  {
    v8 = a4 - *(a1 + 72);
    if (*(a1 + 10) == 1)
    {
      if (v8 >= *&qword_2A17A1DD8 + *&qword_2A17A1DB0 * -2.0 && *(a1 + 48) == a3)
      {
        v10 = 0xAAAAAAAAAAAAAAAALL;
        MTActionEvent::MTActionEvent(&v10, 67, *(a1 + 12), 0);
        v5 = 1;
        (*(*a1 + 24))(a1, &v10, a2, 0, 0, a1 + 52, 12288, 1, a4);
        *(a1 + 88) = a4;
        *(a1 + 28) = 0;
        *(a1 + 12) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 48) = 0;
        goto LABEL_3;
      }
    }

    else if (v8 >= *&qword_2A17A1DB8)
    {
      if (*(a1 + 48) == a3)
      {
        v10 = 0xAAAAAAAAAAAAAAAALL;
        MTActionEvent::MTActionEvent(&v10, 67, 256, 0);
        (*(*a1 + 24))(a1, &v10, a2, 0, 0, a1 + 52, 12288, 1, a4);
      }

      goto LABEL_2;
    }

    return 0;
  }

LABEL_2:
  *(a1 + 28) = 0;
  *(a1 + 12) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  v5 = 1;
LABEL_3:
  *(a1 + 9) = 0;
  return v5;
}

uint64_t MTTapDragManager::sendPendingMultiFingerTap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  v8 = *(a3 + 8);
  if (*(a1 + 24) <= 1)
  {
    v11 = *&qword_2A17A1E38 > a6 || *(a3 + 195) > 1u;
    if (v11 || *(a4 + 248) > *&dword_2A17A1E28)
    {
      v10 = 0;
LABEL_11:
      *(a1 + 28) = 0;
      *(a1 + 12) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 48) = 0;
      goto LABEL_12;
    }
  }

  if (*(a1 + 10) != 1)
  {
    return 0;
  }

  v9 = v8 - *(a1 + 72);
  if (v9 <= *&qword_2A17A1DD8 + *&qword_2A17A1DB0 * 2.0)
  {
    if (!a5 || v9 > *&qword_2A17A1DD8)
    {
      v13 = 0xAAAAAAAAAAAAAAAALL;
      MTActionEvent::MTActionEvent(&v13, 67, *(a1 + 12), 0);
      v10 = 1;
      (*(*a1 + 24))(a1, &v13, a2, 0, 0, a1 + 52, 12288, 1, v8);
      *(a1 + 88) = v8;
      goto LABEL_11;
    }

    return 0;
  }

  *(a1 + 28) = 0;
  *(a1 + 12) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  v10 = 1;
LABEL_12:
  *(a1 + 9) = 0;
  return v10;
}

double MTTapDragManager::queueTapWaitingForHalf(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(a1 + 24) = 1;
  *(a1 + 52) = *a3;
  result = *(a2 + 8);
  *(a1 + 40) = result;
  *(a1 + 48) = *(a2 + 211) + *(a2 + 186);
  return result;
}

double MTTapDragManager::queueMultiFingerTapWaitingForDouble(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, int a5)
{
  *(a1 + 24) = 1;
  *(a1 + 52) = *a3;
  result = *(a2 + 8);
  *(a1 + 40) = result;
  *(a1 + 48) = *(a2 + 211) + *(a2 + 186);
  *(a1 + 10) = 1;
  *(a1 + 12) = a5;
  return result;
}

uint64_t MTTapDragManager::queueButtonClickEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 28) = 0;
  *(a1 + 12) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 9) = 0;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  MTActionEvent::MTActionEvent(&v9, 67, 256, 0);
  return (*(*a1 + 24))(a1, &v9, a4, 0, 0, a3, 12288, 1, *(a2 + 8));
}

double MTTapDragManager::queueButtonPressEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 2;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  MTActionEvent::MTActionEvent(&v9, 65, 256, 0);
  (*(*a1 + 24))(a1, &v9, a4, 0, 0, a3, 12288, 1, *(a2 + 8));
  result = *(a2 + 8);
  *(a1 + 40) = result;
  return result;
}

uint64_t MTTapDragManager::queueButtonReleaseEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  MTActionEvent::MTActionEvent(&v9, 66, 256, 0);
  *(a1 + 28) = 0;
  *(a1 + 12) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 9) = 0;
  return (*(*a1 + 24))(a1, &v9, a4, 0, 0, a3, 12288, 1, *(a2 + 8));
}

double MTTapDragManager::handleTapsForDrag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 + 168);
  v7 = *(a1 + 24);
  if (v7 < 2)
  {
    if (*(a2 + 8) - *(a1 + 72) >= *&qword_2A17A1DA8)
    {
      *(a1 + 24) = 1;
      *(a1 + 52) = v9;
      *(a1 + 40) = *(a2 + 8);
      *(a1 + 48) = *(a2 + 211) + *(a2 + 186);
      goto LABEL_7;
    }
  }

  else
  {
    MTTapDragManager::queueButtonReleaseEvent(a1, a2, &v9, a4);
    if (v7 != 2)
    {
      goto LABEL_7;
    }
  }

  MTTapDragManager::queueButtonClickEvent(a1, a2, &v9, a4);
LABEL_7:
  result = *(a2 + 8);
  *(a1 + 72) = result;
  *(a1 + 49) = 1;
  return result;
}

uint64_t MTTapDragManager::handleImmediateTapDragRelease(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  if (*(result + 24) >= 2)
  {
    result = (**result)(result);
    if (result)
    {
      if (*(v4 + 9) == 1)
      {
        result = MTTapDragManager::queueButtonReleaseEvent(v4, a2, a3 + 168, a4);
      }
    }
  }

  *(v4 + 9) = 0;
  return result;
}

uint64_t MTTapDragManager::chk4dragCycling(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  MTTapDragManager::sendPendingMultiFingerTap(a1, a4, a2, a3, 1, a5);
  v9 = *(a1 + 24);
  if (v9 == 1)
  {
    v10 = *(a2 + 211) + *(a2 + 186);
    if (v10 <= *(a2 + 190) + *(a2 + 187) || v10 <= *(a1 + 48) || (*(a1 + 10) & 1) != 0)
    {
      MTTapDragManager::sendWaitingClickAtHalfTimeout(a1, a4, v10, *(a2 + 8));
    }

    else
    {
      MTTapDragManager::queueButtonPressEvent(a1, a2, a3 + 168, a4);
    }

    goto LABEL_20;
  }

  if (v9 >= 2 && (**a1)(a1))
  {
    if (!*(a1 + 48) && *(a2 + 211) + *(a2 + 186) == 2)
    {
      *(a1 + 48) = 1;
    }

    v11 = *(a2 + 8);
    v12 = v11 - *(a2 + 80);
    v13 = v11 - *(a2 + 128);
    if (v12 < v13 || v13 == 0.0)
    {
      if (v12 <= *&qword_2A17A1DC8 || v11 - *(a3 + 160) <= *&qword_2A17A1DC8)
      {
        if (*(a1 + 24) < 4)
        {
          goto LABEL_20;
        }

        v14 = 3;
      }

      else
      {
        *(a1 + 32) = v11;
        v14 = 4;
      }

      *(a1 + 24) = v14;
    }
  }

LABEL_20:

  return MTTapDragManager::handleImmediateTapDragRelease(a1, a2, a3, a4);
}

double MTTapDragManager::sustainMultiFingerDrag(uint64_t a1, uint64_t a2)
{
  *(a1 + 28) = 1;
  *(a1 + 48) = *(a2 + 211) + *(a2 + 186);
  *(a1 + 24) = 3;
  (*(*a1 + 8))(a1);
  result = *(a2 + 8);
  *(a1 + 40) = result;
  *(a1 + 80) = result;
  return result;
}

uint64_t MTTapDragManager::handleTapsForMultiFingerDrag(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 24) >= 3)
  {
    return MTTapDragManager::queueButtonReleaseEvent(result, a2, a3 + 168, a4);
  }

  return result;
}

void MTSimpleEmbeddedHIDManager::initialize(MTModeSwitcher *a1, uint64_t a2, const void *a3, int a4, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  *(a1 + 26) = 0;
  *(a1 + 27) = 0;
  MTSimpleHIDManager::initialize(a1, a2, a3, a4, a5);
  IsReady = MTDeviceDriverIsReady();
  (*(*a1 + 336))(a1, IsReady);
  (*(*a1 + 80))(a1);
  if ((MTDeviceSupportsWirelessChargingNotification() & 1) != 0 || ((*(*a1 + 80))(a1), MTDeviceSupportsUSBChargingNotification()))
  {
    if ((MTDeviceHasExpectedVersion() & 1) == 0)
    {
      MTDeviceGetVersion();
      v11 = MTLoggingPlugin();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = "";
        v18 = 2080;
        v19 = "";
        v20 = 2080;
        v21 = "initialize";
        v22 = 2048;
        v23 = 0;
        v10 = "[HID] [MT] %s%s%s Firmware version 0x%04jX is unexpected. Disabling interference monitor.";
        v12 = v11;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 42;
LABEL_18:
        _os_log_impl(&dword_29D381000, v12, v13, v10, buf, v14);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    *(a1 + 27) = (*(*a1 + 616))(a1);
  }

  *(a1 + 28) = 0;
  if (MTDeviceGetSATelemetryReportID())
  {
    operator new();
  }

  v7 = MTDeviceEnableWorkIntervalNotification();
  v8 = MTLoggingPlugin();
  v9 = v8;
  if (v7 == -536870201)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "";
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = "initialize";
      v10 = "[HID] [MT] %s%s%s Work interval notification not supported by device. Skipping.";
      goto LABEL_15;
    }
  }

  else if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "[Error] ";
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = "initialize";
      v22 = 1024;
      LODWORD(v23) = v7;
      v10 = "[HID] [MT] %s%s%s MTDeviceEnableWorkIntervalNotification returned 0x%08X";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 38;
      goto LABEL_18;
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "";
    v18 = 2080;
    v19 = "";
    v20 = 2080;
    v21 = "initialize";
    v10 = "[HID] [MT] %s%s%s Work interval notification enabled";
LABEL_15:
    v12 = v9;
    v13 = OS_LOG_TYPE_DEFAULT;
    v14 = 32;
    goto LABEL_18;
  }

LABEL_19:
  v15 = *MEMORY[0x29EDCA608];
}

uint64_t MTSimpleEmbeddedHIDManager::stop(MTSimpleEmbeddedHIDManager *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    MTInterferenceMonitor::stop(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    MTTelemetryAnalyticsReporter::stop(v3);
  }

  return MTSimpleHIDManager::stop(this);
}

void MTSimpleEmbeddedHIDManager::finalize(MTSimpleEmbeddedHIDManager *this)
{
  v2 = *(this + 27);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    MTTelemetryAnalyticsReporter::~MTTelemetryAnalyticsReporter(v3);
    MEMORY[0x29ED547D0]();
  }

  MTSimpleHIDManager::finalize(this);
}

void MTSimpleEmbeddedHIDManager::createGestureParser(MTSimpleEmbeddedHIDManager *this)
{
  v2 = (*(*this + 80))(this);
  v3 = *(this + 40);
  MTParser::createParserForMTDevice(v2, *(this + 39));
}

unsigned int *MTSimpleEmbeddedHIDManager::destroyGestureParser(MTSimpleEmbeddedHIDManager *this)
{
  result = *(this + 26);
  if (result)
  {
    result = MTParser::release(result);
    *(this + 26) = 0;
  }

  return result;
}

uint64_t MTSimpleEmbeddedHIDManager::devicePropertiesBecameAvailable(MTParser **this)
{
  (*(*this + 39))(this);
  MTParser::updateSurfaceDimensions(this[26]);

  return MTSimpleHIDManager::devicePropertiesBecameAvailable(this);
}

void MTSimpleEmbeddedHIDManager::setPluginDefaultProperties(MTSimpleEmbeddedHIDManager *this)
{
  MTSimpleHIDManager::setPluginDefaultProperties(this);
  (*(*this + 80))(this);
  if (MTDeviceSupportsForce())
  {
    (*(*this + 80))(this);
    valuePtr = MTDeviceGetMinDigitizerPressureValue();
    (*(*this + 80))(this);
    AccurateMaxDigitizerPressureValue = MTDeviceGetAccurateMaxDigitizerPressureValue();
    (*(*this + 80))(this);
    ExtendedMaxDigitizerPressureValue = MTDeviceGetExtendedMaxDigitizerPressureValue();
    v2 = *MEMORY[0x29EDB8ED8];
    v3 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      (*(*this + 568))(this, @"MinDigitizerPressureValue", v3);
      CFRelease(v4);
    }

    v5 = CFNumberCreate(v2, kCFNumberSInt32Type, &AccurateMaxDigitizerPressureValue);
    if (v5)
    {
      v6 = v5;
      (*(*this + 568))(this, @"MaxDigitizerPressureValue", v5);
      (*(*this + 568))(this, @"AccurateMaxDigitizerPressureValue", v6);
      CFRelease(v6);
    }

    v7 = CFNumberCreate(v2, kCFNumberSInt32Type, &ExtendedMaxDigitizerPressureValue);
    if (v7)
    {
      v8 = v7;
      (*(*this + 568))(this, @"DigitizerPressureDynamicRange", v7);
      (*(*this + 568))(this, @"ExtendedMaxDigitizerPressureValue", v8);
      CFRelease(v8);
    }
  }
}

__n128 MTSimpleEmbeddedHIDManager::copyTipOffsetParameters@<Q0>(MTSimpleEmbeddedHIDManager *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*(this + 26) + 64);
  v3 = *(v2 + 196);
  *a2 = *(v2 + 180);
  *(a2 + 16) = v3;
  result = *(v2 + 212);
  v5 = *(v2 + 228);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

__n128 MTSimpleEmbeddedHIDManager::setTipOffsetParameters(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 208) + 64);
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  *(v2 + 228) = *(a2 + 48);
  *(v2 + 212) = v5;
  *(v2 + 196) = v4;
  *(v2 + 180) = result;
  return result;
}

void MTSimpleEmbeddedHIDManager::resetGestureParser(MTSimpleEmbeddedHIDManager *this, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = 0;
    cf = 0;
    v5 = *(this + 26);
    if (v5)
    {
      MTParser::clear(v5, &cf, &v7, a4);
      if (cf)
      {
        (*(*this + 136))(this, cf, 0);
        CFRelease(cf);
      }

      if (v7)
      {
        (*(*this + 136))(this, v7, 0);
        CFRelease(v7);
      }
    }
  }

  else
  {
    v6 = *(this + 26);
    if (v6)
    {

      MTParser::clear(v6, 0, 0, a4);
    }
  }
}

CFDictionaryRef MTSimpleEmbeddedHIDManager::copyProperty(MTSimpleEmbeddedHIDManager *this, const __CFString *a2)
{
  if (MTSimpleHIDManager::propertyTypeFromString(a2, a2) == 15)
  {
    valuePtr = *(*(*(this + 26) + 64) + 104);
    return CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberDoubleType, &valuePtr);
  }

  else
  {

    return MTSimpleHIDManager::copyProperty(this, a2);
  }
}

uint64_t MTSimpleEmbeddedHIDManager::setPropertyInternal(uint64_t *a1, int a2, CFTypeRef cf, int a4)
{
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    v9 = v8 == CFNumberGetTypeID();
  }

  else
  {
    v9 = 0;
  }

  if (a2 == 15)
  {
    v15 = 0.0;
    if (v9 && CFNumberGetValue(cf, kCFNumberDoubleType, &v15))
    {
      v13 = v15;
      *(*(a1[26] + 64) + 104) = v13;
      return 1;
    }
  }

  else if (a2 == 19)
  {
    valuePtr = 0;
    if (v9)
    {
      if (CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr))
      {
        if ((*(*a1 + 624))(a1))
        {
          v10 = (*(*a1 + 624))(a1);
          LODWORD(v11) = valuePtr;
          v12 = 25.4 / v11;
          *&v12 = v12;
          MTParser::updatePixelResolution_mm(v10, v12);
        }

        return 1;
      }
    }
  }

  return MTSimpleHIDManager::setPropertyInternal(a1, a2, cf, a4);
}

uint64_t createVendorDefinedTouchFrameEvent(unsigned __int8 *a1)
{
  v1 = *MEMORY[0x29EDB8ED8];
  mach_absolute_time();

  return IOHIDEventCreateVendorDefinedEvent();
}

MTInterferenceMonitor *MTSimpleEmbeddedHIDManager::deviceDidBootload(MTInterferenceMonitor **this)
{
  MTSimpleHIDManager::deviceDidBootload(this);
  result = this[27];
  if (result)
  {

    return MTInterferenceMonitor::restoreStateToDevice(result);
  }

  return result;
}

uint64_t MTSimpleEmbeddedHIDManager::resetDevice(MTEmbeddedStatsImpl ****this)
{
  v50 = *MEMORY[0x29EDCA608];
  MTParser::deviceWillReset(this[26]);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  __b[129] = 1;
  memset(__b, 170, 0x204uLL);
  ((*this)[10])(this);
  v2 = MTDeviceIssueDriverRequest();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = __b[0];
  }

  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316162;
    v8 = "";
    v9 = 2080;
    v10 = "";
    v11 = 2080;
    v12 = "resetDevice";
    v13 = 1024;
    v14 = v3;
    v15 = 1024;
    v16 = __b[0];
    _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s [result:0x%08x, requestResult.status:0x%08x]", &v7, 0x2Cu);
  }

  v5 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t MTSimpleEmbeddedHIDManager::handleContactFrame(MTSimpleHIDManager *this, double a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  *&v30[9] = *MEMORY[0x29EDCA608];
  v11 = *(this + 25);
  if (v11)
  {
    MTSLGLogger::logPaths(v11, a4, a5);
  }

  if (!MTSimpleHIDManager::touchFramesAllowed(this))
  {
    cf = 0;
    MTDeviceGetDeviceID();
    v16 = MTLoggingPlugin();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(this + 32);
      v18 = *(this + 48);
      v19 = *(this + 122);
      *buf = 67109888;
      *&buf[4] = v17;
      *&buf[8] = 1024;
      *&buf[10] = v18;
      LOWORD(v29) = 1024;
      *(&v29 + 2) = v19;
      HIWORD(v29) = 2048;
      *v30 = cf;
      v13 = "received a touch frame but preventing dispatch. _currentDetectionMode=%d, _currentTouchMode=%d, _proxIntegrated=%d (deviceID 0x%llX)";
      v14 = v16;
      v15 = 30;
      goto LABEL_13;
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (*(this + 18) == a2 && *(this + 152) == a6)
  {
    cf = 0;
    MTDeviceGetDeviceID();
    v12 = MTLoggingPlugin();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = a6;
      *&buf[12] = 2048;
      v29 = a2;
      v30[0] = 2048;
      *&v30[1] = cf;
      v13 = "ignoring duplicate frame #%qu @ %f\n (deviceID 0x%llX)";
      v14 = v12;
      v15 = 32;
LABEL_13:
      _os_log_impl(&dword_29D381000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (*(this + 121) == 1)
  {
    cf = 0;
    MTDeviceGetDeviceID();
    v20 = MTLoggingPlugin();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = cf;
      v13 = "received a touch frame but parser is disabled, preventing dispatch (deviceID 0x%llX)";
      v14 = v20;
      v15 = 12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  kdebug_trace();
  *(this + 18) = a2;
  *(this + 152) = a6;
  cf = 0;
  *buf = 0;
  v23 = *(this + 26);
  if (v23)
  {
    MTParser::handleContactFrame(v23, a4, a5, a2, a6, buf, &cf, 0);
    if (*buf)
    {
      (*(*this + 136))(this, *buf, 0);
      CFRelease(*buf);
    }

    if (cf)
    {
      v24 = (*(*this + 120))(this);
      if ((*(*v24 + 80))(v24))
      {
        VendorDefinedTouchFrameEvent = createVendorDefinedTouchFrameEvent(a4);
        if (VendorDefinedTouchFrameEvent)
        {
          v26 = VendorDefinedTouchFrameEvent;
          IOHIDEventAppendEvent();
          CFRelease(v26);
        }
      }

      (*(*this + 136))(this, cf, 0);
      CFRelease(cf);
    }
  }

  kdebug_trace();
  result = 1;
LABEL_15:
  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void MTSimpleEmbeddedHIDManager::handleImageEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 200);
  if (v4)
  {
    MTSLGLogger::logImages(v4, a3, a4);
  }
}

uint64_t MTSimpleEmbeddedHIDManager::handleFrameHeader(uint64_t a1, uint8x8_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 208);
  if (v4)
  {
    MTParser::handleFrameHeader(v4, a4, a2);
  }

  return 1;
}

void MTSimpleEmbeddedHIDManager::~MTSimpleEmbeddedHIDManager(MTSimpleEmbeddedHIDManager *this)
{
  MTSimpleHIDManager::~MTSimpleHIDManager(this);

  JUMPOUT(0x29ED547D0);
}

void MTRestZoneIntegrator::clearMotion(float32x2_t *this, int a2)
{
  v2 = a2;
  if (a2)
  {
    MTRestZoneIntegrator::clearThumbFingerEnvelope(this);
    this[29].i32[1] = 0;
  }

  this[33] = 0;
  this[34] = 0;
  this[37].i32[1] = 0;
  this[27] = 0;
  *this[20].f32 = 0u;
  *this[22].f32 = 0u;
  MTFingerToPathMap::clearFingerPathMappings(this);
  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    MTHandMotion::clearHandMotion(v2, v4);
  }
}

MTFingerToPathMap *MTRestZoneIntegrator::MTRestZoneIntegrator(MTFingerToPathMap *a1, uint64_t a2, __int32 a3, __int32 a4)
{
  MTFingerToPathMap::MTFingerToPathMap(a1, 0);
  *v8 = &unk_2A2413828;
  v8[31] = a2;
  v8[32].i32[0] = a3;
  v8[32].i32[1] = a4;
  MTRestZoneIntegrator::clearMotion(v8, 1);
  MTParameterFactory::initRestZoneBalanceParameters(a1 + 108);
  return a1;
}

void MTRestZoneIntegrator::~MTRestZoneIntegrator(MTRestZoneIntegrator *this)
{
  MTFingerToPathMap::~MTFingerToPathMap(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t MTRestZoneIntegrator::printExtractedMotion(uint64_t a1, int a2, int a3, uint64_t a4)
{
  printf("%dM/%d fingers, %d<-->%d\n", a3, a2, *(a1 + 80), *(a1 + 88));
  for (i = 3; i != 8; ++i)
  {
    v7 = *(a1 + 4 * i);
    if (v7)
    {
      printf("\tF%d %5.2fx %5.2fy %5.2fvx %5.2fvy\n", i - 2, *(a4 + 96 * v7 + 32), *(a4 + 96 * v7 + 36), *(a4 + 96 * v7 + 40), *(a4 + 96 * v7 + 44));
    }
  }

  return printf("\t%4.2fdx %4.2fdy %4.2fds %4.2fdr\n", *(a1 + 264), *(a1 + 268), *(a1 + 272), *(a1 + 276));
}

uint64_t MTRestZoneIntegrator::clearThumbFingerEnvelope(float32x2_t *this)
{
  if (this[12].u8[6] <= 3u)
  {
    this[29].f32[1] = MTRestZoneIntegrator::calcResidualBalance(this);
  }

  this[29].i32[0] = 0;
  this[28] = 0;
  this[30].i32[0] = 0;
  this[25] = 0;
  this[26] = 0;
  this[24] = 0;

  return MTFingerToPathMap::clearMaxFingersTouching(this);
}

float MTRestZoneIntegrator::calcResidualBalance(float32x2_t *this)
{
  v1 = vsqrt_f32(vadd_f32(this[28], this[28]));
  result = ((vsub_f32(vdup_lane_s32(v1, 1), v1).f32[0] - (this[15].f32[0] * sqrtf(this[27].f32[0]))) - (this[15].f32[1] * sqrtf(this[27].f32[1]))) - (this[16].f32[0] * sqrtf(this[30].f32[0]));
  if (result <= 0.0)
  {
    if (result <= this[19].f32[1])
    {
      return this[19].f32[1];
    }
  }

  else if (result >= this[17].f32[0])
  {
    return this[17].f32[0];
  }

  return result;
}

__n128 MTRestZoneIntegrator::computeSeparationVector(double a1, __n128 a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  a2.n128_u64[0] = vsub_f32(a5[4], a4[4]);
  v6 = a2;
  atan2f(-a2.n128_f32[1], a2.n128_f32[0]);
  return v6;
}

uint64_t MTRestZoneIntegrator::extractMotionDeltas(MTRestZoneIntegrator *this, const MTPathStates *a2, float32x2_t *a3, float32x2_t *a4, int a5)
{
  v10 = MTParserPath::stableAndMoved(a3);
  result = MTParserPath::stableAndMoved(a4);
  *(this + 76) = 1065353216;
  *(this + 33) = 0;
  *(this + 34) = 0;
  v13 = a3[5].i32[0];
  v14 = 0.0;
  if (v13)
  {
    v15 = a5 == 0;
  }

  else
  {
    v15 = 1;
  }

  v17 = v15 || a3[17].i32[0] == 0 || !v10;
  v18.i64[0] = 0;
  v12.i32[0] = 0;
  if (!v17)
  {
    v12.f32[0] = a3[56].f32[0] + 0.0;
    *(this + 66) = v12.i32[0];
    v18.f32[0] = a3[56].f32[1] + 0.0;
    *(this + 67) = v18.f32[0];
  }

  v19 = a4[5].i32[0];
  if (v13 != v19 && v19 != 0)
  {
    v21 = vsub_f32(a4[7], a3[7]);
    v22 = vmul_f32(v21, v21);
    *v22.i32 = sqrtf(*&v22.i32[1] + (v21.f32[0] * v21.f32[0]));
    v23 = 0.0;
    if (*v22.i32 > 0.0)
    {
      v24 = a5 ^ 1;
      v25 = vdiv_f32(v21, vdup_lane_s32(v22, 0));
      v41 = v25;
      if (!a4[17].i32[0])
      {
        v24 = 1;
      }

      if ((v24 & 1) == 0 && a3[17].i32[0])
      {
        v26 = a4[56];
        v27 = a3[56].f32[0];
        v28 = a3[56].f32[1];
        if ((v10 | result))
        {
          v29.f32[0] = -v28;
          v29.i32[1] = a3[56].i32[1];
          v30.i32[1] = HIDWORD(*&a4[56]);
          v30.f32[0] = -v26.f32[1];
          v31 = vmla_n_f32(vrev64_s32(vmul_f32(v25, v30)), v25, v26.f32[0]);
          *v32.f32 = a4[56];
          *&v32.u32[2] = v31;
          v12.i32[1] = v18.i32[0];
          *&v18.u32[2] = vmla_n_f32(vrev64_s32(vmul_f32(v25, v29)), v25, v27);
          v33.i64[0] = vaddq_f32(v32, v12).u64[0];
          v33.i64[1] = vsubq_f32(v32, v18).i64[1];
          v34.i64[0] = 0x3F0000003F000000;
          v34.i64[1] = 0x3F0000003F000000;
          *(this + 264) = vmulq_f32(v33, v34);
        }

        MTRestZoneIntegrator::translationSimilarityDotProduct(v27, v28, v26.f32[0], v26.f32[1]);
        v23 = v35;
        if ((a3[5].i32[1] - 3) <= 1 && (a3[17].i32[1] - 3) <= 1 && MTParserPath::isFingerOrRestingContact(a3))
        {
          MTRestZoneIntegrator::combineCentralFingerScaleRotate(this, a2, a3, &v41);
        }
      }
    }

    MTContact_getEllipseEccentricity();
    v37 = v36;
    result = MTContact_getEllipseEccentricity();
    v39 = v37 / v38;
    *(this + 76) = v39;
    if (v23 > 0.0)
    {
      v40 = v39;
      if (v40 < 1.2)
      {
        v14 = ((1.2 - v40) * 2.0 + 0.5) * v23;
      }
    }
  }

  *(this + 75) = v14;
  return result;
}

uint64_t MTRestZoneIntegrator::combineCentralFingerScaleRotate(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = *(result + 80) + 1;
  if (v4 < *(result + 88))
  {
    v8 = result;
    v9 = 0;
    v10 = result + 8;
    v11 = 0.0;
    do
    {
      if (v4 <= 0xF)
      {
        v12 = *(v10 + 4 * v4);
        if (v12 >= 1)
        {
          v13 = *(a2 + 280) + 600 * v12;
          if ((*(v13 + 44) - 3) <= 1 && (*(v13 + 140) - 3) <= 1)
          {
            result = MTParserPath::isFingerContact(v13);
            if (result)
            {
              v11 = v11 + (((*(v13 + 452) * a4[1]) + (*(v13 + 448) * *a4)) - ((*(a3 + 452) * a4[1]) + (*(a3 + 448) * *a4)));
              ++v9;
            }
          }
        }
      }

      ++v4;
    }

    while (v4 < *(v8 + 88));
    if (v9 > 0)
    {
      v14 = v11 / v9;
      v15 = *(v8 + 272);
      if (fabsf(v14) > fabsf(v15))
      {
        *(v8 + 272) = (v14 + v15) * 0.5;
      }
    }
  }

  return result;
}

void MTRestZoneIntegrator::computeSpeedSimilarity(MTRestZoneIntegrator *this, const MTPathStates *a2)
{
  v4 = 0.0;
  v5 = 3.4028e38;
  for (i = 12; i != 32; i += 4)
  {
    v7 = *(this + i);
    if (v7 >= 1)
    {
      v8 = (*(a2 + 35) + 600 * v7);
      if ((*(v8 + 11) - 3) <= 1 && MTParserPath::isFingerOrRestingContact(v8))
      {
        LODWORD(v9) = MTParserPath::getAverageVelocity_mm_s(v8).u32[0];
        v11 = hypotf(v9, v10);
        if (v11 < v5)
        {
          v5 = v11;
        }

        if (v11 > v4)
        {
          v4 = v11;
        }
      }
    }
  }
}

float32x2_t MTRestZoneIntegrator::decayMotionEnvelope(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4, float *a5, float *a6, float a7)
{
  v12 = 1.0 - expf(-a7 / *(a1 + 132));
  *&v13 = (v12 * 0.0);
  v14 = 1.0 - v12;
  v15 = *&v13 + v14 * *a4;
  *a4 = v15;
  v16 = *&v13 + v14 * *a6;
  *a6 = v16;
  v17 = *&v13 + v14 * *a5;
  *a5 = v17;
  v18 = vdupq_lane_s64(v13, 0);
  *a2->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(v18, vcvtq_f64_f32(*a2), v14)), vmlaq_n_f64(v18, vcvt_hight_f64_f32(*a2->f32), v14));
  result = vcvt_f32_f64(vmlaq_n_f64(v18, vcvtq_f64_f32(*a3), v14));
  *a3 = result;
  return result;
}

void MTRestZoneIntegrator::accumulateMotionEnvelope(uint64_t a1, float32x4_t *a2, float32x2_t *a3, float *a4, float *a5, float *a6, double a7)
{
  v13 = 0.25;
  if (!*(a1 + 244))
  {
    v13 = 0.4;
  }

  v14 = powf(*(a1 + 296), v13);
  v15.i64[0] = *(a1 + 280);
  *&v15.u32[2] = vmul_f32(vmul_n_f32(*(a1 + 108), v14), *(a1 + 288));
  v16 = vmlaq_n_f32(*a2, v15, *&a7);
  *a2 = v16;
  *a3 = vmla_n_f32(*a3, vmul_f32(vadd_f32(*(a1 + 280), *(a1 + 280)), *&vdupq_lane_s32(*&a7, 0)), *(a1 + 300));
  v17 = *a4;
  v18 = sqrtf(COERCE_FLOAT(vmulq_f32(v16, v16).i32[1]) + (v16.f32[0] * v16.f32[0]));
  if (*a4 <= v18)
  {
    v17 = v18;
  }

  *a4 = v17;
  v19 = *a5;
  v20 = sqrtf((a3->f32[1] * a3->f32[1]) + (a3->f32[0] * a3->f32[0]));
  if (*a5 <= v20)
  {
    v19 = v20;
  }

  *a5 = v19;
  v21 = *a6;
  v22 = fabsf(a2->f32[3]);
  v23 = fabsf(a2->f32[2]);
  if (v22 <= v23)
  {
    if (v21 <= v23)
    {
      v21 = v23;
    }
  }

  else if (v21 <= v22)
  {
    v21 = v22;
  }

  *a6 = v21;
}

float MTRestZoneIntegrator::polarTranslationBalance(MTRestZoneIntegrator *this)
{
  v1 = vsqrt_f32(vadd_f32(*(this + 228), *(this + 228)));
  if (v1.f32[0] <= v1.f32[1])
  {
    v1.f32[0] = v1.f32[1];
  }

  return v1.f32[0] - sqrtf(*(this + 56) + *(this + 56));
}

float MTRestZoneIntegrator::adaptivePolarBalance(MTRestZoneIntegrator *this)
{
  v1 = -(*(this + 32) * sqrtf(*(this + 60)));
  if ((*(this + 244) & 1) != 0 || *(this + 101) >= 4u)
  {
    v2 = vsqrt_f32(vadd_f32(*(this + 228), *(this + 228)));
    if (v2.f32[0] <= v2.f32[1])
    {
      v2.f32[0] = v2.f32[1];
    }

    v3 = v2.f32[0] - sqrtf(*(this + 56) + *(this + 56));
    if (v3 > 0.0)
    {
      v1 = v1 + v3;
    }

    return v1 + (*(this + 35) * 2.0);
  }

  else
  {
    v5 = vsqrt_f32(vadd_f32(*(this + 228), *(this + 228)));
    if (v5.f32[0] <= v5.f32[1])
    {
      v5.f32[0] = v5.f32[1];
    }

    return (((v1 + (v5.f32[0] - sqrtf(*(this + 56) + *(this + 56)))) + (*(this + 29) * *(this + 59))) - (*(this + 30) * sqrtf(*(this + 54)))) - (*(this + 31) * sqrtf(*(this + 55)));
  }
}

BOOL MTRestZoneIntegrator::isLockedOnTranslate(MTRestZoneIntegrator *this)
{
  v2 = vsqrt_f32(vadd_f32(*(this + 228), *(this + 228)));
  if (v2.f32[0] <= v2.f32[1])
  {
    v2.f32[0] = v2.f32[1];
  }

  v3 = *(this + 39);
  return (v2.f32[0] - sqrtf(*(this + 56) + *(this + 56))) < v3 && MTRestZoneIntegrator::adaptivePolarBalance(this) < v3 || MTRestZoneIntegrator::adaptivePolarBalance(this) < (v3 + v3);
}

BOOL MTRestZoneIntegrator::isLockedOnPolarSymmetric(MTRestZoneIntegrator *this)
{
  v2 = vsqrt_f32(vadd_f32(*(this + 228), *(this + 228)));
  if (v2.f32[0] <= v2.f32[1])
  {
    v2.f32[0] = v2.f32[1];
  }

  v3 = *(this + 34);
  return (v2.f32[0] - sqrtf(*(this + 56) + *(this + 56))) > v3 && MTRestZoneIntegrator::adaptivePolarBalance(this) > v3 || MTRestZoneIntegrator::adaptivePolarBalance(this) > (v3 + v3);
}

BOOL MTRestZoneIntegrator::shouldDoBiPolarIntegration(MTRestZoneIntegrator *this, char a2)
{
  v2 = 0.0;
  if ((a2 & 1) == 0)
  {
    v2 = *(this + 35);
  }

  return MTRestZoneIntegrator::adaptivePolarBalance(this) > v2;
}

float MTRestZoneIntegrator::translationDominance(MTRestZoneIntegrator *this, char a2)
{
  v3 = 0.0;
  v4 = 0.0;
  if ((a2 & 1) == 0)
  {
    v4 = *(this + 35);
  }

  if (MTRestZoneIntegrator::adaptivePolarBalance(this) <= v4)
  {
    v5 = MTRestZoneIntegrator::adaptivePolarBalance(this);
    v6 = *(this + 38);
    v3 = 1.0;
    if (v5 >= v6)
    {
      v3 = *(this + 36);
      v7 = *(this + 37);
      if (v5 <= v7)
      {
        return (1.0 - v3) * (v7 - v5) / (v7 - v6) + v3;
      }
    }
  }

  return v3;
}

void MTRestZoneIntegrator::weighDominantMotions(float32x2_t *this, float32x2_t a2)
{
  MTRestZoneIntegrator::convertPixelDeltasTo_mm_s(this, a2);
  if (!MTRestZoneIntegrator::isLockedOnPolarSymmetric(this) && !MTRestZoneIntegrator::isLockedOnTranslate(this))
  {
    v12 = -1;
    HIDWORD(v4) = -1;
    v11 = -1;
    v10 = -1;
    v5 = this[10].i32[0];
    if (v5 == this[11].i32[0])
    {
      if (v5 == 1)
      {
        v6 = &this[22];
        v7 = &this[27] + 1;
      }

      else
      {
        v6 = &this[20];
        v7 = &this[27];
      }

      *&v4 = *&a2;
      MTRestZoneIntegrator::accumulateMotionEnvelope(this, v6, &v11, v7, &v10, &v12, v4);
    }

    else
    {
      v8 = *&a2;
      *&v9 = MTRestZoneIntegrator::decayMotionEnvelope(this, this + 24, this + 26, &this[28], &this[29], &this[28] + 1, v8);
      *&v9 = v8;
      MTRestZoneIntegrator::accumulateMotionEnvelope(this, &this[24], this + 26, &this[28], &this[29], &this[28] + 1, v9);
      MTRestZoneIntegrator::decayMotionEnvelope(this, this + 20, &v11, &this[27], &v10, &v12, v8);
      MTRestZoneIntegrator::decayMotionEnvelope(this, this + 22, &v11, &this[27] + 1, &v10, &v12, v8);
    }
  }
}

void MTRestZoneIntegrator::convertPixelDeltasTo_mm_s(MTRestZoneIntegrator *this, float32x2_t a2)
{
  v2 = *&a2;
  a2.i32[0] = *(this + 66);
  MTSurfaceDimensions::convertPixelDeltasToMillimetersPerSecond(*(this + 31), a2, *(this + 67), v2);
  *(this + 70) = v4;
  *(this + 71) = v5;
  *(this + 72) = MTSurfaceDimensions::convertPixelDeltaToMillimetersPerSecond(*(this + 31), *(this + 68), v2);
  *(this + 73) = MTSurfaceDimensions::convertPixelDeltaToMillimetersPerSecond(*(this + 31), *(this + 69), v2);
}

void MTRestZoneIntegrator::integrateRestingZoneMotion(float32x2_t *this, const MTPathStates *a2, int a3)
{
  if (a3 <= 1 && this[12].u8[5] >= 2u)
  {
    MTRestZoneIntegrator::clearThumbFingerEnvelope(this);
  }

  MTFingerToPathMap::updateFingerPathMappings(this, a2);
  if (this[11].i32[1])
  {
    MTRestZoneIntegrator::computeSpeedSimilarity(this, a2);
    this[37].i32[0] = v6;
    if (a3)
    {
      InnermostTouchingPath = MTFingerToPathMap::getInnermostTouchingPath(this, a2);
      OutermostTouchingPath = MTFingerToPathMap::getOutermostTouchingPath(this, a2);
      v9 = this;
      v10 = a2;
      v11 = InnermostTouchingPath;
      v12 = 1;
    }

    else
    {
      InnermostInRangePath = MTFingerToPathMap::getInnermostInRangePath(this, a2);
      OutermostTouchingPath = MTFingerToPathMap::getOutermostInRangePath(this, a2);
      v9 = this;
      v10 = a2;
      v11 = InnermostInRangePath;
      v12 = 0;
    }

    MTRestZoneIntegrator::extractMotionDeltas(v9, v10, v11, OutermostTouchingPath, v12);
    v14 = *(a2 + 1) - *(a2 + 2);

    MTRestZoneIntegrator::weighDominantMotions(this, *&v14);
  }

  else
  {

    MTRestZoneIntegrator::clearMotion(this, 0);
  }
}

void MTForceFilter::MTForceFilter(MTForceFilter *this)
{
  *this = &unk_2A2413860;
  *(this + 1) = 0x3F75C28F00000000;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
}

{
  *this = &unk_2A2413860;
  *(this + 1) = 0x3F75C28F00000000;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
}

double MTForceFilter::clear(MTForceFilter *this)
{
  *(this + 1) = 0x3F75C28F00000000;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  return result;
}

uint64_t MTForceFilter::updateSliderFilter(uint64_t this, float a2, float a3)
{
  v3 = 0.5;
  if (a2 >= 1.0)
  {
    v3 = 0.0;
  }

  v4 = ((1.0 - v3) * a2) + (v3 * *(this + 48));
  if (v4 >= 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  if (v4 <= 1.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  *(this + 48) = v6;
  *(this + 52) = a3;
  return this;
}

float MTForceFilter::forceVelocityFilterAlpha(MTForceFilter *this, float a2)
{
  v2 = fabsf(a2);
  v3 = fabsf(*(this + 6));
  if (v2 <= v3)
  {
    v2 = v3;
  }

  return (1.0 - (v2 / (v2 + 1500.0))) * 0.9;
}

float MTForceFilter::surgeToActuationStrength(uint64_t a1, float *a2)
{
  v2 = *a2;
  v3 = powf(fabsf(*(a1 + 24)), 1.2);
  return (v3 / (v3 + powf(fabsf(v2), 1.2))) + 0.1;
}

void MTForceFilter::updateForceFilter(uint64_t a1, float *a2, float a3, float a4, double a5)
{
  if (a5 <= 0.04)
  {
    v6 = a5;
  }

  else
  {
    v6 = 0.04;
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = a3;
  *(a1 + 20) = v7;
  v8 = *(a1 + 28);
  v9 = (a3 - v7) / v6;
  *(a1 + 28) = v9;
  *(a1 + 32) = v8;
  if (a3 == 0.0 || a5 > 0.04)
  {
    v11 = *(a1 + 24);
    v13 = 0.0;
  }

  else
  {
    v10 = fabsf(v9);
    v11 = *(a1 + 24);
    v12 = fabsf(v11);
    if (v10 <= v12)
    {
      v10 = v12;
    }

    v13 = (1.0 - (v10 / (v10 + 1500.0))) * 0.9;
  }

  *(a1 + 24) = ((1.0 - v13) * v9) + (v13 * v11);
  v14 = *(a1 + 36);
  if (v14 >= a4)
  {
    v15 = (a4 * 0.15) + (v14 * 0.85);
  }

  else
  {
    v15 = (a4 * 0.75) + (v14 * 0.25);
  }

  *(a1 + 36) = v15;
  MTForceFilter::updateHystereticForce(a1, a2, a3);
  v16 = *(a1 + 40);
  v17 = *(a1 + 8);
  v18 = v16;
  if (v16 > v17)
  {
    v18 = (v16 * (1.0 - *(a1 + 12))) + (*(a1 + 12) * v17);
  }

  *(a1 + 8) = v18;
}

float MTForceFilter::updateHystereticForce(uint64_t a1, float *a2, float a3)
{
  v3 = a2[1];
  v4 = *a2 * a3;
  if (v4 < v3)
  {
    v4 = a2[1];
  }

  v5 = a2[2];
  if (v4 <= v5)
  {
    v5 = v4;
  }

  v6 = *(a1 + 40);
  if ((v6 + v5) >= a3)
  {
    if (v3 >= a3)
    {
      v7 = a3 + a3;
    }

    else
    {
      v7 = *(a1 + 40);
      if ((v6 - v5) > a3)
      {
        v7 = v5 + a3;
      }
    }
  }

  else
  {
    v7 = a3 - v5;
  }

  result = (v7 * (1.0 - a2[3])) + (a2[3] * v6);
  *(a1 + 40) = result;
  *(a1 + 44) = v6;
  return result;
}

void MTForceThresholding::MTForceThresholding(MTForceThresholding *this)
{
  *this = &unk_2A2413890;
  MTForceBehavior::MTForceBehavior((this + 176));
  *(this + 80) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  MTForceThresholding::clear(this);
  MTParameterFactory::initForceThresholdQualifiers(this + 8);
  MTParameterFactory::initForceActuationQualifiers(this + 144);
  *(this + 42) = 0x100000001;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 46) = _D0;
}

void sub_29D3C5708(_Unwind_Exception *a1)
{
  v3 = v1[54];
  if (v3)
  {
    v1[55] = v3;
    operator delete(v3);
  }

  MTForceBehavior::~MTForceBehavior((v1 + 22));
  _Unwind_Resume(a1);
}

void MTForceThresholding::clear(MTForceThresholding *this)
{
  *(this + 81) = 0;
  *(this + 41) = 0;
  *(this + 114) = 0;
  *(this + 58) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 55) = *(this + 54);
  v1 = *(this + 48);
  if (v1)
  {
    std::vector<float>::resize(this + 18, v1);
  }
}

void MTForceThresholding::~MTForceThresholding(MTForceThresholding *this)
{
  *this = &unk_2A2413890;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 46) = _D0;
  v7 = *(this + 54);
  if (v7)
  {
    *(this + 55) = v7;
    operator delete(v7);
  }

  v8 = *(this + 37);
  if (v8)
  {
    *(this + 38) = v8;
    operator delete(v8);
  }

  v9 = *(this + 34);
  if (v9)
  {
    *(this + 35) = v9;
    operator delete(v9);
  }

  v10 = *(this + 31);
  if (v10)
  {
    *(this + 32) = v10;
    operator delete(v10);
  }

  v11 = *(this + 28);
  if (v11)
  {
    *(this + 29) = v11;
    operator delete(v11);
  }

  v12 = *(this + 25);
  if (v12)
  {
    *(this + 26) = v12;
    operator delete(v12);
  }
}

{
  MTForceThresholding::~MTForceThresholding(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t MTForceThresholding::MTForceThresholding(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *a1 = &unk_2A2413890;
  *(a1 + 8) = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 72) = *(a2 + 64);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 136) = *(a2 + 128);
  *(a1 + 120) = v9;
  *(a1 + 104) = v8;
  *(a1 + 88) = v7;
  v10 = a3[1];
  *(a1 + 144) = *a3;
  *(a1 + 160) = v10;
  MTForceBehavior::MTForceBehavior((a1 + 176));
  *(a1 + 320) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 432) = 0;
  MTForceThresholding::clear(a1);
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 368) = _D0;
  return a1;
}

void sub_29D3C5900(_Unwind_Exception *a1)
{
  v3 = v1[54];
  if (v3)
  {
    v1[55] = v3;
    operator delete(v3);
  }

  MTForceBehavior::~MTForceBehavior((v1 + 22));
  _Unwind_Resume(a1);
}

uint64_t MTForceThresholding::clearPeakAndStage(uint64_t this)
{
  *(this + 332) = 0;
  *(this + 376) = 0;
  *(this + 384) = 0;
  *(this + 408) = 0;
  *(this + 416) = 0;
  return this;
}

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

void MTForceThresholding::setForceBehavior(MTForceThresholding *this, const MTForceBehavior *a2, int a3)
{
  MTForceBehavior::operator=(this + 176, a2);
  *(this + 80) = a3;

  MTForceThresholding::clear(this);
}

float MTForceThresholding::updateForceBehavior(std::vector<int> *this, const MTForceBehavior *a2, int a3)
{
  MTForceBehavior::operator=(&this[7].__end_, a2);
  begin_low = LODWORD(this[8].__begin_);
  if (begin_low > this[18].__end_ - this[18].__begin_)
  {
    std::vector<float>::resize(this + 18, begin_low);
    LODWORD(begin_low) = this[8].__begin_;
  }

  if (HIDWORD(this[13].__end_) >= begin_low)
  {
    HIDWORD(this[13].__end_) = begin_low - 1;
    LODWORD(this[13].__end_cap_.__value_) = begin_low - 1;
  }

  LODWORD(this[13].__end_) = a3;
  result = *(&this[15].__end_cap_.__value_ + 1);
  *&this[16].__begin_ = result;
  return result;
}

uint64_t MTForceThresholding::actuationWaveformID(MTForceThresholding *this)
{
  v1 = *(this + 81);
  v2 = *(this + 82);
  if (v1 > v2)
  {
    v3 = 272;
    return *(*(this + v3) + 4 * v1);
  }

  if (((v1 - v2) & 0x80000000) != 0)
  {
    v3 = 296;
    v1 = *(this + 82);
    return *(*(this + v3) + 4 * v1);
  }

  return 0;
}

uint64_t MTForceThresholding::activationLevelAbove(int a1)
{
  if ((a1 & 0x80000001) == 1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return (v1 + a1);
}

uint64_t MTForceThresholding::activationLevelForHold(uint64_t result)
{
  if ((result & 0x80000001) == 1)
  {
    return result;
  }

  else
  {
    return (result + 1);
  }
}

__n128 MTForceThresholding::setForceThresholdQualifiers(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 72) = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 40) = v3;
  *(a1 + 24) = v2;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 136) = *(a2 + 128);
  *(a1 + 120) = v7;
  *(a1 + 104) = v6;
  *(a1 + 88) = result;
  return result;
}

__n128 MTForceThresholding::setForceActuationQualifiers(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 144) = *a2;
  *(a1 + 160) = v3;
  return result;
}

float MTForceThresholding::getClickThresholdMultiplier(uint64_t a1, unsigned int a2)
{
  result = 1.0;
  if (a2 <= 2)
  {
    return flt_29D3D7518[a2];
  }

  return result;
}

float MTForceThresholding::basicThresholdForLevel(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    result = 0.0;
LABEL_7:
    v5 = *(a1 + 336);
    goto LABEL_8;
  }

  v3 = *(a1 + 200);
  v2 = *(a1 + 208);
  if (((v2 - v3) >> 2) <= a2)
  {
    result = *(v2 - 4) + *(v2 - 4);
  }

  else
  {
    result = *(v3 + 4 * a2);
  }

  if (a2 <= 1)
  {
    goto LABEL_7;
  }

  if (a2 > 3)
  {
    return result;
  }

  v5 = *(a1 + 340);
LABEL_8:
  v6 = 1.0;
  if (v5 <= 2)
  {
    v6 = flt_29D3D7518[v5];
  }

  return result * v6;
}

float MTForceThresholding::adaptiveThresholdForLevel(uint64_t a1, unsigned int a2, float *a3, uint64_t a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0.0;
  }

  v8 = *(a1 + 140);
  v9 = MTForceThresholding::basicThresholdForLevel(a1, a2);
  if ((*(a1 + 424) & 1) == 0)
  {
    v10 = a2 + 2;
    v11 = MTForceThresholding::basicThresholdForLevel(a1, a2 + 2);
    v12 = MTForceThresholding::basicThresholdForLevel(a1, a2 - 2);
    v13 = *(a1 + 136);
    v14 = *(a1 + 340);
    v15 = 1.0;
    if (v14 <= 2)
    {
      v15 = flt_29D3D7518[v14];
    }

    v16 = (v13 * v15) + *(a1 + 364);
    v17 = v11 - v9;
    v18 = v9 - v12;
    if (a2 < 2 || (a2 & 1) != 0)
    {
      if (a2)
      {
        v21 = *(a1 + 324);
        if (v21 >= ((a2 + 1) >> 1))
        {
          v22 = v9;
        }

        else
        {
          v22 = v16;
          if (v21 < (((*(a1 + 208) - *(a1 + 200)) >> 2) + 1) / 2)
          {
            v22 = v9;
            if (a2 >= 3)
            {
              v22 = a3[2] + *(a1 + 456);
              if (v9 > v22)
              {
                v22 = v9;
              }
            }
          }
        }

        v28 = *(a1 + 392);
        v29 = *(a1 + 116);
        v30 = 1.0;
        if (v28 > v29)
        {
          v31 = *(a1 + 120);
          v30 = 0.0;
          if (v28 < v31)
          {
            v30 = (v31 - v28) / (v31 - v29);
          }
        }

        v27 = (((v17 * *(a1 + 8)) + v22) * (1.0 - v30)) + (v30 * v22);
        goto LABEL_29;
      }
    }

    else if ((v10 >> 1) <= *(a1 + 324))
    {
      v19 = *(*(a1 + 432) + 4 * (v10 >> 1));
      v20 = 1.0;
      if (v19 > 300.0)
      {
        v20 = 0.0;
        if (v19 < v13)
        {
          v20 = (v13 - v19) / (v13 + -300.0);
        }
      }

      v9 = v19 * (((1.0 - v20) * 0.625) + (v20 * 0.85));
    }

    v23 = *(a1 + 396);
    v24 = *(a1 + 124);
    v25 = 1.0;
    if (v23 > v24)
    {
      v26 = *(a1 + 128);
      v25 = 0.0;
      if (v23 < v26)
      {
        v25 = (v26 - v23) / (v26 - v24);
      }
    }

    v27 = ((v9 - (v18 * *(a1 + 12))) * (1.0 - v25)) + (v25 * v9);
LABEL_29:
    if ((*(a1 + 180) & 0x80) == 0)
    {
      v32 = v17 * *(a1 + 20);
      v33 = v18 * *(a1 + 24);
      v34 = *(a4 + 72);
      v35 = *(a1 + 108);
      v36 = *(a1 + 112);
      v37 = v34 < v36;
      v38 = (v36 - v34) / (v36 - v35);
      if (!v37)
      {
        v38 = 0.0;
      }

      if (v34 > v35)
      {
        v39 = v38;
      }

      else
      {
        v39 = 1.0;
      }

      v27 = ((v32 + v27) * (1.0 - v39)) + (v39 * (v27 - v33));
    }

    if (v27 >= v16)
    {
      v9 = v16;
    }

    else
    {
      v9 = v27;
    }

    if ((a2 & 1) != 0 && *(a1 + 324) < ((a2 + 1) >> 1))
    {
      v40 = a3[10];
      v41 = a3[11];
      v42 = v40 * *(a1 + 132);
      if (v42 >= (*(a1 + 356) - v41))
      {
        v42 = *(a1 + 356) - v41;
      }

      v43 = v40 - v41;
      v37 = v40 < v41;
      v44 = 0.0;
      if (!v37)
      {
        v44 = v43;
      }

      v45 = (v40 + v42) - v44;
      if (v9 <= v45)
      {
        v9 = v45;
      }
    }

    if (*(a1 + 400) > *(a1 + 128) && (a2 & 1) != 0 && *(a1 + 176) != 16 && *(a1 + 324) < ((a2 + 1) >> 1) && a2 > 2)
    {
      return v8 + v8;
    }
  }

  return v9;
}

float MTForceThresholding::thresholdForNextRelease(MTForceThresholding *this, const MTForceFilter *a2, const MTParserPath *a3)
{
  v6 = 2 * *(this + 81);
  do
  {
    v7 = v6;
    if (v6 < 3)
    {
      break;
    }

    v8 = MTForceBehavior::skipReleaseStage(this + 176, (v6 - 1) >> 1);
    v6 = v7 - 2;
  }

  while (v8);

  return MTForceThresholding::adaptiveThresholdForLevel(this, v7 - 2, a2, a3);
}

BOOL MTForceBehavior::skipReleaseStage(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v6, *(a1 + 72), *(a1 + 80), (*(a1 + 80) - *(a1 + 72)) >> 2);
  v3 = v7;
  v4 = v6;
  if (v6 != v7)
  {
    v4 = v6;
    while (*v4 != a2)
    {
      if (++v4 == v7)
      {
        v4 = v7;
        break;
      }
    }
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v4 != v3;
}

float MTForceThresholding::thresholdForNextActivation(MTForceThresholding *this, const MTForceFilter *a2, const MTParserPath *a3)
{
  v6 = 2 * *(this + 81) + 2;
  do
  {
    v7 = v6;
    if (v6 >= ((*(this + 26) - *(this + 25)) >> 2))
    {
      break;
    }

    v8 = MTForceBehavior::skipActivationStage(this + 176, v6 / 2);
    v6 = v7 + 2;
  }

  while (v8);

  return MTForceThresholding::adaptiveThresholdForLevel(this, v7 - 1, a2, a3);
}

BOOL MTForceBehavior::skipActivationStage(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v6, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 2);
  v3 = v7;
  v4 = v6;
  if (v6 != v7)
  {
    v4 = v6;
    while (*v4 != a2)
    {
      if (++v4 == v7)
      {
        v4 = v7;
        break;
      }
    }
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return v4 != v3;
}

float MTForceThresholding::preReleaseProgress(MTForceThresholding *this, const MTForceFilter *a2, const MTParserPath *a3)
{
  v3 = *(this + 88);
  v4 = v3 * (*(this + 14) + 1.0);
  result = 0.0;
  if (v3 < v4 && *(this + 81) >= 1)
  {
    v6 = *(a2 + 10);
    result = 1.0;
    if (v6 > v3)
    {
      result = 0.0;
      if (v6 < v4)
      {
        return (v4 - v6) / (v4 - v3);
      }
    }
  }

  return result;
}

float MTForceThresholding::preActivationProgress(MTForceThresholding *this, const MTForceFilter *a2, const MTParserPath *a3)
{
  v3 = *(this + 89);
  v4 = v3 * (1.0 - *(this + 15));
  result = 0.0;
  if (v4 < v3 && *(this + 81) < (((*(this + 26) - *(this + 25)) >> 2) + 1) / 2 && v3 < *(this + 35))
  {
    v6 = *(a2 + 10);
    if (v6 > v4)
    {
      result = 1.0;
      if (v6 < v3)
      {
        return (v6 - v4) / (v3 - v4);
      }
    }
  }

  return result;
}

float MTForceThresholding::postActivationProgress(MTForceThresholding *this, const MTForceFilter *a2, const MTParserPath *a3)
{
  v3 = *(this + 16);
  v4 = *(this + 81);
  if (*(this + 188) == 1 && v4 >= (((*(this + 26) - *(this + 25)) >> 2) + 1) / 2)
  {
    v3 = *(this + 17);
  }

  v5 = *(*(this + 54) + 4 * v4);
  v6 = *(this + 44);
  if (v6 == 12)
  {
    v7 = *(this + 84);
    v8 = 1.0;
    if (v7 <= 2)
    {
      v8 = flt_29D3D7518[v7];
    }

    v9 = *(this + 34) * v8;
  }

  else
  {
    v10 = 1.0;
    if (v6 == 11)
    {
      v11 = *(this + 84);
      if (v11 <= 2)
      {
        v10 = flt_29D3D7518[v11];
      }

      v9 = (*(this + 34) * v10) * 0.5;
      v5 = 0.0;
    }

    else
    {
      v9 = (v3 + 1.0) * v5;
    }
  }

  if (v4 < (((*(this + 26) - *(this + 25)) >> 2) + 1) / 2 && v9 >= *(this + 89))
  {
    v9 = *(this + 89);
  }

  v12 = 0.0;
  if (v4 >= 1 && v5 < v9)
  {
    v13 = *(a2 + 10);
    if (v13 > v5)
    {
      if (v13 >= v9)
      {
        v12 = 3.14159265;
      }

      else
      {
        v12 = ((v13 - v5) / (v9 - v5)) * 3.14159265;
      }
    }
  }

  return (1.0 - cos(v12)) * 0.5;
}

float MTForceThresholding::rescaleForceAsLadderProgress(MTForceThresholding *this, const MTPathStates *a2)
{
  v2 = *(a2 + 35) + 600 * *(this + 80) + 296;
  v3 = (*(this + 26) - *(this + 25)) >> 2;
  if ((v3 & 0x80000000) != 0)
  {
    v8 = 0.0;
    v9 = 1.0;
    v6 = 0.0;
LABEL_11:
    v10 = (*(v2 + 40) - v8) / (v9 - v8);
    return v6 + v10;
  }

  v5 = *(*(a2 + 35) + 600 * *(this + 80) + 336);
  v6 = 0.0;
  v7 = -1;
  do
  {
    v8 = MTForceThresholding::basicThresholdForLevel(this, v7);
    v7 += 2;
    v9 = MTForceThresholding::basicThresholdForLevel(this, v7);
    if (v5 < v8 || v5 < v9 || v7 >= v3 && v5 > v9)
    {
      break;
    }

    v6 = v6 + 1.0;
  }

  while (v7 < v3);
  v10 = 0.0;
  if (v9 > v8)
  {
    goto LABEL_11;
  }

  return v6 + v10;
}

uint64_t MTForceThresholding::classifyForceLevel(MTForceThresholding *this, const MTForceFilter *a2)
{
  v3 = 0;
  v4 = (*(this + 26) - *(this + 25)) >> 2;
  v5 = *(a2 + 10);
  v6 = v4 & ~(v4 >> 31);
  v7 = (v6 - 1);
  while (v6 != v3)
  {
    v8 = MTForceThresholding::basicThresholdForLevel(this, v3++);
    if (v5 <= v8)
    {
      return v3 - 2;
    }
  }

  return v7;
}

uint64_t MTForceThresholding::classifyForceLevelAdaptively(MTForceThresholding *this, const MTForceFilter *a2, const MTParserPath *a3)
{
  v6 = 0;
  v7 = (*(this + 26) - *(this + 25)) >> 2;
  v8 = *(a2 + 10);
  v9 = v7 & ~(v7 >> 31);
  v10 = (v9 - 1);
  while (v9 != v6)
  {
    v11 = MTForceThresholding::adaptiveThresholdForLevel(this, v6++, a2, a3);
    if (v8 <= v11)
    {
      return v6 - 2;
    }
  }

  return v10;
}

uint64_t MTForceThresholding::fingersMatchBehavior(MTForceThresholding *this, const MTPathStates *a2, int a3)
{
  if (MTForceBehavior::forceSourceFingerCount(this + 176) == 2)
  {
    return *(a2 + 92) == 2;
  }

  if (MTForceBehavior::forceSourceFingerCount(this + 176) == 3)
  {
    return *(a2 + 92) == 3;
  }

  v8 = (*(a2 + 35) + 600 * a3);

  return MTParserPath::isValidClickSource(v8);
}

void MTForceThresholding::updateAccidentalClickPreventionOffsets(uint64_t a1, unsigned int a2, uint64_t a3, MTParserPath *this, uint64_t a5, double a6, float a7, float a8)
{
  v14 = *(a1 + 340);
  v15 = 1.0;
  if (v14 <= 2)
  {
    v15 = flt_29D3D7518[v14];
  }

  if (v14)
  {
    v16 = dbl_29D3D74F0[v14 == 2];
  }

  else
  {
    v16 = 0.9992;
  }

  v17 = *(a1 + 88) + (v15 + -1.0) * 0.01;
  isThumbContact = MTParserPath::isThumbContact(this);
  v19 = v17 + 0.01;
  if (!isThumbContact)
  {
    v19 = v17;
  }

  v20 = pow(v19, (*(a5 + 8) - *(a5 + 16)) / 0.00800000038);
  v21 = *(a1 + 92);
  if (*(a1 + 400) > *(a1 + 128))
  {
    v22 = *(a3 + 8);
    v23 = *(a1 + 100);
    v24 = 0.0;
    if (v22 > v23)
    {
      v25 = *(a1 + 104);
      v26 = v22 < v25;
      v24 = (v22 - v23) / (v25 - v23);
      if (!v26)
      {
        v24 = 1.0;
      }
    }

    v21 = (v21 * (1.0 - v24)) + (v24 * *(a1 + 96));
  }

  v27 = *(a1 + 80);
  v28 = *(a1 + 84);
  v29 = a7 - (*(a1 + 72) * v15);
  v30 = a8 - (*(a1 + 76) * v15);
  v31 = fmaxf(v29, 0.0);
  if (v31 >= v27)
  {
    v32 = *(a1 + 80);
  }

  else
  {
    v32 = v31;
  }

  *(a1 + 364) = v32;
  if (v29 <= v30)
  {
    v29 = v30;
  }

  v33 = fmaxf(v29, 0.0);
  if (v33 >= v27)
  {
    v34 = v27;
  }

  else
  {
    v34 = v33;
  }

  *(a1 + 360) = v34;
  v35 = MTForceThresholding::basicThresholdForLevel(a1, 3u);
  if (a2 != 0 && a2 < 0xFFFFFFFE)
  {
    v36 = *(a1 + 464) * (*(a1 + 464) * *(a1 + 464));
    *(a1 + 464) = v36;
    if (v36 <= 0.01)
    {
      v38 = v20;
      v37 = ((1.0 - v38) * ((v15 * v21) + v32)) + (v38 * *(a1 + 456));
      goto LABEL_26;
    }
  }

  else
  {
    *(a1 + 464) = v16;
  }

  v37 = v35 + (v32 + ((v15 * v28) + v34));
LABEL_26:
  *(a1 + 456) = v37;
}

void MTForceThresholding::updateAdaptiveThresholdingParameters(uint64_t a1, int a2, MTPathStates *this, double a4, uint64_t a5)
{
  MTPathStates::getMaxDisplacement_mm(this);
  *(a1 + 400) = v9;
  v10 = *(a5 + 352);
  *(a1 + 404) = v10;
  v11 = *(a1 + 324);
  if (*(a1 + 332) > v11 && v11 >= 1)
  {
    v13 = *(this + 1) - a4;
    v14 = 0.0;
    if (v13 > 0.25)
    {
      v14 = 1.0;
      if (v13 < 0.5)
      {
        v14 = (v13 + -0.25) * 4.0;
      }
    }

    v10 = (v9 * (1.0 - v14)) + (v14 * v10);
  }

  *(a1 + 396) = v10;
  *(a1 + 392) = MTPathStates::sumOfLowpassPeakFingerSpeeds(this);
}

uint64_t MTForceThresholding::analyzeForceAndStage(MTForceThresholding *this, const MTPathStates *a2, int a3, const MTForceBehavior *a4, double a5, double a6, int a7, float a8, float a9)
{
  v10 = a5;
  v14 = *(this + 81);
  v15 = 2 * v14;
  v16 = 2 * v14 - 1;
  v17 = *(this + 80);
  v18 = v17;
  if (v14)
  {
    v19 = *(a2 + 35);
    LODWORD(a5) = *(v19 + 600 * a3 + 336);
    if (*&a5 > *(v19 + 600 * v17 + 336))
    {
      v18 = a3;
      v17 = a3;
    }
  }

  else
  {
    v19 = *(a2 + 35);
  }

  v20 = v19 + 600 * v18;
  MTForceThresholding::updateAccidentalClickPreventionOffsets(this, v15 - 1, v20 + 296, v20, a2, a5, a8, a9);
  MTForceThresholding::updateAdaptiveThresholdingParameters(this, v21, a2, v10, v20);
  v22 = MTForceThresholding::classifyForceLevelAdaptively(this, (v20 + 296), v20);
  v23 = v22;
  v24 = *(v20 + 336);
  v25 = *(this + 44);
  *(this + 95) = v24;
  if (*a4 == 11 && v25 == 11 && !*(this + 81) && *(a2 + 1) - v10 < *(this + 12))
  {
    if (v22 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v22;
    }

    if ((*(v20 + 44) - 3) >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = v26;
    }
  }

  v27 = *(this + 96);
  if (vabds_f32(v24, v27) <= (v27 * *(this + 33)))
  {
    if (v27 != 0.0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *(this + 96) = 0;
  }

  if (v23 <= v15)
  {
    if (v23 > v15 - 3)
    {
      goto LABEL_35;
    }

    v28 = (v23 & 0x80000001) == 1 ? v23 : v23 + 1;
    v30 = *(this + 94);
    v31 = *(this + 97);
    if (v31 > v30)
    {
      v32 = *(a2 + 90);
      if ((v31 - v32) < ((v30 - v24) * *(this + 9)) && v32 > *(this + 10))
      {
        goto LABEL_35;
      }
    }

    if (v25 == 11 && *(this + 81) >= 1 && (*(v20 + 44) - 3) < 2)
    {
      goto LABEL_35;
    }

    v29 = MTForceBehavior::skipReleaseStage(this + 176, (v28 + 1) / 2);
  }

  else
  {
    if (!MTForceThresholding::fingersMatchBehavior(this, a2, v17) || !a7)
    {
      goto LABEL_35;
    }

    v28 = v23 - ((v23 & 0x80000001) != 1);
    v29 = MTForceBehavior::skipActivationStage(this + 176, (v28 + 1) / 2);
  }

  if (!v29)
  {
    v16 = v28;
  }

LABEL_35:
  v33 = ((v16 + 1) / 2);
  if (v33 < *(this + 81))
  {
    v16 = v16 + 1 - ((v16 & 0x80000001) != 1);
  }

  *(this + 86) = MTForceThresholding::basicThresholdForLevel(this, v16);
  *(this + 87) = MTForceThresholding::adaptiveThresholdForLevel(this, v16, (v20 + 296), v20);
  MTForceThresholding::updateStage(this, v33, (v20 + 296), v20, *(a2 + 90), *(a2 + 1));
  *(this + 88) = MTForceThresholding::thresholdForNextRelease(this, (v20 + 296), v20);
  *(this + 89) = MTForceThresholding::thresholdForNextActivation(this, (v20 + 296), v20);
  return v33;
}

BOOL MTForceThresholding::globalForceBlocksRelease(MTForceThresholding *this, const MTPathStates *a2, const MTForceFilter *a3)
{
  v3 = *(this + 94);
  v4 = *(this + 97);
  if (v4 <= v3)
  {
    return 0;
  }

  v5 = *(a2 + 90);
  return (v4 - v5) < (*(this + 9) * (v3 - *(a3 + 10))) && v5 > *(this + 10);
}

void MTForceThresholding::updateStage(uint64_t a1, int a2, float *a3, uint64_t a4, float a5, double a6)
{
  v8 = *(a1 + 324);
  *(a1 + 328) = v8;
  *(a1 + 324) = a2;
  v9 = *(a1 + 332);
  if (v9 < a2)
  {
    *(a1 + 332) = a2;
    v10 = a3[10];
LABEL_3:
    *(a1 + 376) = v10;
    *(a1 + 388) = a5;
    *(a1 + 416) = a6;
    goto LABEL_6;
  }

  if (v9 == a2)
  {
    v10 = a3[10];
    if (v10 > *(a1 + 376))
    {
      goto LABEL_3;
    }
  }

LABEL_6:
  if (a2 >= 1 && !v8)
  {
    *(a1 + 408) = a6;
  }

  if (v8 != a2)
  {
    if (*(a1 + 172) == 1)
    {
      v11 = *(a4 + 72) + -1.0;
      v12 = 2.0;
      if (v11 < 2.0)
      {
        v12 = 0.0;
        if (v11 >= 0.0)
        {
          v12 = *(a4 + 72) + -1.0;
        }
      }

      *(a1 + 368) = (MTForceFilter::surgeToActuationStrength(a3, (a1 + 144)) + (*(a1 + 164) * v12)) * *(a1 + 168);
      *(a1 + 372) = (*(a1 + 156) * v12) + 1.0;
      a2 = *(a1 + 324);
      v8 = *(a1 + 328);
      if (a2 > v8)
      {
        v14 = MTForceFilter::surge_g_s(a3);
        v15 = *(a1 + 144);
        v16 = MTForceFilter::surgeToActuationStrength(a3, (a1 + 144));
        printf("Surge=%.2f/%.2f, SurgeAmplitude=%.2f + excess area=%.2f -> stageStrength=%.2f, stageDilation=%.2f\n", v14, v15, v16, v12, *(a1 + 368), *(a1 + 372));
        a2 = *(a1 + 324);
        v8 = *(a1 + 328);
      }
    }

    else
    {
      __asm { FMOV            V0.2S, #1.0 }

      *(a1 + 368) = _D0;
    }

    *(a1 + 384) = 0;
    if (a2 <= v8)
    {
      if (a2 < v8)
      {
        v28 = (*(a1 + 432) + 4 * a2 + 4);
        v29 = 4 * (v8 + ~a2) + 4;

        bzero(v28, v29);
      }
    }

    else
    {
      v21 = 0;
      _D0.i32[0] = a3[10];
      v22 = a2 - v8;
      v23 = vdupq_n_s64(v22 - 1);
      v24 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v25 = (*(a1 + 432) + 4 * v8 + 8);
      do
      {
        v26 = vdupq_n_s64(v21);
        v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_29D3D65B0)));
        if (vuzp1_s16(v27, _D0).u8[0])
        {
          *(v25 - 1) = _D0.i32[0];
        }

        if (vuzp1_s16(v27, _D0).i8[2])
        {
          *v25 = _D0.i32[0];
        }

        if (vuzp1_s16(_D0, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_29D3D65A0)))).i32[1])
        {
          v25[1] = _D0.i32[0];
          v25[2] = _D0.i32[0];
        }

        v21 += 4;
        v25 += 4;
      }

      while (v24 != v21);
    }
  }
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29D3C6E40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void MTPowerLogger::MTPowerLogger(MTPowerLogger *this, const char *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  *this = &unk_2A24138C0;
  atomic_store(1u, this + 2);
  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136446210;
    v14 = a2;
    _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "MTPowerLogger %{public}s starting!", &v13, 0xCu);
  }

  v5 = dlopen([@"/System/Library/PrivateFrameworks/PowerLog.framework/PowerLog" UTF8String], 1);
  *(this + 2) = v5;
  if (v5)
  {
    v6 = dlsym(v5, "PLLogRegisteredEvent");
    *(this + 3) = v6;
    if (!v6)
    {
      v7 = MTLoggingPlugin();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        v8 = "MTPowerLogger could not find PLLogRegisteredEvent function";
LABEL_9:
        _os_log_impl(&dword_29D381000, v7, OS_LOG_TYPE_ERROR, v8, &v13, 2u);
      }
    }
  }

  else
  {
    v7 = MTLoggingPlugin();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      v8 = "MTPowerLogger could not load PowerLog.framework";
      goto LABEL_9;
    }
  }

  v9 = CFStringCreateWithCString(0, a2, 0x8000100u);
  *(this + 4) = v9;
  if (!v9)
  {
    v10 = MTLoggingPlugin();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_29D381000, v10, OS_LOG_TYPE_ERROR, "MTPowerLogger could not create a logger name", &v13, 2u);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(this + 6) = Current;
  *(this + 7) = Current;
  *(this + 10) = 1;
  *(this + 112) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  v12 = *MEMORY[0x29EDCA608];
}

void MTPowerLogger::~MTPowerLogger(MTPowerLogger *this)
{
  *this = &unk_2A24138C0;
  v2 = *(this + 2);
  if (v2)
  {
    dlclose(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  MTPowerLogger::~MTPowerLogger(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t MTPowerLogger::retain(uint64_t this)
{
  if (!atomic_load((this + 8)))
  {
    MTPowerLogger::retain();
  }

  atomic_fetch_add((this + 8), 1u);
  return this;
}

unsigned int *MTPowerLogger::release(unsigned int *this)
{
  if (!atomic_load(this + 2))
  {
    MTPowerLogger::release();
  }

  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v3 = *(*this + 8);

    return v3();
  }

  return this;
}

void MTPowerLogger::scheduleOnDispatchQueue(MTPowerLogger *this, NSObject *a2)
{
  v4 = MTLoggingPlugin();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29D381000, v4, OS_LOG_TYPE_DEFAULT, "MTPowerLogger scheduling on dispatch queue", buf, 2u);
  }

  v5 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, a2);
  *(this + 12) = v5;
  if (v5)
  {
    if (!atomic_load(this + 2))
    {
      MTPowerLogger::retain();
    }

    atomic_fetch_add(this + 2, 1u);
    v7 = dispatch_time(0, 1800000000000);
    dispatch_source_set_timer(*(this + 12), v7, 0x1A3185C5000uLL, 0x3B9ACA00uLL);
    v8 = *(this + 12);
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 3221225472;
    handler[2] = ___ZN13MTPowerLogger23scheduleOnDispatchQueueEP16dispatch_queue_s_block_invoke;
    handler[3] = &__block_descriptor_40_e5_v8__0l;
    handler[4] = this;
    dispatch_source_set_event_handler(v8, handler);
    v9 = *(this + 12);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = ___ZN13MTPowerLogger23scheduleOnDispatchQueueEP16dispatch_queue_s_block_invoke_2;
    v14[3] = &__block_descriptor_40_e5_v8__0l;
    v14[4] = this;
    dispatch_source_set_cancel_handler(v9, v14);
    dispatch_resume(*(this + 12));
  }

  v10 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, a2);
  *(this + 13) = v10;
  if (v10)
  {
    if (!atomic_load(this + 2))
    {
      MTPowerLogger::retain();
    }

    atomic_fetch_add(this + 2, 1u);
    v12 = *(this + 13);
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = ___ZN13MTPowerLogger23scheduleOnDispatchQueueEP16dispatch_queue_s_block_invoke_3;
    v13[3] = &__block_descriptor_40_e5_v8__0l;
    v13[4] = this;
    dispatch_source_set_cancel_handler(v12, v13);
  }
}

uint64_t MTPowerLogger::logPower(MTPowerLogger *this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(this + 6);
  Current = CFAbsoluteTimeGetCurrent();
  *(this + 6) = Current;
  v4 = Current - v2;
  MTPowerLogger::logState(this);
  v5 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:5];
  [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", v4), @"SampleTime"}];
  v6 = 0;
  v7 = (this + 64);
  do
  {
    result = [v5 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", *(v7 + v6 * 8)), kPowerLogStateFields[v6]}];
    ++v6;
  }

  while (v6 != 4);
  if (*(this + 3) && *(this + 4))
  {
    v9 = MTLoggingPlugin();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_29D381000, v9, OS_LOG_TYPE_DEFAULT, "MTPowerLogger sending event to PowerLog: %{public}@", &v11, 0xCu);
    }

    result = (*(this + 3))(53, *(this + 4), v5, 0);
  }

  *v7 = 0u;
  *(this + 5) = 0u;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void MTPowerLogger::unscheduleFromDispatchQueue(dispatch_object_t *this, dispatch_queue_s *a2)
{
  v3 = MTLoggingPlugin();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_29D381000, v3, OS_LOG_TYPE_DEFAULT, "MTPowerLogger unscheduling from dispatch queue", v6, 2u);
  }

  MTPowerLogger::logPower(this);
  v4 = this[13];
  if (v4)
  {
    if ((this[14] & 1) == 0)
    {
      dispatch_source_set_event_handler(v4, &__block_literal_global_1);
      dispatch_resume(this[13]);
      v4 = this[13];
    }

    dispatch_source_cancel(v4);
    dispatch_release(this[13]);
    this[13] = 0;
    *(this + 112) = 0;
  }

  v5 = this[12];
  if (v5)
  {
    dispatch_source_cancel(v5);
    dispatch_release(this[12]);
    this[12] = 0;
  }
}

void MTPowerLogger::transitionTo(MTPowerLogger *this, int a2)
{
  if (*(this + 112) == 1)
  {
    v4 = *(this + 13);
    if (v4)
    {
      dispatch_suspend(v4);
    }

    *(this + 112) = 0;
  }

  if (*(this + 10) != a2)
  {
    MTPowerLogger::logState(this);
    *(this + 10) = a2;
  }
}

void MTPowerLogger::logState(MTPowerLogger *this)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(this + 7);
  Current = CFAbsoluteTimeGetCurrent();
  *(this + 7) = Current;
  v4 = Current - v2;
  if (v4 > 0.0)
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = kPowerLogStateFields[*(this + 10)];
      v9 = 138543618;
      v10 = v6;
      v11 = 2048;
      v12 = v4;
      _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_DEBUG, "MTPowerLogger logging state %{public}@ (%gs)", &v9, 0x16u);
    }

    v7 = (this + 8 * *(this + 10));
    v7[8] = v4 + v7[8];
  }

  v8 = *MEMORY[0x29EDCA608];
}

void MTPowerLogger::transitionToDelayed(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    if (*(a1 + 112) == 1)
    {
      dispatch_suspend(v4);
      *(a1 + 112) = 0;
      v4 = *(a1 + 104);
    }

    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = ___ZN13MTPowerLogger19transitionToDelayedE18MTPowerLoggerStatex_block_invoke;
    v8[3] = &__block_descriptor_44_e5_v8__0l;
    v8[4] = a1;
    v9 = a2;
    dispatch_source_set_event_handler(v4, v8);
    v7 = dispatch_time(0, a3);
    dispatch_source_set_timer(*(a1 + 104), v7, a3, 0);
    dispatch_resume(*(a1 + 104));
    *(a1 + 112) = 1;
  }
}

uint64_t MTPathStatesBasic::MTPathStatesBasic(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, char a5, int a6)
{
  v11 = a4;
  v12[0] = a3;
  *a1 = &unk_2A2413910;
  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 36) = a6;
  *(a1 + 40) = a2;
  v7 = (a1 + 280);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 328) = MTSLGLogger::createLogger(a1);
  std::vector<MTParserPath>::reserve(v7, 0x20uLL);
  v8 = *(a1 + 288);
  v9 = 32;
  do
  {
    if (v8 >= *(a1 + 296))
    {
      v8 = std::vector<MTParserPath>::__emplace_back_slow_path<MTParserType const&,MTParserOptions const&,MTSLGLogger *&>(v7, v12, &v11, (a1 + 328));
    }

    else
    {
      MTParserPath::MTParserPath(v8, v12[0], v11, *(a1 + 328));
      v8 += 600;
      *(a1 + 288) = v8;
    }

    *(a1 + 288) = v8;
    --v9;
  }

  while (v9);
  (*(*a1 + 16))(a1);
  (*(*a1 + 24))(a1);
  return a1;
}

void sub_29D3C7A34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MTParserPath>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<MTParserPath>::reserve(void *result, unint64_t a2)
{
  if (0x2FC962FC962FC963 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x6D3A06D3A06D3BLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTParserPath>>(result, a2);
    }

    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_29D3C7B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MTParserPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void MTPathStatesBasic::~MTPathStatesBasic(MTPathStatesBasic *this)
{
  *this = &unk_2A2413910;
  v2 = *(this + 41);
  if (v2)
  {
    MTSLGLogger::~MTSLGLogger(v2);
    MEMORY[0x29ED547D0]();
    *(this + 41) = 0;
  }

  v3 = (this + 280);
  std::vector<MTParserPath>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void MTPathStatesBasic::clear(MTPathStatesBasic *this)
{
  v2 = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = 32;
  do
  {
    MTParserPath::clear((*(this + 35) + v2));
    v2 += 600;
    --v3;
  }

  while (v3);
  *(this + 38) = 0;
  *(this + 39) = 0;
}

double MTPathStatesBasic::initializeParams(MTPathStatesBasic *this)
{
  MTParameterFactory::initFingerTipOffsetParams(this + 180, *(this + 6), *(this + 7), *(this + 32));
  MTParameterFactory::initPathFilterParams(this + 48, *(this + 6), *(this + 7), *(this + 32), *(this + 5), *(this + 9));
  v2 = *(this + 6);
  v3 = *(this + 7);
  v4 = *(this + 32);
  v5 = *(this + 5);

  return MTParameterFactory::initTouchZoneParams(this + 244, v2, v3, v4);
}

uint64_t MTPathStatesBasic::checkForFingersInZones(uint64_t this)
{
  if (*(this + 244) == 1)
  {
    v1 = 0;
    v2 = (*(this + 280) + 880);
    v3 = 31;
    do
    {
      if ((*(v2 - 59) - 3) <= 1)
      {
        v1 |= *v2;
      }

      v2 += 150;
      --v3;
    }

    while (v3);
  }

  else
  {
    v1 = 0;
  }

  *(this + 324) = v1;
  return this;
}

void MTPathStatesBasic::updateFastestFingerSpeed(MTPathStatesBasic *this)
{
  v2 = 0;
  v3 = (this + 304);
  *(this + 38) = 0;
  *(this + 39) = 0;
  v4 = 0.0;
  v5 = 1;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    v11 = *(this + 35);
    v12 = v11 + v2;
    if (v5 == *(v11 + v2 + 640) && *(v12 + 672) > 0.0 && MTParserPath::isFingerContact((v12 + 600)))
    {
      v13 = (v11 + v2);
      if ((*(v11 + v2 + 644) - 3) <= 2)
      {
        v14 = v13[284];
        v15 = v13[282];
        v16 = v13[283];
        v6 = v6 + v14;
        v4 = v4 + (v14 * v14);
        v9 = v9 + fabsf(v15);
        v8 = v8 + fabsf(v16);
        v7 = v7 + (v15 * v15);
        v10 = v10 + (v16 * v16);
        v17 = hypotf(v13[175], v13[176]);
        if (v17 > *(this + 79))
        {
          *(this + 79) = v17;
        }
      }
    }

    ++v5;
    v2 += 600;
  }

  while (v5 != 32);
  if (v6 > 0.0)
  {
    *v3 = v4 / v6;
  }

  if (v9 > 0.0)
  {
    *(this + 77) = v7 / v9;
  }

  if (v8 > 0.0)
  {
    *(this + 78) = v10 / v8;
  }
}

uint64_t MTPathStatesBasic::flushStuckContacts(MTPathStatesBasic *this)
{
  v2 = 0;
  v3 = 632;
  v4 = 31;
  do
  {
    v5 = *(this + 35);
    if (MTContact_isActive())
    {
      v6 = *(this + 1);
      if (*(v5 + v3) != v6)
      {
        MTParserPath::flushLiftoffAt((*(this + 35) + v3 - 32), v6);
        v2 = 1;
      }
    }

    v3 += 600;
    --v4;
  }

  while (v4);
  return v2 & 1;
}

uint64_t MTPathStatesBasic::forceFingerUniquenessAcrossHands(uint64_t this)
{
  v1 = 0;
  v11 = *MEMORY[0x29EDCA608];
  memset(v10, 0, sizeof(v10));
  v2 = *(this + 280);
  do
  {
    v3 = v2 + 600 * v1;
    if ((*(v3 + 44) - 1) <= 5)
    {
      v4 = *(v3 + 48);
      if (*(v10 + v4))
      {
        v5 = v4 - 1 > 4;
      }

      else
      {
        v5 = 1;
      }

      if (!v5)
      {
        v6 = v4;
        v7 = 1;
        while (v6 != 5)
        {
          v8 = *(v10 + v6++);
          --v7;
          if (!v8)
          {
            v4 -= v7;
            *(v3 + 48) = v4;
            break;
          }
        }
      }

      ++*(v10 + v4);
    }

    ++v1;
  }

  while (v1 != 32);
  v9 = *MEMORY[0x29EDCA608];
  return this;
}

void MTPathStatesBasic::expandAndFilterPackedContacts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  *(a1 + 320) = 0;
  if (a2)
  {
    (*(*a1 + 40))(a1, a2, a3);
    if (a3 >= 1)
    {
      v6 = a3;
      v7 = a2;
      do
      {
        v8 = *(v7 + 16);
        if ((v8 & 0x80000000) != 0 || (v9 = *(a1 + 280), 0x2FC962FC962FC963 * ((*(a1 + 288) - v9) >> 3) <= v8))
        {
          v11 = MTLoggingPlugin();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v20 = v8;
            _os_log_error_impl(&dword_29D381000, v11, OS_LOG_TYPE_ERROR, "Invalid path_id %d, dropping contact", buf, 8u);
          }
        }

        else
        {
          MTParserPath::updateCurPrevContactsWith((v9 + 600 * v8), v7, *(a1 + 40), (a1 + 244), *(a1 + 8));
          v10 = *(a1 + 280) + 600 * v8;
          if (*(v10 + 44) == 1 || !*(v10 + 140))
          {
            ++*(a1 + 320);
          }
        }

        v7 += 96;
        --v6;
      }

      while (v6);
    }

    (*(*a1 + 48))(a1);
    (*(*a1 + 56))(a1, a2, a3);
  }

  (*(*a1 + 64))(a1);
  MTPathStatesBasic::updateFastestFingerSpeed(a1);
  if ((*(a1 + 24) - 1000) <= 0xBB7)
  {
    MTPathStatesBasic::forceFingerUniquenessAcrossHands(a1);
  }

  if (a3 >= 1)
  {
    v12 = a3;
    v13 = (a2 + 16);
    do
    {
      v15 = *v13;
      v13 += 24;
      v14 = v15;
      if ((v15 & 0x80000000) != 0 || (v16 = *(a1 + 280), 0x2FC962FC962FC963 * ((*(a1 + 288) - v16) >> 3) <= v14))
      {
        v17 = MTLoggingPlugin();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v20 = v14;
          _os_log_error_impl(&dword_29D381000, v17, OS_LOG_TYPE_ERROR, "Invalid path_id %d, dropping contact", buf, 8u);
        }
      }

      else
      {
        MTParserPath::constructPathChangeEventMask((v16 + 600 * v14));
      }

      --v12;
    }

    while (v12);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void MTPathStatesBasic::clearExistingPathLiftoffsAndMasks(MTPathStatesBasic *this)
{
  v2 = 0;
  v3 = *(this + 35);
  v4 = 32;
  do
  {
    if (*(v3 + v2 + 44) == 7)
    {
      MTParserPath::clear((v3 + v2));
      v3 = *(this + 35);
    }

    *(v3 + v2 + 364) = 0;
    v2 += 600;
    --v4;
  }

  while (v4);
}

uint64_t MTPathStatesBasic::unpackContactFrame(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a1 + 1);
  a1[1] = a4;
  *(a1 + 2) = v7;
  MTPathStatesBasic::clearExistingPathLiftoffsAndMasks(a1);
  if (a2)
  {
    MTPathStatesBasic::expandAndFilterPackedContacts(a1, a2, a3);
  }

  return MTPathStatesBasic::flushStuckContacts(a1);
}

uint64_t MTPathStatesBasic::calculateCentroidOfPaths(uint64_t a1, float32x2_t *a2, double a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = 1032;
  v10 = *(a1 + 28) & 0x20;
  v11 = 0;
  do
  {
    v12 = *(a1 + 280);
    v13 = (v12 + v9);
    if (v8 == *(v12 + v9 - 392) && v13[-45].f32[0] > 0.0)
    {
      v14 = *v13;
      if (MTParserPath::isFingerContact(&v13[-54]) || v10)
      {
        ++v5;
        a3 = COERCE_DOUBLE(vadd_f32(v14, *(v12 + v9 - 32)));
        v11 = vadd_f32(v11, *&a3);
        if ((*(v12 + v9 - 388) - 3) <= 1)
        {
          ++v6;
          v7 = vadd_f32(v7, *&a3);
        }
      }
    }

    ++v8;
    v9 += 600;
  }

  while (v8 != 32);
  if (v6 > 0)
  {
    if (!a2)
    {
      return 1;
    }

LABEL_11:
    *&a3 = v6;
    *a2 = vdiv_f32(v7, vdup_lane_s32(*&a3, 0));
    return 1;
  }

  if (v5 >= 1)
  {
    v6 = v5;
    v7 = v11;
    if (!a2)
    {
      return 1;
    }

    goto LABEL_11;
  }

  return 0;
}

uint64_t MTPathStatesBasic::numFingerSlidWhileEngaged(MTPathStatesBasic *this)
{
  result = 0;
  v3 = *(this + 35) + 600;
  v4 = 31;
  do
  {
    v5 = *(v3 + 44);
    if (v5 == 7)
    {
      v6 = 144;
    }

    else
    {
      v6 = 48;
    }

    v7 = *(v3 + v6) - 1;
    if ((v5 - 3) <= 1)
    {
      v8 = v7 >= 4;
      v9 = v7 == 4;
    }

    else
    {
      v8 = 1;
      v9 = 0;
    }

    if (v9 || !v8)
    {
      result = result + *(v3 + 368);
    }

    v3 += 600;
    --v4;
  }

  while (v4);
  return result;
}

void std::vector<MTParserPath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 75;
      v7 = v4 - 75;
      do
      {
        (**v7)(v7);
        v6 -= 75;
        v8 = v7 == v2;
        v7 -= 75;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTParserPath>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x6D3A06D3A06D3BLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTParserPath>,MTParserPath*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a4;
    v8 = a2;
    do
    {
      *v4 = &unk_2A2411768;
      result = memcpy((v4 + 8), v8 + 1, 0x11CuLL);
      *(v4 + 296) = &unk_2A2413860;
      v11 = *(v8 + 20);
      v10 = *(v8 + 21);
      *(v4 + 304) = *(v8 + 19);
      *(v4 + 320) = v11;
      *(v4 + 336) = v10;
      v12 = *(v8 + 25);
      v13 = *(v8 + 22);
      v14 = *(v8 + 23);
      *(v4 + 384) = *(v8 + 24);
      *(v4 + 400) = v12;
      *(v4 + 352) = v13;
      *(v4 + 368) = v14;
      v15 = *(v8 + 29);
      v17 = *(v8 + 26);
      v16 = *(v8 + 27);
      *(v4 + 448) = *(v8 + 28);
      *(v4 + 464) = v15;
      *(v4 + 416) = v17;
      *(v4 + 432) = v16;
      v18 = *(v8 + 33);
      v20 = *(v8 + 30);
      v19 = *(v8 + 31);
      *(v4 + 512) = *(v8 + 32);
      *(v4 + 528) = v18;
      *(v4 + 480) = v20;
      *(v4 + 496) = v19;
      v22 = *(v8 + 35);
      v21 = *(v8 + 36);
      v23 = *(v8 + 34);
      *(v4 + 592) = v8[74];
      *(v4 + 560) = v22;
      *(v4 + 576) = v21;
      *(v4 + 544) = v23;
      v8 += 75;
      v4 += 600;
      v7 += 600;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v24 = v6;
      do
      {
        result = (**v6)(v6);
        v6 += 75;
        v24 += 75;
      }

      while (v6 != a3);
    }
  }

  return result;
}

uint64_t std::__split_buffer<MTParserPath>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 600;
    (**(i - 600))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<MTParserPath>::__emplace_back_slow_path<MTParserType const&,MTParserOptions const&,MTSLGLogger *&>(uint64_t a1, unsigned int *a2, unsigned int *a3, void *a4)
{
  v4 = 0x2FC962FC962FC963 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x6D3A06D3A06D3ALL)
  {
    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x5F92C5F92C5F92C6 * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x5F92C5F92C5F92C6 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2FC962FC962FC963 * ((*(a1 + 16) - *a1) >> 3)) >= 0x369D0369D0369DLL)
  {
    v8 = 0x6D3A06D3A06D3ALL;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTParserPath>>(a1, v8);
  }

  v15 = 0;
  v16 = 600 * v4;
  v17 = (600 * v4);
  MTParserPath::MTParserPath(600 * v4, *a2, *a3, *a4);
  *&v17 = 600 * v4 + 600;
  v9 = *(a1 + 8);
  v10 = 600 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTParserPath>,MTParserPath*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<MTParserPath>::~__split_buffer(&v15);
  return v14;
}

void sub_29D3C88F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTParserPath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void MTFingerToPathMap::MTFingerToPathMap(MTFingerToPathMap *this, char a2)
{
  *this = &unk_2A2413990;
  *(this + 76) = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 103) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 94) = 0;
}

{
  *this = &unk_2A2413990;
  *(this + 76) = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 103) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 94) = 0;
}

double MTFingerToPathMap::clearFingerPathMappings(MTFingerToPathMap *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 103) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 94) = 0;
  return result;
}

uint64_t MTFingerToPathMap::getInnermostTouchingPath(MTFingerToPathMap *this, const MTPathStates *a2)
{
  v2 = *(this + 20);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + v2 + 2);
  }

  return *(a2 + 35) + 600 * v3;
}

uint64_t MTFingerToPathMap::getNextInnermostTouchingPath(MTFingerToPathMap *this, const MTPathStates *a2)
{
  v2 = *(this + 21);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + v2 + 2);
  }

  return *(a2 + 35) + 600 * v3;
}

uint64_t MTFingerToPathMap::getOutermostTouchingPath(MTFingerToPathMap *this, const MTPathStates *a2)
{
  v2 = *(this + 22);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + v2 + 2);
  }

  return *(a2 + 35) + 600 * v3;
}

uint64_t MTFingerToPathMap::getInnermostInRangePath(MTFingerToPathMap *this, const MTPathStates *a2)
{
  v2 = *(this + 23);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + v2 + 2);
  }

  return *(a2 + 35) + 600 * v3;
}

uint64_t MTFingerToPathMap::getOutermostInRangePath(MTFingerToPathMap *this, const MTPathStates *a2)
{
  v2 = *(this + 24);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + v2 + 2);
  }

  return *(a2 + 35) + 600 * v3;
}

uint64_t MTFingerToPathMap::getParserPathForFingerID(MTFingerToPathMap *this, unsigned int a2, const MTPathStates *a3)
{
  if (a2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + a2 + 2);
  }

  return *(a3 + 35) + 600 * v3;
}

uint64_t MTFingerToPathMap::getMutablePathForFingerID(MTFingerToPathMap *this, unsigned int a2, MTPathStates *a3)
{
  if (a2 > 0xF)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + a2 + 2);
  }

  return *(a3 + 35) + 600 * v3;
}

uint64_t MTFingerToPathMap::updateMaxFingersTouching(uint64_t this)
{
  v1 = *(this + 101);
  if (v1 > *(this + 102) || !*(this + 101))
  {
    *(this + 102) = v1;
  }

  return this;
}

uint64_t MTFingerToPathMap::updateFingerPathMappings(uint64_t this, const MTPathStates *a2)
{
  v3 = this;
  *(this + 8) = 0u;
  v4 = this + 8;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 24) = 0u;
  *(this + 103) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 94) = 0;
  v5 = 1;
  v6 = 672;
  do
  {
    v7 = *(a2 + 35);
    v8 = (v7 + v6);
    if (v5 != *(v7 + v6 - 32) || *v8 <= 0.0)
    {
      goto LABEL_31;
    }

    v9 = *(v7 + v6 - 24);
    if (v9 <= 0xF)
    {
      *(v4 + 4 * v9) = v5;
    }

    v10 = (v8 - 18);
    this = MTParserPath::isPalmContact((v8 - 18));
    if (this)
    {
      ++*(v3 + 104);
      goto LABEL_31;
    }

    this = MTParserPath::isEdgeContact(v10);
    if (this)
    {
      ++*(v3 + 103);
      goto LABEL_31;
    }

    if (*(v3 + 76) == 1)
    {
      this = MTParserPath::isFingerContact(v10);
      if (this)
      {
        goto LABEL_14;
      }

      if (*(v3 + 76))
      {
        goto LABEL_31;
      }
    }

    this = MTParserPath::isFingerOrRestingContact(v10);
    if (!this)
    {
      goto LABEL_31;
    }

LABEL_14:
    ++*(v3 + 100);
    v11 = *(v3 + 92);
    if (!v11 || v9 < v11)
    {
      *(v3 + 92) = v9;
    }

    v12 = *(v3 + 96);
    if (!v12 || v9 > v12)
    {
      *(v3 + 96) = v9;
    }

    if ((*(v7 + v6 - 28) - 3) <= 1)
    {
      ++*(v3 + 101);
      v13 = *(v3 + 80);
      if (v13 && v9 >= v13)
      {
        v14 = *(v3 + 84);
        if (v14 && v9 < v14)
        {
          *(v3 + 84) = v9;
          goto LABEL_27;
        }
      }

      else
      {
        *(v3 + 80) = v9;
        *(v3 + 84) = v13;
LABEL_27:
        *(v3 + 72) = *(v7 + v6 - 20);
      }

      v15 = *(v3 + 88);
      if (!v15 || v9 > v15)
      {
        *(v3 + 88) = v9;
        *(v3 + 72) = *(v7 + v6 - 20);
      }
    }

LABEL_31:
    ++v5;
    v6 += 600;
  }

  while (v5 != 32);
  v16 = *(v3 + 101);
  if (*(v3 + 102) <= (v16 - 1))
  {
    *(v3 + 102) = v16;
  }

  return this;
}

void MTABCLogger::MTABCLogger(MTABCLogger *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  operator new();
}

void MTABCLogger::~MTABCLogger(MTABCLogger **this)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      MTABCLogger::endSession(this, *(v3 + 4), 0);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }

  v7 = this[3];
  if (v7)
  {

    v8 = this[3];
    if (v8)
    {
      MEMORY[0x29ED547D0](v8, 0x80C40803F642BLL);
    }

    this[3] = 0;
  }

  v9 = this[5];
  if (v9)
  {
    dlclose(v9);
  }

  std::__tree<MTABCSessionHandler *>::destroy(this, this[1]);
}

void MTABCLogger::endSession(uint64_t a1, id *a2, int a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v15 = a2;
  if (a2)
  {
    v6 = MTLoggingPlugin();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a2;
      *buf = 136315906;
      v17 = "";
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = "endSession";
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Ending ABC session %{public}@", buf, 0x2Au);
    }

    v8 = std::__tree<MTABCSessionHandler *>::__erase_unique<MTABCSessionHandler *>(a1, &v15);
    if (*(a1 + 16))
    {
      if (!a3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = *(a1 + 32);
      v8 = MTUnregisterFullFrameCallback();
      if (!a3)
      {
LABEL_11:
        MTABCLogger::_freeSession(v8, v15);
        goto LABEL_12;
      }
    }

    v10 = [v15[3] objectAtIndexedSubscript:0];
    v11 = MEMORY[0x29EDBA070];
    [objc_msgSend(MEMORY[0x29EDB8DB0] "date")];
    [v10 setObject:objc_msgSend(v11 forKeyedSubscript:{"numberWithDouble:"), @"CaptureEndTimestamp"}];
    v12 = MTLoggingPlugin();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *v15;
      *buf = 136315906;
      v17 = "";
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = "endSession";
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_29D381000, v12, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Snapshotting ABC session %{public}@", buf, 0x2Au);
    }

    v8 = [*(*(a1 + 24) + 8) snapshotWithSignature:v15[2] duration:v15[3] events:0 payload:0 actions:&__block_literal_global_2 reply:0.0];
    goto LABEL_11;
  }

LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
}

uint64_t MTABCLogger::createLogger()
{
  if (MGGetBoolAnswer())
  {
    operator new();
  }

  return 0;
}

void MTABCLogger::_freeSession(uint64_t a1, id *a2)
{
  if (a2)
  {

    JUMPOUT(0x29ED547D0);
  }
}

void MTABCLogger::_dumpSessionToFile(uint64_t a1, uint64_t a2)
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  [v3 setObject:*(a2 + 24) forKeyedSubscript:@"events"];
  v4 = [(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:@"MTABCLogger.json"];
  v11 = 0;
  v5 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v3 options:1 error:&v11];
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    v8 = v4;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = ___ZN11MTABCLogger18_dumpSessionToFileEP19MTABCSessionHandler_block_invoke;
    block[3] = &unk_29F34CB38;
    block[4] = v4;
    block[5] = v6;
    dispatch_async(global_queue, block);
  }
}

void ___ZN11MTABCLogger18_dumpSessionToFileEP19MTABCSessionHandler_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = MTLoggingPlugin();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "_dumpSessionToFile_block_invoke";
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&dword_29D381000, v2, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Writing ABC session %{public}@", &v5, 0x2Au);
  }

  [*(a1 + 40) writeToFile:*(a1 + 32) options:0 error:0];

  v4 = *MEMORY[0x29EDCA608];
}

void MTABCLogger::_fullFrameCallback(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v25[2] = *MEMORY[0x29EDCA608];
  v4 = a4 + 1;
  v5 = *a4;
  if (*a4 != a4 + 1)
  {
    v7 = a3;
    do
    {
      v8 = v5[4];
      v9 = [*(v8 + 24) objectAtIndexedSubscript:0];
      v10 = [v9 objectForKeyedSubscript:@"Frames"];
      v11 = [objc_msgSend(MEMORY[0x29EDB8DA0] dataWithBytes:a2 length:{v7), "base64EncodedStringWithOptions:", 0}];
      v12 = [v9 objectForKeyedSubscript:@"CaptureBeginTimestamp"];
      if (!v12)
      {
        v13 = MEMORY[0x29EDBA070];
        [objc_msgSend(MEMORY[0x29EDB8DB0] "date")];
        v12 = [v13 numberWithDouble:?];
        [v9 setObject:v12 forKeyedSubscript:@"CaptureBeginTimestamp"];
      }

      [v12 doubleValue];
      v15 = v14;
      [objc_msgSend(MEMORY[0x29EDB8DB0] "date")];
      v17 = v16 - v15;
      v18 = *(v8 + 8);
      if (v18 == 0.0 || v17 <= v18)
      {
        v24[0] = @"bytes";
        v24[1] = @"timestamp";
        v25[0] = v11;
        v25[1] = [MEMORY[0x29EDBA070] numberWithDouble:v17];
        [v10 addObject:{objc_msgSend(MEMORY[0x29EDB8DC0], "dictionaryWithObjects:forKeys:count:", v25, v24, 2)}];
      }

      v20 = v5[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v5[2];
          v22 = *v21 == v5;
          v5 = v21;
        }

        while (!v22);
      }

      v5 = v21;
    }

    while (v21 != v4);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void MTABCLogger::startSession(MTABCLogger *this, const char *a2, double a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = MTLoggingPlugin();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315650;
    *&buf[1] = "";
    v5 = 2080;
    v6 = "";
    v7 = 2080;
    v8 = "startSession";
    _os_log_impl(&dword_29D381000, v3, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Started new ABC session", buf, 0x20u);
  }

  operator new();
}

void ___ZN11MTABCLogger10endSessionEP19MTABCSessionHandlerb_block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = MTLoggingPlugin();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315906;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = "endSession_block_invoke";
    v11 = 2114;
    v12 = a2;
    _os_log_impl(&dword_29D381000, v3, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s ABC response: %{public}@", &v5, 0x2Au);
  }

  v4 = *MEMORY[0x29EDCA608];
}

void std::__tree<MTABCSessionHandler *>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<MTABCSessionHandler *>::destroy(a1, *a2);
    std::__tree<MTABCSessionHandler *>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<MTABCSessionHandler *>::__emplace_unique_key_args<MTABCSessionHandler *,MTABCSessionHandler * const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<MTABCSessionHandler *>::__erase_unique<MTABCSessionHandler *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<MTABCSessionHandler *>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<MTABCSessionHandler *>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{

  return [v36 countByEnumeratingWithState:&a21 objects:&a36 count:16];
}

uint64_t MTForceBehavior::GetNull(MTForceBehavior *this)
{
  if (MTForceBehavior::nullDispatchOnce != -1)
  {
    MTForceBehavior::GetNull();
  }

  return MTForceBehavior::nullForceBehavior;
}

void MTForceBehavior::MTForceBehavior(MTForceBehavior *this)
{
  *(this + 4) = 0;
  *this = 0;
  *(this + 5) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
}

{
  *(this + 4) = 0;
  *this = 0;
  *(this + 5) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
}

uint64_t MTForceBehavior::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 120), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 48), *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    *(a1 + 12) = *(a2 + 12);
  }

  return a1;
}

BOOL MTForceBehavior::behaviorEquals(MTForceBehavior *this, const MTForceBehavior *a2)
{
  if (*this != *a2)
  {
    return 0;
  }

  if (*(this + 2) != *(a2 + 2) || *(this + 1) != *(a2 + 1) || *(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if ((v5 >> 2) >= 1)
  {
    v6 = *(a2 + 3);
    v7 = (v5 >> 2) & 0x7FFFFFFF;
    while (*v4 == *v6)
    {
      ++v4;
      ++v6;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v8 = *(this + 12);
  v9 = *(this + 13) - v8;
  if (v9)
  {
    v10 = 0;
    v11 = v9 >> 2;
    v12 = 1;
    while (*(v8 + 4 * v10) == *(*(a2 + 12) + 4 * v10))
    {
      v10 = v12;
      v13 = v11 > v12++;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  v14 = *(this + 15);
  v15 = *(this + 16) - v14;
  if (v15)
  {
    v16 = 0;
    v17 = v15 >> 2;
    v18 = 1;
    while (*(v14 + 4 * v16) == *(*(a2 + 15) + 4 * v16))
    {
      v16 = v18;
      v13 = v17 > v18++;
      if (!v13)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

LABEL_17:
  if (std::operator!=[abi:ne200100]<int,std::allocator<int>>(this + 48, a2 + 48) || std::operator!=[abi:ne200100]<int,std::allocator<int>>(this + 72, a2 + 72))
  {
    return 0;
  }

  return *(this + 12) == *(a2 + 12);
}

BOOL std::operator!=[abi:ne200100]<int,std::allocator<int>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 != *(a2 + 8) - v5 || memcmp(v2, v5, v4) != 0;
}

uint64_t MTForceBehavior::forceSourceFingerCount(uint64_t this)
{
  v1 = this;
  LODWORD(this) = 0;
  v2 = *(v1 + 4);
  v3 = 16;
  do
  {
    if ((v2 & v3) != 0)
    {
      this = (this + 1);
    }

    else
    {
      this = this;
    }

    v4 = v3 >= 2;
    v3 >>= 1;
  }

  while (v4);
  return this;
}

uint64_t MTForceBehavior::whichButtonBehavior(MTForceBehavior *this)
{
  v1 = *this - 1;
  if (v1 > 0x10)
  {
    return 0;
  }

  else
  {
    return dword_29D3D7568[v1];
  }
}

uint64_t MTForceBehavior::resizeToNumStages(MTForceBehavior *this, unsigned int a2)
{
  v4 = a2 - *(this + 4);
  std::vector<float>::resize(this + 1, 2 * a2 - 2);
  std::vector<float>::resize(this + 4, a2);
  std::vector<float>::resize(this + 5, a2);
  *(this + 4) = a2;
  return v4;
}

BOOL MTForceBehavior::addStage(MTForceBehavior *a1, int a2, int a3, int a4, float a5, float a6)
{
  if (MTForceBehavior::resizeToNumStages(a1, a2 + 1) > 1)
  {
    return 0;
  }

  if (a2 >= 1)
  {
    v13 = *(a1 + 3) + 4 * (2 * a2);
    *(v13 - 8) = a6;
    *(v13 - 4) = a5;
  }

  result = MTForceBehavior::isThresholdLadderMonotonic(a1 + 3);
  if (result)
  {
    *(*(a1 + 12) + 4 * a2) = a3;
    *(*(a1 + 15) + 4 * a2) = a4;
    return 1;
  }

  return result;
}

BOOL MTForceBehavior::isThresholdLadderMonotonic(void *a1)
{
  v1 = a1[1] - *a1;
  if ((v1 & 4) != 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 >> 2) - 1;
  v4 = v3;
  v5 = -(v3 & ~(v3 >> 31));
  v6 = (*a1 + 4);
  while (v5 != v2)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    --v2;
    ++v6;
    if (v7 > v8)
    {
      return 0;
    }
  }

  return -v2 >= v4;
}

uint64_t MTForceBehavior::print(MTForceBehavior *this)
{
  v2 = 0;
  v3 = 16;
  do
  {
    if ((v3 & *(this + 1)) != 0)
    {
      ++v2;
    }

    v4 = v3 > 1;
    v3 >>= 1;
  }

  while (v4);
  result = printf("MTForceBehavior type = %d sources = 0x%x fingers = %d\n", *this, *(this + 1), v2);
  v6 = *(this + 12);
  if ((*(this + 13) - v6) >= 5)
  {
    v7 = 0;
    v8 = 1;
    v9 = 1;
    do
    {
      v10 = *(this + 3);
      if (v8 >= (((*(this + 4) - v10) >> 2) + 2) >> 1)
      {
        break;
      }

      result = printf("  Stage %d, Entry[thresh=%f waveform=%d], Exit[ thresh=%f waveform=%d]\n", v9, *(v10 + 4 * (v7 + 1)), *(v6 + 4 * v8), *(v10 + 4 * v7), *(*(this + 15) + 4 * v8));
      v6 = *(this + 12);
      v7 += 2;
      v8 = ++v9;
    }

    while (v9 < ((*(this + 13) - v6) >> 2));
  }

  return result;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void MTForceBehaviorConfiguration::MTForceBehaviorConfiguration(MTForceBehaviorConfiguration *this)
{
  std::vector<std::vector<MTForceBehavior>>::vector[abi:ne200100](this, 6uLL);
}

{
  std::vector<std::vector<MTForceBehavior>>::vector[abi:ne200100](this, 6uLL);
}

uint64_t MTForceBehaviorConfiguration::addDefaultBehavior(MTForceBehaviorConfiguration *this, const MTForceBehavior *a2)
{
  v4 = *this + 24 * MTForceBehavior::forceSourceFingerCount(a2);
  result = std::vector<MTForceBehavior>::push_back[abi:ne200100](v4, a2);
  *(*(v4 + 8) - 136) = 1;
  *(this + 24) = 1;
  return result;
}

uint64_t std::vector<MTForceBehavior>::push_back[abi:ne200100](uint64_t a1, const MTForceBehavior *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<MTForceBehavior>::__emplace_back_slow_path<MTForceBehavior const&>(a1, a2);
  }

  else
  {
    MTForceBehavior::MTForceBehavior(*(a1 + 8), a2);
    result = v3 + 144;
    *(a1 + 8) = v3 + 144;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t MTForceBehaviorConfiguration::pushBehavior(MTForceBehaviorConfiguration *this, const MTForceBehavior *a2)
{
  v4 = MTForceBehavior::forceSourceFingerCount(a2);
  result = std::vector<MTForceBehavior>::push_back[abi:ne200100](*this + 24 * v4, a2);
  *(this + 24) = 1;
  return result;
}

void MTForceBehaviorConfiguration::popBehavior(MTForceBehaviorConfiguration *this, const MTForceBehavior *a2)
{
  v4 = *this + 24 * MTForceBehavior::forceSourceFingerCount(a2);
  if (MTForceBehavior::behaviorEquals(a2, (*(v4 + 8) - 144)))
  {
    std::vector<MTForceBehavior>::__base_destruct_at_end[abi:ne200100](v4, (*(v4 + 8) - 144));
  }

  *(this + 24) = 1;
}

void MTForceBehaviorConfiguration::clearBehaviors(MTForceBehaviorConfiguration *this)
{
  for (i = 0; i != 6; ++i)
  {
    v3 = (*this + 24 * i);
    v4 = *v3;
    while (1)
    {
      v5 = v3[1];
      if (v4 == v5)
      {
        break;
      }

      if (v4 + 18 == v5)
      {
        v7 = v4;
      }

      else
      {
        v6 = v4;
        do
        {
          v7 = (v6 + 144);
          MTForceBehavior::operator=(v6, v6 + 144);
          v8 = v6 + 288;
          v6 += 144;
        }

        while (v8 != v5);
      }

      std::vector<MTForceBehavior>::__base_destruct_at_end[abi:ne200100](v3, v7);
    }
  }

  *(this + 24) = 1;
}

void MTForceBehaviorConfiguration::clearNonDefaultBehaviors(MTForceBehaviorConfiguration *this)
{
  for (i = 0; i != 6; ++i)
  {
    v3 = (*this + 24 * i);
    v4 = *v3;
LABEL_3:
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*(v4 + 8) != 1)
      {
        if (v4 + 144 == v5)
        {
          v7 = v4;
        }

        else
        {
          v6 = v4;
          do
          {
            v7 = (v6 + 144);
            MTForceBehavior::operator=(v6, v6 + 144);
            v8 = v6 + 288;
            v6 += 144;
          }

          while (v8 != v5);
        }

        std::vector<MTForceBehavior>::__base_destruct_at_end[abi:ne200100](v3, v7);
        goto LABEL_3;
      }

      v4 += 144;
    }
  }

  *(this + 24) = 1;
}

MTForceBehavior *MTForceBehaviorConfiguration::matchingBehaviorInStack(MTForceBehavior *result, MTForceBehavior **a2, int a3)
{
  v3 = a2[1];
  if (v3 == *a2)
  {
    return MTForceBehavior::GetNull(result);
  }

  v4 = 0;
  result = (v3 - 144);
  while (1)
  {
    v5 = *(result + 2);
    v6 = 1;
    if (v5 != 2 && (v4 & (v5 != 1)) == 0)
    {
      v6 = v4;
      if ((*(result + 1) & a3) != 0)
      {
        break;
      }
    }

    v4 = v6;
    v7 = result == *a2;
    result = (result - 144);
    if (v7)
    {
      return MTForceBehavior::GetNull(result);
    }
  }

  return result;
}

MTForceBehavior *MTForceBehaviorConfiguration::firstFingerBehavior(MTForceBehaviorConfiguration *this)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) < 2)
  {
    return MTForceBehavior::GetNull(this);
  }

  else
  {
    return MTForceBehaviorConfiguration::matchingBehaviorInStack(this, (*this + 24), 32);
  }
}

MTForceBehavior *MTForceBehaviorConfiguration::secondFingerBehavior(MTForceBehaviorConfiguration *this)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) < 2)
  {
    return MTForceBehavior::GetNull(this);
  }

  else
  {
    return MTForceBehaviorConfiguration::matchingBehaviorInStack(this, (*this + 24), 64);
  }
}

MTForceBehavior *MTForceBehaviorConfiguration::collectiveBehavior(MTForceBehaviorConfiguration *this, int a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 3) <= a2)
  {
    return MTForceBehavior::GetNull(this);
  }

  else
  {
    return MTForceBehaviorConfiguration::matchingBehaviorInStack(this, (*this + 24 * a2), 128);
  }
}

void MTForceClickHistory::MTForceClickHistory(MTForceClickHistory *this, float a2)
{
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  MTForceClickHistory::initHistory(this, a2);
}

void sub_29D3CA8C8(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

float MTForceClickHistory::initHistory(MTForceClickHistory *this, float a2)
{
  v3 = (this + 8);
  *(this + 2) = *(this + 1);
  v4 = (this + 32);
  *(this + 5) = *(this + 4);
  *this = 0;
  v8 = a2 * 350.0;
  v9 = a2 * 550.0;
  v5 = 3;
  do
  {
    std::vector<float>::push_back[abi:ne200100](v3, &v9);
    std::vector<float>::push_back[abi:ne200100](v4, &v8);
    --v5;
  }

  while (v5);
  v7 = v8;
  result = v9;
  *this = v9;
  *(this + 1) = v7;
  return result;
}

void MTForceClickHistory::~MTForceClickHistory(MTForceClickHistory *this)
{
  v2 = *(this + 1);
  *(this + 2) = v2;
  v3 = *(this + 4);
  *(this + 5) = v3;
  *this = 0;
  if (v3)
  {
    operator delete(v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void *MTForceClickHistory::clearHistory(void *this)
{
  this[2] = this[1];
  this[5] = this[4];
  *this = 0;
  return this;
}

float MTForceClickHistory::updateForceArray(float a1, uint64_t a2, const void **a3)
{
  v13 = a1;
  v4 = *a3;
  v5 = a3[1];
  if ((v5 - *a3) >= 0x75)
  {
    v6 = v5 - 4;
    do
    {
      if (v5 != v4 + 4)
      {
        memmove(v4, v4 + 4, v6 - v4);
        v4 = *a3;
      }

      v5 = v6;
      a3[1] = v6;
      v6 -= 4;
    }

    while ((v6 - v4 + 4) > 0x74);
  }

  std::vector<float>::push_back[abi:ne200100](a3, &v13);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v10, *a3, a3[1], (a3[1] - *a3) >> 2);
  v14 = -86;
  std::__sort<std::__less<float,float> &,float *>();
  if (((v11 - v10) >> 2) >= 3)
  {
    v7 = &v10[4 * (((v11 - v10) >> 2) / 2)];
    v8 = ((*(v7 - 1) + *v7) + v7[1]) / 3.0;
LABEL_9:
    v11 = v10;
    operator delete(v10);
    return v8;
  }

  v8 = 0.0;
  if (v10)
  {
    goto LABEL_9;
  }

  return v8;
}

void sub_29D3CAB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTForceManagement::MTForceManagement(uint64_t a1)
{
  MTForceBehavior::MTForceBehavior((a1 + 32));
  std::vector<std::vector<MTForceBehavior>>::vector[abi:ne200100]((a1 + 264), 6uLL);
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  std::vector<MTForceThresholding>::vector[abi:ne200100]((a1 + 464), 0x20uLL);
  *(a1 + 504) = 0x100000001;
  MTForceClickHistory::MTForceClickHistory((a1 + 512), 1.0);
  *(a1 + 592) = 65537;
  *(a1 + 596) = 0;
  MTParameterFactory::initForceThresholdQualifiers(a1 + 296);
  MTParameterFactory::initForceActuationQualifiers(a1 + 432);
  MTForceManagement::clearState(a1, 0);
  return a1;
}

{
  return MTForceManagement::MTForceManagement(a1);
}

void sub_29D3CAC34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MTForceThresholding>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<MTForceBehavior>>::__destroy_vector::operator()[abi:ne200100](va);
  MTForceBehavior::~MTForceBehavior((v2 + 32));
  _Unwind_Resume(a1);
}

void MTForceManagement::MTForceManagement(MTForceManagement *this)
{
  MTForceBehavior::MTForceBehavior((this + 32));
  std::vector<std::vector<MTForceBehavior>>::vector[abi:ne200100](this + 33, 6uLL);
  *(this + 57) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  std::vector<MTForceThresholding>::vector[abi:ne200100](this + 58, 0x20uLL);
  *(this + 63) = 0x100000001;
  MTForceClickHistory::MTForceClickHistory((this + 512), 1.0);
  *(this + 148) = 65537;
  *(this + 298) = 0;
  MTParameterFactory::initForceThresholdQualifiers(this + 296);
  MTParameterFactory::initForceActuationQualifiers(this + 432);
  MTForceManagement::clearState(this, 0);
}

void sub_29D3CAD40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<MTForceThresholding>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<MTForceBehavior>>::__destroy_vector::operator()[abi:ne200100](va);
  MTForceBehavior::~MTForceBehavior((v2 + 32));
  _Unwind_Resume(a1);
}

void MTForceManagement::setForceThresholdQualifiers(uint64_t a1, uint64_t a2)
{
  *(a1 + 296) = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 64);
  *(a1 + 344) = *(a2 + 48);
  *(a1 + 360) = v6;
  *(a1 + 312) = v4;
  *(a1 + 328) = v5;
  v7 = *(a2 + 80);
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  *(a1 + 424) = *(a2 + 128);
  *(a1 + 392) = v8;
  *(a1 + 408) = v9;
  *(a1 + 376) = v7;
  v10 = 472;
  v11 = 31;
  do
  {
    MTForceThresholding::setForceThresholdQualifiers(*(a1 + 464) + v10, a2);
    v10 += 472;
    --v11;
  }

  while (v11);
}

void MTForceManagement::setForceActuationQualifiers(uint64_t a1, _OWORD *a2)
{
  v39 = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  *(a1 + 432) = *a2;
  *(a1 + 448) = v4;
  v5 = MTLoggingPlugin();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 460))
    {
      v6 = "ON";
    }

    else
    {
      v6 = "off";
    }

    v7 = *(a1 + 432);
    v8 = *(a1 + 436);
    v9 = *(a1 + 448);
    v10 = *(a1 + 452);
    v11 = *(a1 + 440);
    v12 = *(a1 + 444);
    v13 = *(a1 + 456);
    v17 = 136317698;
    v18 = "[Debug] ";
    v19 = 2080;
    v20 = "";
    v21 = 2080;
    v22 = "setForceActuationQualifiers";
    v23 = 2082;
    v24 = v6;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    v31 = 2048;
    v32 = v10;
    v33 = 2048;
    v34 = v11;
    v35 = 2048;
    v36 = v12;
    v37 = 2048;
    v38 = v13;
    _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s ForceActuationQualifiers changed  adapt:%{public}s forcespeed:%f stengthMemory:%f strengthFloor:%f strengthAreaGain:%f timedilationMemory:%f timeAreaGin:%f strengthGain:%f", &v17, 0x70u);
  }

  v14 = 472;
  v15 = 31;
  do
  {
    MTForceThresholding::setForceActuationQualifiers(*(a1 + 464) + v14, a2);
    v14 += 472;
    --v15;
  }

  while (v15);
  v16 = *MEMORY[0x29EDCA608];
}

void MTForceManagement::setDisableClickWaveformAdaptation(MTForceManagement *this, char a2)
{
  *(this + 460) = a2 ^ 1;
  v3 = 472;
  v4 = 31;
  do
  {
    MTForceThresholding::setForceActuationQualifiers(*(this + 58) + v3, this + 432);
    v3 += 472;
    --v4;
  }

  while (v4);
}

uint64_t MTForceManagement::setDisableForceThresholdAdaptation(uint64_t this, char a2)
{
  v2 = 0;
  v3 = (*(this + 464) + 4200);
  v4 = vdupq_n_s64(0x1FuLL);
  do
  {
    v5 = vdupq_n_s64(v2);
    v6 = vorrq_s8(v5, xmmword_29D3D65B0);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v4, v6)), 14), 14).u8[0])
    {
      *(v3 - 3304) = a2;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v6)), 14), 14).i8[1])
    {
      *(v3 - 2832) = a2;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v5, xmmword_29D3D65A0)))), 14).i8[2])
    {
      *(v3 - 2360) = a2;
      *(v3 - 1888) = a2;
    }

    v7 = vorrq_s8(v5, xmmword_29D3D6590);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v7)), 14)).i32[1])
    {
      *(v3 - 1416) = a2;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v7)), 14)).i8[5])
    {
      *(v3 - 944) = a2;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v5, xmmword_29D3D6580))))).i8[6])
    {
      *(v3 - 472) = a2;
      *v3 = a2;
    }

    v8 = vorrq_s8(v5, xmmword_29D3D6570);
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v8)), 14), 14).u8[0])
    {
      v3[472] = a2;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v8)), 14), 14).i8[1])
    {
      v3[944] = a2;
    }

    if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v5, xmmword_29D3D6560)))), 14).i8[2])
    {
      v3[1416] = a2;
      v3[1888] = a2;
    }

    v9 = vorrq_s8(v5, xmmword_29D3D6550);
    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v9)), 14)).i32[1])
    {
      v3[2360] = a2;
    }

    if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v9)), 14)).i8[5])
    {
      v3[2832] = a2;
    }

    if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v5, xmmword_29D3D6540))))).i8[6])
    {
      v3[3304] = a2;
      v3[3776] = a2;
    }

    v2 += 16;
    v3 += 7552;
  }

  while (v2 != 32);
  return this;
}

void MTForceManagement::setFirstStageClickPreference(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 504) != a2)
  {
    ClickThresholdMultiplier = MTForceThresholding::getClickThresholdMultiplier(*(a1 + 464), a2);
    MTForceClickHistory::initHistory((a1 + 512), ClickThresholdMultiplier);
  }

  *(a1 + 504) = a2;
  v5 = (*(a1 + 464) + 336);
  v6 = 32;
  do
  {
    *v5 = a2;
    v5 += 118;
    --v6;
  }

  while (v6);
}

uint64_t MTForceManagement::setSecondStageClickPreference(uint64_t result, int a2)
{
  *(result + 508) = a2;
  v2 = (*(result + 464) + 340);
  v3 = 32;
  do
  {
    *v2 = a2;
    v2 += 118;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t MTForceManagement::whichForceButtonActivated(MTForceManagement *this)
{
  if (*this == 1 && (v1 = *(this + 58) + 472 * *(this + 64), *(v1 + 324) >= 1))
  {
    return MTForceBehavior::whichButtonBehavior((v1 + 176));
  }

  else
  {
    return 0;
  }
}

BOOL MTForceManagement::isForceButtonActivated(MTForceManagement *this)
{
  if (*this == 1 && (v1 = *(this + 58) + 472 * *(this + 64), *(v1 + 324) >= 1))
  {
    return MTForceBehavior::whichButtonBehavior((v1 + 176)) > 0;
  }

  else
  {
    return 0;
  }
}

double MTForceManagement::constructForceEvent@<D0>(MTForceManagement *this@<X0>, const MTPathStates *a2@<X3>, int a3@<W1>, int a4@<W2>, uint64_t a5@<X8>)
{
  v7 = *(this + 58) + 472 * a3;
  *(this + 220) = *(v7 + 324);
  v8 = *(a2 + 35);
  v9 = v8 + 600 * a4;
  v10 = (v8 + 600 * a3);
  v11 = MTForceThresholding::preReleaseProgress(v7, (v9 + 296), v10);
  v12 = MTForceThresholding::preActivationProgress(v7, (v9 + 296), v10);
  v13 = MTForceThresholding::postActivationProgress(v7, (v9 + 296), v10);
  v14 = *(this + 55);
  v15 = 0.0;
  if (v14 == *(this + 56) && *(v7 + 176) != 11)
  {
    v15 = *(this + 85);
  }

  v16 = (v11 * (1.0 - v15)) + (v15 * *(this + 61));
  v17 = (v12 * (1.0 - v15)) + (v15 * *(this + 62));
  *(this + 61) = v16;
  *(this + 62) = v17;
  v18 = (v13 * (1.0 - v15)) + (v15 * *(this + 63));
  *(this + 63) = v18;
  v19 = *(this + 44);
  v20 = v19 == 8 || v19 == 2;
  if (v20)
  {
    v21 = 16;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = 8;
  }

  else
  {
    v22 = 2;
  }

  if (v14 <= 0)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  *(this + 44) = v23;
  v24 = *(this + 107);
  Release = MTForceThresholding::thresholdForNextRelease(v7, (v9 + 296), v10);
  Activation = MTForceThresholding::thresholdForNextActivation(v7, (v9 + 296), v10);
  v27 = *(this + 55);
  v28 = *(v7 + 432);
  v29 = 0.0;
  if (v27 < (*(v7 + 440) - v28) >> 2)
  {
    v29 = *(v28 + 4 * v27);
  }

  if (*(v7 + 324) == *(v7 + 328))
  {
    v30 = 0;
  }

  else if (v27 > *(this + 56))
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  v31 = (Activation / v24);
  if ((v27 + 1) >= *(v7 + 192))
  {
    v32 = 1.0;
  }

  else
  {
    v32 = v31;
  }

  if (v27 >= 1)
  {
    v33 = (Release / v24);
  }

  else
  {
    v33 = 0.0;
  }

  v34 = (v29 / v24);
  v35 = v17 - v16;
  v36 = *(v7 + 176);
  v37 = MTForceBehavior::forceSourceFingerCount(v7 + 176);
  v38 = *(this + 55);
  if (v27 <= 0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v34;
  }

  v40 = fmax(fmin((*(v7 + 380) / *(v7 + 140)), 1.0), 0.0);
  *a5 = v23;
  *(a5 + 4) = v36;
  *(a5 + 8) = v37;
  *(a5 + 12) = v35;
  *(a5 + 16) = v38;
  *(a5 + 20) = v18;
  *&v40 = v40;
  *(a5 + 24) = v38;
  *(a5 + 28) = v30;
  *(a5 + 32) = v32;
  *(a5 + 40) = v39;
  result = *&v40;
  *(a5 + 48) = v33;
  *(a5 + 56) = *&v40;
  *(a5 + 64) = 0;
  return result;
}

void MTForceManagement::updateStatusVariablesFromForceEvent(uint64_t a1, int a2, int *a3, MTPathStates *this)
{
  v6 = *(a1 + 464) + 472 * a2;
  *&v7 = *(v6 + 344);
  *(&v7 + 1) = *(v6 + 360);
  *(a1 + 228) = v7;
  v8 = *a3;
  if (*a3 == 2)
  {
    *(a1 + 212) = *(a1 + 180);
  }

  if (a3[4])
  {
    *(a1 + 180) = *(v6 + 332);
    *(a1 + 184) = *(v6 + 376);
    *(a1 + 192) = *(v6 + 416) - *(v6 + 408);
    *(a1 + 208) = *(v6 + 400);
  }

  if (*(a1 + 220) == 1 && !*(a1 + 224))
  {
    *(a1 + 200) = MTPathStates::getPrePixelatedPositionFromPostPixelatedPosition(this, a2);
    *(a1 + 204) = v9;
    v8 = *a3;
  }

  if (v8 == 16)
  {
    if (*(a1 + 208) <= *(a1 + 416))
    {
      if (*(a1 + 180) == 1 && *(a1 + 212) == 1 && a3[2] == 1)
      {
        *(a1 + 516) = MTForceClickHistory::updateForceArray(*(a1 + 184), a1, (a1 + 544));
      }
    }

    else
    {
      *(a1 + 512) = MTForceClickHistory::updateForceArray(*(a1 + 184), a1, (a1 + 520));
    }
  }

  v10 = a3[1] == 11 && a3[4] != 0;
  *(a1 + 3) = v10;
}

uint64_t MTForceManagement::appendForceEvent(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *a3 != *(result + 568) || *(a3 + 4) != *(result + 572) || *(a3 + 8) != *(result + 576) || vabds_f32(*(a3 + 12), *(result + 580)) > 0.001 || *(a3 + 16) != *(result + 584) || vabds_f32(*(a3 + 20), *(result + 588)) > 0.001;
  if (v4 == 2 || v4 == 16)
  {
    goto LABEL_13;
  }

  v15 = !v5;
  if (v4 < 1)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
LABEL_13:
    v7 = result + 568;
    v9 = *(a3 + 4);
    v8 = *(a3 + 8);
    v10 = *(a3 + 12);
    v11 = *(a3 + 16);
    v12 = *(a3 + 20);
    v13 = *(a3 + 4);
    result = MTAppendForceGestureEvent();
    v14 = *(a3 + 16);
    *v7 = *a3;
    *(v7 + 16) = v14;
  }

  return result;
}

void MTForceManagement::appendForceStageEvent()
{
  v0 = *MEMORY[0x29EDB8ED8];
  IOHIDEventGetTimeStamp();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v2 = VendorDefinedEvent;
    IOHIDEventAppendEvent();

    CFRelease(v2);
  }
}

double MTForceManagement::constructThresholdInfo@<D0>(MTForceManagement *this@<X0>, const MTPathStates *a2@<X3>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *(this + 228);
  v4 = *(a2 + 35) + 600 * a3;
  v5 = *(v4 + 304);
  *(a4 + 8) = *(v4 + 336);
  *(a4 + 12) = v5;
  result = *(this + 236);
  *(a4 + 16) = result;
  return result;
}

int32x2_t MTForceManagement::constructClickInfo@<D0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  *a3 = *(a2 + 4);
  *(a3 + 8) = *(a1 + 180);
  v3 = *(a1 + 192);
  *(a3 + 12) = *(a1 + 184);
  *(a3 + 16) = v3;
  *(a3 + 20) = *(a1 + 208);
  *(a3 + 24) = *(a1 + 212);
  result = vrev64_s32(*(a1 + 512));
  *(a3 + 28) = result;
  return result;
}

void MTForceManagement::appendThresholdInfo()
{
  v0 = *MEMORY[0x29EDB8ED8];
  IOHIDEventGetTimeStamp();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v2 = VendorDefinedEvent;
    IOHIDEventAppendEvent();

    CFRelease(v2);
  }
}

void MTForceManagement::appendClickInfo()
{
  v0 = *MEMORY[0x29EDB8ED8];
  IOHIDEventGetTimeStamp();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v2 = VendorDefinedEvent;
    IOHIDEventAppendEvent();

    CFRelease(v2);
  }
}

BOOL MTForceManagement::actuateForceAndHIDEvents(uint64_t a1, const MTPathStates *a2, CFDictionaryRef *this, uint64_t a4, char a5)
{
  if (MTActuatorManagement::getActuatorRef(this) && *(a1 + 594) && (*(a1 + 595) & 1) != 0)
  {
    if ((a5 & 1) == 0)
    {
      MTForceManagement::actuateOnStageChanges(a1, a2, this);
    }

    if (*a1 == 1)
    {
      v9 = *(a1 + 256);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = MTForceManagement::strongestProgressPathID(a1, a2, 0);
      if (*(a1 + 256))
      {
LABEL_8:
        v10 = MTForceManagement::strongestForcePathID(a1, a2, 0);
        if ((v9 & 0x80000000) != 0)
        {
          return *(a1 + 1) != *(a1 + 2);
        }

        goto LABEL_14;
      }
    }

    v10 = 0;
    if ((v9 & 0x80000000) != 0)
    {
      return *(a1 + 1) != *(a1 + 2);
    }

LABEL_14:
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v13;
    v37 = v13;
    v34 = v13;
    *v35 = v13;
    *v32 = v13;
    *v33 = v13;
    *v30 = v13;
    v31 = v13;
    v29 = v13;
    MTForceBehavior::MTForceBehavior(&v29, (*(a1 + 464) + 472 * v9 + 176));
    memset(&v28[1], 255, 40);
    v27 = xmmword_29D3D75B0;
    v28[0] = unk_29D3D75C0;
    MTForceManagement::constructForceEvent(a1, a2, v9, v10, &v27);
    *&v24[16] = v28[1];
    v25 = v28[2];
    v26 = *&v28[3];
    v23 = v27;
    *v24 = v28[0];
    MTForceManagement::updateStatusVariablesFromForceEvent(a1, v9, &v23, a2);
    if (*(a1 + 596) != 1 || (v14 = *(a1 + 568), v14 == 8) || v14 == 2)
    {
      v23 = *(v28 + 8);
      *v24 = *(&v28[1] + 8);
      *&v24[16] = *(&v28[2] + 8);
      MTForceManagement::appendForceStageEvent();
    }

    if (*(a1 + 216) == 1)
    {
      if (*(a1 + 220) != *(a1 + 224))
      {
        v15 = *(a2 + 35) + 600 * v10;
        v16 = *(v15 + 336);
        v17 = *(v15 + 304);
        *&v23 = *(a1 + 228);
        *(&v23 + 1) = __PAIR64__(v17, v16);
        *v24 = *(a1 + 236);
        MTForceManagement::appendThresholdInfo();
      }

      if (v27 == 16)
      {
        v18 = *(a1 + 180);
        v19 = *(a1 + 184);
        v20 = *(a1 + 192);
        v21 = *(a1 + 208);
        v22 = *(a1 + 212);
        *&v23 = *(&v27 + 4);
        *(&v23 + 1) = __PAIR64__(v19, v18);
        *v24 = v20;
        *&v24[4] = v21;
        *&v24[8] = v22;
        *&v24[12] = vrev64_s32(*(a1 + 512));
        MTForceManagement::appendClickInfo();
      }
    }

    if (__p[1])
    {
      *&v37 = __p[1];
      operator delete(__p[1]);
    }

    if (v35[0])
    {
      v35[1] = v35[0];
      operator delete(v35[0]);
    }

    if (v33[1])
    {
      *&v34 = v33[1];
      operator delete(v33[1]);
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    if (v30[1])
    {
      *&v31 = v30[1];
      operator delete(v30[1]);
    }

    return *(a1 + 1) != *(a1 + 2);
  }

  v11 = MTLoggingPlugin();
  result = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    MTForceManagement::actuateForceAndHIDEvents(this, a1, v11);
    return 0;
  }

  return result;
}

uint64_t MTActuatorManagement::getActuatorRef(MTActuatorManagement *this)
{
  result = *(this + 1);
  if (!result)
  {
    v3 = *this;
    result = MTDeviceGetMTActuator();
    *(this + 1) = result;
    if (result)
    {
      if ((MTActuatorIsOpen() & 1) == 0)
      {
        v4 = *(this + 1);
        MTActuatorOpen();
      }

      v5 = *(this + 1);
      Service = MTActuatorGetService();
      IORegistryEntryGetRegistryEntryID(Service, this + 4);
      CFRetain(*(this + 1));
      return *(this + 1);
    }
  }

  return result;
}

uint64_t MTForceManagement::actuateOnStageChanges(uint64_t this, const MTPathStates *a2, CFDictionaryRef *a3)
{
  v3 = this;
  *(this + 2) = *(this + 1);
  if (*this != 1)
  {
    *(this + 1) = 0;
    return this;
  }

  v6 = *(this + 464) + 472 * *(this + 256);
  if (*(v6 + 324) < 1)
  {
    *(this + 1) = 0;
  }

  else
  {
    this = MTForceBehavior::whichButtonBehavior((v6 + 176));
    v7 = *v3;
    *(v3 + 1) = this != 0;
    if ((v7 & 1) == 0)
    {
      return this;
    }
  }

  v8 = *(v3 + 256);
  v9 = *(v3 + 464) + 472 * v8;
  v10 = *(v9 + 324);
  v11 = *(v9 + 328);
  if (v10 != v11)
  {
    v12 = *(v3 + 4);
    v13 = *(a2 + 1);
    v14 = *(v3 + 8);
    *(v3 + 4) = v10 < v11;
    if (v10 >= v11)
    {
      *(v3 + 24) = v13;

      return MTForceManagement::actuateThresholderPath(v3, a3, v8);
    }

    else
    {
      *(v3 + 16) = v13;
      this = MTForceBehavior::operator=(v3 + 32, v9 + 176);
      if (!v12 || (v15 = v13 - v14, v15 > 0.2))
      {
        MTForceManagement::actuateThresholderPath(v3, a3, *(v3 + 256));
        this = MTForceThresholding::actuationWaveformID((*(v3 + 464) + 472 * *(v3 + 256)));
        if (this)
        {
          v16 = *(a2 + 1);
          *(v3 + 8) = v16;
        }
      }
    }
  }

  return this;
}

uint64_t MTForceManagement::strongestProgressPathID(MTForceManagement *this, const MTPathStates *a2, int a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = 0xFFFFFFFFLL;
  do
  {
    v11 = (*(this + 58) + v6);
    if (*(v11 + 44) && MTForceThresholding::fingersMatchBehavior(v11, a2, v7) && (!a3 || v7 && v7 != *(this + 64)))
    {
      v12 = (*(this + 58) + v6);
      v13 = (*(v12 + 45) >> 7) & 1;
      v14 = MTForceThresholding::rescaleForceAsLadderProgress(v12, a2);
      v15 = v14 <= 0.0 || v13 <= v8;
      if (!v15 || (v14 > v9 ? (v16 = v13 < v8) : (v16 = 1), !v16))
      {
        v8 = v13;
        v10 = v7;
        v9 = v14;
      }
    }

    ++v7;
    v6 += 472;
  }

  while (v7 != 32);
  return v10;
}

uint64_t MTForceManagement::strongestForcePathID(MTForceManagement *this, const MTPathStates *a2, int a3)
{
  v6 = 0;
  v7 = 0.0;
  v8 = 1;
  v9 = 472;
  v10 = 936;
  do
  {
    if (MTForceThresholding::fingersMatchBehavior((*(this + 58) + v9), a2, v8) && (!a3 || v8 != *(this + 64)))
    {
      v11 = *(a2 + 35);
      v12 = *(v11 + v10);
      if (v12 <= v7)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }

      if (v12 > v7)
      {
        v7 = *(v11 + v10);
      }
    }

    ++v8;
    v9 += 472;
    v10 += 600;
  }

  while (v8 != 32);
  return v6;
}

uint64_t MTForceManagement::actuateThresholderPath(MTForceManagement *this, CFDictionaryRef *a2, int a3)
{
  v5 = *(this + 58) + 472 * a3;
  if (a3)
  {
    v6 = 492;
  }

  else
  {
    v6 = 488;
  }

  if (a3)
  {
    v7 = 500;
  }

  else
  {
    v7 = 496;
  }

  if (*(this + 460) == 1 && !*(v5 + 328) && *(v5 + 324) >= 1)
  {
    v8 = *(this + 112);
    v9 = (*(this + v6) - v8);
    v10 = v8;
    *&v9 = v9 / (1.0 - v10);
    *&v9 = (*(this + 109) * *&v9) + (1.0 - *(this + 109)) * *(v5 + 368);
    *&v9 = v10 + (1.0 - v10) * *&v9;
    *(this + v6) = LODWORD(v9);
    *&v9 = (*(this + 110) * *(this + v7)) + (1.0 - *(this + 110)) * *(v5 + 372);
    *(this + v7) = LODWORD(v9);
  }

  v11 = *(this + v6);
  v12 = 508;
  if (*(v5 + 324) < 2)
  {
    v12 = 504;
  }

  v13 = *(this + v12);
  if (v13 <= 2)
  {
    v14 = dword_29D3D75F8[v13];
  }

  *(this + 593);
  v15 = MTForceThresholding::actuationWaveformID(v5);
  v16 = *(this + v6);
  v17 = *(this + v7);

  return MTActuatorManagement::actuateWaveformID(a2, v15, v16, v17);
}

uint64_t MTActuatorManagement::getActuationOptions(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_29D3D75F8[a2];
  }

  if (a3)
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

uint64_t MTActuatorManagement::actuateWaveformID(CFDictionaryRef *this, int a2, float a3, float a4)
{
  v5 = a2;
  kdebug_trace();
  if (*(this + 24) && MTActuatorManagement::getActuatorRef(this))
  {
    Value = CFDictionaryGetValue(this[2], v5);
    if (Value)
    {
      v7 = Value;
      CFDataGetBytePtr(Value);
      CFDataGetLength(v7);
      MTActuatorManagement::getActuatorRef(this);
      MTActuatorSetReport();
    }

    else
    {
      MTActuatorManagement::getActuatorRef(this);
      MTActuatorActuate();
    }
  }

  return 1;
}

uint64_t MTForceManagement::clearState(uint64_t this, char a2)
{
  v2 = this;
  if ((a2 & 1) != 0 || *this != 1 || (*(this + 597) & 1) == 0)
  {
    *(this + 1) = 0;
    MTForceManagement::primeBasicBehaviors(this, 0);
    __asm { FMOV            V0.4S, #1.0 }

    *(v2 + 488) = _Q0;
    *(v2 + 4) = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    Null = MTForceBehavior::GetNull(v8);
    MTForceBehavior::operator=(v2 + 32, Null);
    *(v2 + 184) = 0;
    *(v2 + 3) = 0;
    *(v2 + 176) = 0;
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
    *(v2 + 192) = 0;
    *(v2 + 216) = 0;
    *(v2 + 220) = 0u;
    *(v2 + 236) = 0u;
    *(v2 + 252) = 0;
    *(v2 + 460) = CFPreferencesGetAppBooleanValue(@"DisableClickWaveformAdaptation", @"com.apple.MultitouchSupport", 0) == 0;
    v10 = 31;
    v11 = 472;
    do
    {
      MTForceThresholding::setForceActuationQualifiers(*(v2 + 464) + v11, v2 + 432);
      v11 += 472;
      --v10;
    }

    while (v10);
    this = CFPreferencesGetAppBooleanValue(@"DisableForceThresholdAdaptation", @"com.apple.MultitouchSupport", 0);
    v12 = 0;
    v13 = this != 0;
    v14 = (*(v2 + 464) + 4200);
    v15 = vdupq_n_s64(0x1FuLL);
    do
    {
      v16 = vdupq_n_s64(v12);
      v17 = vorrq_s8(v16, xmmword_29D3D65B0);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v15, v17)), 14), 14).u8[0])
      {
        *(v14 - 3304) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v17)), 14), 14).i8[1])
      {
        *(v14 - 2832) = v13;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v16, xmmword_29D3D65A0)))), 14).i8[2])
      {
        *(v14 - 2360) = v13;
        *(v14 - 1888) = v13;
      }

      v18 = vorrq_s8(v16, xmmword_29D3D6590);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v18)), 14)).i32[1])
      {
        *(v14 - 1416) = v13;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v18)), 14)).i8[5])
      {
        *(v14 - 944) = v13;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v16, xmmword_29D3D6580))))).i8[6])
      {
        *(v14 - 472) = v13;
        *v14 = v13;
      }

      v19 = vorrq_s8(v16, xmmword_29D3D6570);
      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v19)), 14), 14).u8[0])
      {
        v14[472] = v13;
      }

      if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v19)), 14), 14).i8[1])
      {
        v14[944] = v13;
      }

      if (vuzp1_s8(vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v16, xmmword_29D3D6560)))), 14).i8[2])
      {
        v14[1416] = v13;
        v14[1888] = v13;
      }

      v20 = vorrq_s8(v16, xmmword_29D3D6550);
      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v20)), 14)).i32[1])
      {
        v14[2360] = v13;
      }

      if (vuzp1_s8(14, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), v20)), 14)).i8[5])
      {
        v14[2832] = v13;
      }

      if (vuzp1_s8(14, vuzp1_s16(14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1FuLL), vorrq_s8(v16, xmmword_29D3D6540))))).i8[6])
      {
        v14[3304] = v13;
        v14[3776] = v13;
      }

      v12 += 16;
      v14 += 7552;
    }

    while (v12 != 32);
  }

  return this;
}

void MTForceManagement::primeBasicBehaviors(MTForceThresholding **this, int a2)
{
  MTForceManagement::disableAllThresholders(this);
  v4 = MTForceBehaviorConfiguration::collectiveBehavior((this + 33), a2);
  MTForceThresholding::setForceBehavior(this[58], v4, 0);
  FingerBehavior = MTForceBehaviorConfiguration::firstFingerBehavior((this + 33));
  v6 = -31;
  v7 = 472;
  do
  {
    MTForceThresholding::setForceBehavior((this[58] + v7), FingerBehavior, v6 + 32);
    v7 += 472;
  }

  while (!__CFADD__(v6++, 1));
  *(this + 288) = 0;
}

void MTForceManagement::analyzeAndManageStrongestForces(MTForceManagement *this, const MTPathStates *a2)
{
  if (*this)
  {

    MTForceManagement::managePostActivation(this, a2);
  }

  else
  {
    MTForceManagement::primeBasicBehaviors(this, *(a2 + 92));

    MTForceManagement::managePreActivation(this, a2);
  }
}

void MTForceManagement::managePreActivation(MTForceManagement *this, const MTPathStates *a2)
{
  MTForceManagement::analyzeDistributedForces(this, a2);
  v4 = MTForceManagement::strongestProgressPathID(this, a2, 0);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(this + 58) + 472 * v4;
    if (*(v5 + 324) >= 1 && !*(v5 + 328) && *(a2 + 1) - *(this + 2) > *(this + 83) && *(this + 594) == 1)
    {

      MTForceManagement::lockBehaviorsOnActivatedFinger(this, v4);
    }
  }
}

void MTForceManagement::managePostActivation(MTForceManagement *this, const MTPathStates *a2)
{
  if (*(*(this + 58) + 472 * *(this + 64) + 324))
  {

    MTForceManagement::analyzeDistributedForces(this, a2);
  }

  else
  {
    MTForceManagement::primeBasicBehaviors(this, *(a2 + 92));

    MTForceManagement::managePreActivation(this, a2);
  }
}

MTForceThresholding *MTForceManagement::analyzeDistributedForces(MTForceManagement *this, const MTPathStates *a2)
{
  v4 = MTForceManagement::strongestForcePathID(this, a2, 0);
  v5 = 0;
  v6 = *(this + 128);
  v7 = *(this + 129);
  v8 = 32;
  do
  {
    result = (*(this + 58) + v5);
    if (*(result + 44))
    {
      result = MTForceThresholding::analyzeForceAndStage(result, a2, v4, (this + 32), *(this + 2), *(this + 3), *(this + 592), v7, v6);
    }

    v5 += 472;
    --v8;
  }

  while (v8);
  return result;
}

void MTForceManagement::lockBehaviorsOnActivatedFinger(MTForceManagement *this, unsigned int a2)
{
  *this = 1;
  *(this + 64) = a2;
  if (a2)
  {
    Null = MTForceBehavior::GetNull(this);
    MTForceThresholding::setForceBehavior(*(this + 58), Null, 0);
    v5 = MTForceBehaviorConfiguration::secondFingerBehavior((this + 264));
    v6 = 472;
    v7 = 472 * a2;
    v8 = 1;
    v9 = 14632;
    do
    {
      if (v7 != v6)
      {
        MTForceThresholding::setForceBehavior((*(this + 58) + v6), v5, v8);
      }

      ++v8;
      v6 += 472;
      v9 -= 472;
    }

    while (v9);
  }

  else
  {

    MTForceManagement::disableFingerThresholders(this);
  }
}

void MTForceManagement::disableAllThresholders(MTForceManagement *this)
{
  *this = 0;
  *(this + 64) = 0;
  Null = MTForceBehavior::GetNull(this);
  v3 = 0;
  for (i = 0; i != 32; ++i)
  {
    MTForceThresholding::setForceBehavior((*(this + 58) + v3), Null, i);
    v3 += 472;
  }
}

void MTForceManagement::setBehaviorOnThresholders(MTForceManagement *this, const MTForceBehavior *a2, int a3, int a4)
{
  if (a3 <= a4)
  {
    v4 = a3;
    v7 = a4 + 1;
    v8 = 472 * a3;
    do
    {
      MTForceThresholding::setForceBehavior((*(this + 58) + v8), a2, v4++);
      v8 += 472;
    }

    while (v7 != v4);
  }
}

void MTForceManagement::disableFingerThresholders(MTForceManagement *this)
{
  v2 = -31;
  v3 = 472;
  Null = MTForceBehavior::GetNull(this);
  do
  {
    MTForceThresholding::setForceBehavior((*(this + 58) + v3), Null, v2 + 32);
    v3 += 472;
  }

  while (!__CFADD__(v2++, 1));
}

void MTForceManagement::disableCollectiveThresholder(MTForceThresholding **this)
{
  Null = MTForceBehavior::GetNull(this);
  v3 = this[58];

  MTForceThresholding::setForceBehavior(v3, Null, 0);
}

void MTForceManagement::setBehaviorOnOtherFingerThresholders(MTForceManagement *this, const MTForceBehavior *a2, unsigned int a3)
{
  v5 = a3;
  v6 = 1;
  v7 = 472;
  do
  {
    if (v5 != v6)
    {
      MTForceThresholding::setForceBehavior((*(this + 58) + v7), a2, v6);
    }

    ++v6;
    v7 += 472;
  }

  while (v6 != 32);
}

float MTForceManagement::setOverrideBehavior(MTForceManagement *this, const MTForceBehavior *a2)
{
  v4 = MTForceBehavior::forceSourceFingerCount(*(this + 58) + 472 * *(this + 64) + 176);
  if (v4 == MTForceBehavior::forceSourceFingerCount(a2) && *this == 1 && *a2 != 0)
  {
    v7 = *(this + 64);
    v8 = (*(this + 58) + 472 * v7);

    return MTForceThresholding::updateForceBehavior(v8, a2, v7);
  }

  return result;
}

uint64_t MTActuatorManagement::MTActuatorManagement(uint64_t a1, CFTypeRef cf)
{
  *a1 = cf;
  CFRetain(cf);
  *(a1 + 40) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 16) = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, 0, MEMORY[0x29EDB9020]);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void MTActuatorManagement::~MTActuatorManagement(CFTypeRef *this)
{
  CFRelease(*this);
  *this = 0;
  if (this[1])
  {
    MTActuatorClose();
    CFRelease(this[1]);
    this[1] = 0;
  }

  v2 = this[2];
  if (v2)
  {
    CFRelease(v2);
    this[2] = 0;
  }

  v3 = *(this + 14);
  if (v3)
  {
    IOObjectRelease(v3);
    *(this + 14) = 0;
  }
}

uint64_t MTActuatorManagement::AppleActuatorDeviceMatchedCallback(MTActuatorManagement *this, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (!result)
  {
    v6 = 0;
    if (!this)
    {
      return result;
    }

    goto LABEL_9;
  }

  v5 = result;
  v6 = 0;
  do
  {
    entryID = 0;
    if (!IORegistryEntryGetRegistryEntryID(v5, &entryID))
    {
      v6 |= entryID == *(this + 4);
    }

    IOObjectRelease(v5);
    result = IOIteratorNext(iterator);
    v5 = result;
  }

  while (result);
  if (this)
  {
LABEL_9:
    if ((v6 & 1) == 0 && *this)
    {
      if (*(this + 1))
      {
        MTActuatorClose();
        CFRelease(*(this + 1));
        *(*this + 32) = 0;
        *(this + 1) = 0;
      }

      return MTActuatorManagement::getActuatorRef(this);
    }
  }

  return result;
}

uint64_t MTActuatorManagement::setFirmwareClicks(MTActuatorManagement *this, unsigned int a2, int a3)
{
  if (*(this + 24))
  {
    if (a2 > 2)
    {
      v4 = 0;
    }

    else
    {
      v4 = dword_29D3D75F8[a2];
    }

    if (a3)
    {
      v5 = v4 | 8;
    }

    else
    {
      v5 = v4;
    }

    if (MTActuatorManagement::getActuatorRef(this) && v5 != *(this + 10))
    {
      *(this + 10) = v5;
      v6 = *(this + 1);
      MTActuatorSetFirmwareClicks();
    }
  }

  return 1;
}

uint64_t MTActuatorManagement::systemActuationsEnabledChanged(MTActuatorManagement *this)
{
  result = MTActuatorManagement::getActuatorRef(this);
  if (result)
  {
    MTActuatorManagement::getActuatorRef(this);
    result = MTActuatorGetSystemActuationsEnabled();
    *(this + 24) = result;
  }

  return result;
}

void MTActuatorManagement::scheduleOnDispatchQueue(MTActuatorManagement *this, NSObject *a2)
{
  v4 = *this;
  if (MTDeviceSupportsActuation())
  {
    v5 = IONotificationPortCreate(0);
    *(this + 6) = v5;
    if (v5)
    {
      valuePtr = 0;
      v6 = *this;
      MTDeviceGetDeviceID();
      v7 = *MEMORY[0x29EDB8ED8];
      v8 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt64Type, &valuePtr);
      v9 = MEMORY[0x29EDB9010];
      v10 = MEMORY[0x29EDB9020];
      Mutable = CFDictionaryCreateMutable(v7, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v12 = CFDictionaryCreateMutable(v7, 1, v9, v10);
      v13 = v12;
      if (v8)
      {
        v14 = Mutable == 0;
      }

      else
      {
        v14 = 1;
      }

      if (v14 || v12 == 0)
      {
        IONotificationPortSetDispatchQueue(*(this + 6), a2);
        if (!v8)
        {
          if (!Mutable)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      else
      {
        CFDictionarySetValue(v12, @"Multitouch Actuator ID", v8);
        CFDictionarySetValue(Mutable, @"IOPropertyMatch", v13);
        CFRetain(Mutable);
        if (!IOServiceAddMatchingNotification(*(this + 6), "IOServiceFirstMatch", Mutable, MTActuatorManagement::AppleActuatorDeviceMatchedCallback, this, this + 14))
        {
          MTActuatorManagement::AppleActuatorDeviceMatchedCallback(this, *(this + 14));
        }

        IONotificationPortSetDispatchQueue(*(this + 6), a2);
      }

      CFRelease(v8);
      if (!Mutable)
      {
LABEL_14:
        if (v13)
        {
          CFRelease(v13);
        }

        return;
      }

LABEL_13:
      CFRelease(Mutable);
      goto LABEL_14;
    }
  }
}

void MTActuatorManagement::unscheduleFromDispatchQueue(MTActuatorManagement *this, dispatch_queue_t queue)
{
  dispatch_assert_queue_not_V2(queue);
  v3 = *(this + 6);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(this + 6) = 0;
  }
}

uint64_t MTActuatorManagement::reloadActuations(MTActuatorManagement *this)
{
  result = MTActuatorManagement::getActuatorRef(this);
  if (result)
  {
    ActuatorRef = MTActuatorManagement::getActuatorRef(this);

    return MEMORY[0x2A1C68480](ActuatorRef);
  }

  return result;
}

uint64_t MTActuatorManagement::reclaimHostClickControl(MTActuatorManagement *this)
{
  result = MTActuatorManagement::getActuatorRef(this);
  if (result)
  {
    ActuatorRef = MTActuatorManagement::getActuatorRef(this);

    return MEMORY[0x2A1C68490](ActuatorRef);
  }

  return result;
}

void std::vector<MTForceBehavior>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<MTForceBehavior>>::destroy[abi:ne200100]<MTForceBehavior,0>(a1, i))
  {
    i -= 18;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<MTForceBehavior>>::destroy[abi:ne200100]<MTForceBehavior,0>(uint64_t a1, void *a2)
{
  v3 = a2[15];
  if (v3)
  {
    a2[16] = v3;
    operator delete(v3);
  }

  v4 = a2[12];
  if (v4)
  {
    a2[13] = v4;
    operator delete(v4);
  }

  v5 = a2[9];
  if (v5)
  {
    a2[10] = v5;
    operator delete(v5);
  }

  v6 = a2[6];
  if (v6)
  {
    a2[7] = v6;
    operator delete(v6);
  }

  v7 = a2[3];
  if (v7)
  {
    a2[4] = v7;

    operator delete(v7);
  }
}

void MTForceBehavior::MTForceBehavior(MTForceBehavior *this, const MTForceBehavior *a2)
{
  v4 = *a2;
  *(this + 4) = *(a2 + 4);
  *this = v4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 24, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 2);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 2);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 96, *(a2 + 12), *(a2 + 13), (*(a2 + 13) - *(a2 + 12)) >> 2);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(this + 120, *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 2);
}

void sub_29D3CD37C(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[13] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[10] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v1[7] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[4] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<MTForceBehavior>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<MTForceBehavior>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<MTForceBehavior>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<MTForceBehavior>>>(a1, a2);
  }

  std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<MTForceBehavior>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<MTForceBehavior>::__emplace_back_slow_path<MTForceBehavior const&>(uint64_t a1, const MTForceBehavior *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTForceBehavior>>(a1, v6);
  }

  v13 = 0;
  v14 = 144 * v2;
  MTForceBehavior::MTForceBehavior((144 * v2), a2);
  v15 = 144 * v2 + 144;
  v7 = *(a1 + 8);
  v8 = (144 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTForceBehavior>,MTForceBehavior*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<MTForceBehavior>::~__split_buffer(&v13);
  return v12;
}

void sub_29D3CD668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MTForceBehavior>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTForceBehavior>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTForceBehavior>,MTForceBehavior*>(uint64_t a1, MTForceBehavior *a2, MTForceBehavior *a3, MTForceBehavior *this)
{
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0xAAAAAAAAAAAAAA00;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      MTForceBehavior::MTForceBehavior(this, v7);
      v7 = (v7 + 144);
      this = (v12 + 144);
      v12 = (v12 + 144);
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTForceBehavior>>::destroy[abi:ne200100]<MTForceBehavior,0>(a1, v5);
      v5 = (v5 + 144);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTForceBehavior>,MTForceBehavior*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTForceBehavior>,MTForceBehavior*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTForceBehavior>,MTForceBehavior*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTForceBehavior>,MTForceBehavior*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 18;
      std::allocator_traits<std::allocator<MTForceBehavior>>::destroy[abi:ne200100]<MTForceBehavior,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<MTForceBehavior>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTForceBehavior>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTForceBehavior>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 144;
    std::allocator_traits<std::allocator<MTForceBehavior>>::destroy[abi:ne200100]<MTForceBehavior,0>(v5, (v4 - 144));
  }
}

void *std::vector<MTForceThresholding>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<MTForceThresholding>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<MTForceThresholding>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x8AD8F2FBA93869)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTForceThresholding>>(a1, a2);
  }

  std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTForceThresholding>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x8AD8F2FBA93869)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t MTLoggingPlugin()
{
  if (MTLoggingPlugin_onceToken != -1)
  {
    MTLoggingPlugin_cold_1();
  }

  return MTLoggingPlugin___logObj;
}

os_log_t __MTLoggingPlugin_block_invoke()
{
  result = os_log_create("com.apple.Multitouch", "Plugin");
  MTLoggingPlugin___logObj = result;
  return result;
}

uint64_t MTForceManagerLite::MTForceManagerLite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 40) = a5;
  if (MTDeviceGetForceThresholdForMotion())
  {
    *(a1 + 12) = 0x4366000043110000;
    v6 = *(a1 + 40);
    MTDeviceGetDeviceID();
    v7 = MTLoggingPlugin();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 12);
    v9 = *(a1 + 16);
    *buf = 134218496;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = 0;
    v10 = "Init from default %f %f (deviceID 0x%llX)";
  }

  else
  {
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v11 = *(a1 + 40);
    MTDeviceGetDeviceID();
    v7 = MTLoggingPlugin();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v12 = *(a1 + 12);
    v13 = *(a1 + 16);
    *buf = 134218496;
    v19 = v12;
    v20 = 2048;
    v21 = v13;
    v22 = 2048;
    v23 = 0;
    v10 = "Init from MTDeviceRef %f %f (deviceID 0x%llX)";
  }

  _os_log_impl(&dword_29D381000, v7, OS_LOG_TYPE_DEBUG, v10, buf, 0x20u);
LABEL_7:
  MTDeviceGetReport();
  v14 = *(a1 + 40);
  MTDeviceGetDeviceID();
  v15 = MTLoggingPlugin();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = 0.0;
    _os_log_impl(&dword_29D381000, v15, OS_LOG_TYPE_DEFAULT, "Can't fetch Orb spec from FW, falling back to default. (deviceID 0x%llX)", buf, 0xCu);
  }

  *(a1 + 20) = 30.0;
  *(a1 + 1) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 1050253722;
  v16 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t MTForceManagerLite::clearState(uint64_t this)
{
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 28) = 0;
  *(this + 32) = 0;
  return this;
}

void MTForceManagerLite::updatePaths(MTForceManagerLite *this, const MTPathStates *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = 0.0;
  v5 = -18600;
  do
  {
    memcpy(__dst, &unk_29D3D7648, 0x258uLL);
    v6 = *(a2 + 35);
    *&__dst[0] = &unk_2A2411768;
    v7 = v6 + v5;
    memcpy(__dst + 8, (v6 + v5 + 19208), 0x11CuLL);
    *(&__dst[18] + 1) = &unk_2A2413860;
    v8 = *(v7 + 19536);
    v9 = *(v7 + 19520);
    __dst[19] = *(v7 + 19504);
    __dst[20] = v9;
    __dst[21] = v8;
    v10 = *(v7 + 19552);
    v11 = *(v7 + 19600);
    v12 = *(v7 + 19568);
    __dst[24] = *(v7 + 19584);
    __dst[25] = v11;
    __dst[22] = v10;
    __dst[23] = v12;
    v13 = *(v7 + 19632);
    v14 = *(v7 + 19664);
    v15 = *(v7 + 19616);
    __dst[28] = *(v7 + 19648);
    __dst[29] = v14;
    __dst[26] = v15;
    __dst[27] = v13;
    v16 = *(v7 + 19696);
    v17 = *(v7 + 19728);
    v18 = *(v7 + 19680);
    __dst[32] = *(v7 + 19712);
    __dst[33] = v17;
    __dst[30] = v18;
    __dst[31] = v16;
    v19 = *(v7 + 19760);
    v20 = *(v7 + 19776);
    v21 = *(v7 + 19744);
    *&__dst[37] = *(v7 + 19792);
    __dst[35] = v19;
    __dst[36] = v20;
    __dst[34] = v21;
    if ((HIDWORD(__dst[2]) - 3) <= 1 && !MTParserPath::isEdgeContact(__dst))
    {
      v4 = v4 + *(&__dst[4] + 3);
    }

    MTParserPath::~MTParserPath(__dst);
    v5 += 600;
  }

  while (v5);
  v22 = *(this + 1);
  if (v4 > v22 || (v4 = v4 + *(this + 5), v4 < v22))
  {
    *(this + 1) = v4;
    v22 = v4;
  }

  v23 = (v22 - *(this + 3)) / (*(this + 4) - *(this + 3));
  if (v23 > 1.0)
  {
    v24 = *(this + 6);
    v25 = 0.01;
    if (v24 > 0.0)
    {
      v25 = *(this + 6);
    }

    v23 = (v24 * (1.0 - expf((1.0 - v23) / v25))) + 1.0;
  }

  if (*(this + 1) == 1)
  {
    if (v23 >= 0.0)
    {
      v23 = fmaxf(v23, 1.0);
    }

    else
    {
      *(this + 1) = 0;
    }
  }

  else if (v23 >= 1.0)
  {
    *(this + 1) = 1;
    v26 = *(this + 5);
    MTDeviceGetDeviceID();
    v27 = MTLoggingPlugin();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(this + 7);
      v29 = *(this + 3);
      v30 = *(this + 4);
      v31 = *(this + 5);
      LODWORD(__dst[0]) = 67110144;
      DWORD1(__dst[0]) = v28;
      WORD4(__dst[0]) = 2048;
      *(__dst + 10) = v29;
      WORD1(__dst[1]) = 2048;
      *(&__dst[1] + 4) = v30;
      WORD6(__dst[1]) = 2048;
      *(&__dst[1] + 14) = v31;
      WORD3(__dst[2]) = 2048;
      *(&__dst[2] + 1) = 0;
      _os_log_impl(&dword_29D381000, v27, OS_LOG_TYPE_DEBUG, "Force activated : Motion (%d) Thresholds (%f, %f) Hysteresis (%f) (deviceID 0x%llX)", __dst, 0x30u);
    }
  }

  *(this + 2) = fmaxf(v23, 0.0);
  MTForceManagerLite::updateMotion(this, *(this + 8));
  v32 = *MEMORY[0x29EDCA608];
}

void MTForceManagerLite::updateMotion(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a2 <= 4)
  {
    *(a1 + 32) = a2;
    if (*(a1 + 4) <= 50.0 && *(a1 + 28) != a2)
    {
      v4 = *(a1 + 40);
      if (MTDeviceGetForceThresholdForMotion())
      {
        *(a1 + 12) = _defaultThresholds[a2];
        v5 = *(a1 + 40);
        MTDeviceGetDeviceID();
        v6 = MTLoggingPlugin();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(a1 + 12);
          v8 = *(a1 + 16);
          *buf = 67109888;
          v15 = a2;
          v16 = 2048;
          v17 = v7;
          v18 = 2048;
          v19 = v8;
          v20 = 2048;
          v21 = 0;
          v9 = "Default motion %d %f %f (deviceID 0x%llX)";
LABEL_9:
          _os_log_impl(&dword_29D381000, v6, OS_LOG_TYPE_DEBUG, v9, buf, 0x26u);
        }
      }

      else
      {
        *(a1 + 12) = 0;
        *(a1 + 16) = 0;
        v10 = *(a1 + 40);
        MTDeviceGetDeviceID();
        v6 = MTLoggingPlugin();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(a1 + 12);
          v12 = *(a1 + 16);
          *buf = 67109888;
          v15 = a2;
          v16 = 2048;
          v17 = v11;
          v18 = 2048;
          v19 = v12;
          v20 = 2048;
          v21 = 0;
          v9 = "MTDeviceRef motion %d %f %f (deviceID 0x%llX)";
          goto LABEL_9;
        }
      }

      *(a1 + 28) = *(a1 + 32);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

void MTInterferenceMonitor::MTInterferenceMonitor(MTInterferenceMonitor *this)
{
  *(this + 3) = 0;
  *this = &unk_2A2413A20;
  *(this + 1) = 0;
  *(this + 15) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 87) = 0;
}

{
  *(this + 3) = 0;
  *this = &unk_2A2413A20;
  *(this + 1) = 0;
  *(this + 15) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 87) = 0;
}

void MTInterferenceMonitor::~MTInterferenceMonitor(MTInterferenceMonitor *this)
{
  *this = &unk_2A2413A20;
  if (*(this + 16) == 1)
  {
    MTInterferenceMonitor::_stop(this);
  }

  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }
}

{
  MTInterferenceMonitor::~MTInterferenceMonitor(this);

  JUMPOUT(0x29ED547D0);
}

uint64_t MTInterferenceMonitor::powerDriverChangedNotification(uint64_t this, void *a2, int a3, unsigned int a4, void *a5)
{
  if (a3 == -536870896)
  {
    return (*(*this + 72))();
  }

  return this;
}

uint64_t MTInterferenceMonitor::cachePowerSourceDrivers(io_iterator_t *this)
{
  (*(*this + 72))(this);
  v2 = IOServiceMatching("IOPMPowerSource");
  if (!v2)
  {
    return 3758097084;
  }

  v3 = v2;
  MatchingServices = IOServiceGetMatchingServices(0, v2, this + 22);
  if (MatchingServices)
  {
    v20 = MatchingServices;
    CFRelease(v3);
  }

  else
  {
    v5 = IOIteratorNext(this[22]);
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        notification = -1431655766;
        v7 = IONotificationPortCreate(0);
        IONotificationPortSetDispatchQueue(v7, *(this + 3));
        v9 = *(this + 9);
        v8 = *(this + 10);
        if (v9 >= v8)
        {
          v11 = *(this + 8);
          v12 = (v9 - v11) >> 3;
          if ((v12 + 1) >> 61)
          {
            std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
          }

          v13 = v8 - v11;
          v14 = v13 >> 2;
          if (v13 >> 2 <= (v12 + 1))
          {
            v14 = v12 + 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<IONotificationPort *>>((this + 16), v15);
          }

          *(8 * v12) = v7;
          v10 = 8 * v12 + 8;
          v16 = *(this + 8);
          v17 = *(this + 9) - v16;
          v18 = (8 * v12 - v17);
          memcpy(v18, v16, v17);
          v19 = *(this + 8);
          *(this + 8) = v18;
          *(this + 9) = v10;
          *(this + 10) = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v9 = v7;
          v10 = (v9 + 1);
        }

        *(this + 9) = v10;
        v20 = IOServiceAddInterestNotification(v7, v6, "IOGeneralInterest", MTInterferenceMonitor::powerDriverChangedNotification, this, &notification);
        IOObjectRelease(v6);
        if (v20)
        {
          break;
        }

        v22 = *(this + 6);
        v21 = *(this + 7);
        if (v22 >= v21)
        {
          v24 = *(this + 5);
          v25 = v22 - v24;
          v26 = (v22 - v24) >> 2;
          v27 = v26 + 1;
          if ((v26 + 1) >> 62)
          {
            std::vector<MTPoint>::__throw_length_error[abi:ne200100]();
          }

          v28 = v21 - v24;
          if (v28 >> 1 > v27)
          {
            v27 = v28 >> 1;
          }

          v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
          v30 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v29)
          {
            v30 = v27;
          }

          if (v30)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>((this + 10), v30);
          }

          v31 = (v22 - v24) >> 2;
          v32 = (4 * v26);
          v33 = (4 * v26 - 4 * v31);
          *v32 = notification;
          v23 = v32 + 1;
          memcpy(v33, v24, v25);
          v34 = *(this + 5);
          *(this + 5) = v33;
          *(this + 6) = v23;
          *(this + 7) = 0;
          if (v34)
          {
            operator delete(v34);
          }
        }

        else
        {
          *v22 = notification;
          v23 = v22 + 4;
        }

        *(this + 6) = v23;
        v6 = IOIteratorNext(this[22]);
        if (!v6)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_30:
      MEMORY[0x29ED53DC0](this[22]);
      return 0;
    }
  }

  return v20;
}

void MTInterferenceMonitor::releaseCachedPowerDrivers(MTInterferenceMonitor *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 22) = 0;
  }

  v4 = *(this + 5);
  for (i = *(this + 6); v4 != i; *(this + 6) = i)
  {
    IOObjectRelease(*(i - 4));
    v4 = *(this + 5);
    i = *(this + 6) - 4;
  }

  v6 = *(this + 8);
  for (j = *(this + 9); v6 != j; *(this + 9) = j)
  {
    IONotificationPortDestroy(*(j - 8));
    v6 = *(this + 8);
    j = *(this + 9) - 8;
  }
}

uint64_t MTInterferenceMonitor::sendWirelessFieldNotification(MTInterferenceMonitor *this)
{
  if (*(this + 92))
  {
    v1 = 20;
  }

  else
  {
    v1 = 21;
  }

  return (*(*this + 56))(this, v1);
}

uint64_t MTInterferenceMonitor::sendWirelessFieldAgressorNotification(MTInterferenceMonitor *this)
{
  if (*(this + 93))
  {
    v1 = 22;
  }

  else
  {
    v1 = 23;
  }

  return (*(*this + 56))(this, v1);
}

uint64_t MTInterferenceMonitor::sendUSBConnectionNotification(MTInterferenceMonitor *this)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(this + 94))
  {
    v2 = 24;
  }

  else
  {
    v2 = 25;
  }

  v3 = (*(*this + 56))(this, v2);
  if (*(this + 94) == 1)
  {
    v4 = *(this + 1);
    MTDeviceGetDeviceID();
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v11 = 0;
      v6 = "usb plugged in to charge (deviceID 0x%llX)";
LABEL_9:
      _os_log_impl(&dword_29D381000, v5, OS_LOG_TYPE_INFO, v6, buf, 0xCu);
    }
  }

  else
  {
    v7 = *(this + 1);
    MTDeviceGetDeviceID();
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v11 = 0;
      v6 = "usb unplugged (deviceID 0x%llX)";
      goto LABEL_9;
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<IONotificationPort *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OUTLINED_FUNCTION_1_3(int a1, CFRange a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, int a9, __int16 a10, char a11, char context)
{
  a2.location = 0;

  CFArrayApplyFunction(v13, a2, v12, &context);
}

CFTypeRef OUTLINED_FUNCTION_2_0()
{

  return IORegistryEntryCreateCFProperty(v2, v1, v0, 0);
}

uint64_t MTEmbeddedStats::create(uint64_t a1)
{
  if (a1 && dispatch_queue_create("com.apple.Multitouch.EmbeddedStatistics.Queue", 0))
  {
    operator new();
  }

  return 0;
}

void MTEmbeddedStatsImpl::handleTouchingContacts(uint64_t a1, uint64_t *a2)
{
  MTAbsoluteTimeGetCurrent();
  v5 = v4;
  v6 = 0;
  v8 = *a2;
  v7 = a2[1];
  v9 = (a1 + 24);
  v10 = *a2;
  do
  {
    if (v10 == a2[1])
    {
      v14 = 0;
    }

    else
    {
      v11 = *(v10 + 96);
      v12 = v6 == v11;
      if (v6 == v11)
      {
        v13 = 104;
      }

      else
      {
        v13 = 0;
      }

      if (v12)
      {
        v14 = v10;
      }

      else
      {
        v14 = 0;
      }

      v10 += v13;
    }

    MTEmbeddedStatsImpl::handleContactForContactTracker(a1, v14, v9);
    ++v6;
    v9 += 16;
  }

  while (v6 != 32);
  v15 = v7 != v8;
  if (*(a1 + 16) != v15)
  {
    *(a1 + 16) = v15;
    if (v7 == v8)
    {
      *(a1 + 2072) = v5;
      bzero((a1 + 24), 0x800uLL);
      *(a1 + 16) = 0;
    }

    else
    {

      MTEmbeddedStatsImpl::logDurationBetweenTouches(a1, v5);
    }
  }
}