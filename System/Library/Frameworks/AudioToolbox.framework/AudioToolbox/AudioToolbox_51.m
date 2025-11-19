void sub_1DDF0D2E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DDF0D2B4);
  }

  _Unwind_Resume(a1);
}

uint64_t DNNVAD_GetPowerMeterValue(uint64_t a1, float *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    result = 0;
    v4 = *(a1 + 364);
    if (!*(a1 + 384))
    {
      v4 = 0.0;
    }

    *a2 = v4;
  }

  return result;
}

uint64_t DNNVAD_GetSoundActivityValue(uint64_t a1, float *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    result = 0;
    v4 = *(a1 + 368);
    if (!*(a1 + 384))
    {
      v4 = 0.0;
    }

    *a2 = v4;
  }

  return result;
}

uint64_t DNNVAD_GetSpeechProbabilitySoftValue(uint64_t a1, float *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v5 = (*(**(a1 + 176) + 56))(*(a1 + 176));
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

void sub_1DDF0D3C4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDF0D3B8);
}

uint64_t DNNVAD_GetSpeechProbabilityHardValue(uint64_t a1, float *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v5 = (*(**(a1 + 176) + 48))(*(a1 + 176));
      result = 0;
      *a2 = v5;
    }
  }

  return result;
}

void sub_1DDF0D438(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DDF0D42CLL);
}

uint64_t DNNVAD_DestroyInstance(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 384) == 1)
    {
      v2 = *(a1 + 328);
      *(a1 + 320) = &unk_1F593A5C0;
      *(a1 + 328) = 0;
      if (v2)
      {
        (*(*v2 + 8))(v2);
      }
    }

    v3 = *(a1 + 176);
    *(a1 + 176) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(a1 + 136);
    *(a1 + 128) = &unk_1F593A5C0;
    *(a1 + 136) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    MEMORY[0x1E12BD160](a1, 0x10A0C407BDAB773);
  }

  return 0;
}

char *AUFTSpatialAC::GetScopeExtended(AUFTSpatialAC *this, int a2)
{
  v2 = this + 656;
  if (a2 != 1)
  {
    v2 = 0;
  }

  if (a2 == 2)
  {
    return this + 704;
  }

  else
  {
    return v2;
  }
}

uint64_t AUFTSpatialAC::ValidFormat(AUFTSpatialAC *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  v4 = a4->mBitsPerChannel == 32 && a4->mFormatID == 1819304813;
  v5 = (a4->mFormatFlags >> 5) & 1;
  if (!v4)
  {
    v5 = 0;
  }

  if (a4->mChannelsPerFrame == 1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t AUFTSpatialAC::SupportedNumChannels(AUFTSpatialAC *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUFTSpatialAC::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUFTSpatialAC::GetParameterValueStrings(AUFTSpatialAC *this, int a2, int a3, const __CFArray **a4)
{
  result = 0;
  values[33] = *MEMORY[0x1E69E9840];
  if (!a2 && a4)
  {
    result = 4294956417;
    if (a3 <= 24)
    {
      if (a3 > 5)
      {
        if ((a3 - 21) >= 4)
        {
          if (a3 != 6)
          {
            return result;
          }

          *values = xmmword_1E866D470;
          CFArray = CFArrayCreate(0, values, 2, 0);
        }

        else
        {
          *values = xmmword_1E866D2C0;
          CFArray = CFArrayCreate(0, values, 2, 0);
        }
      }

      else if (a3)
      {
        if (a3 == 2)
        {
          memcpy(values, &off_1E866D1B8, 0x108uLL);
          CFArray = CFArrayCreate(0, values, 33, 0);
        }

        else
        {
          if (a3 != 5)
          {
            return result;
          }

          *&values[24] = xmmword_1E866D430;
          *&values[26] = *&off_1E866D440;
          *&values[28] = xmmword_1E866D450;
          *&values[30] = *&off_1E866D460;
          *&values[16] = xmmword_1E866D3F0;
          *&values[18] = *&off_1E866D400;
          *&values[20] = xmmword_1E866D410;
          *&values[22] = *&off_1E866D420;
          *&values[8] = xmmword_1E866D3B0;
          *&values[10] = *&off_1E866D3C0;
          *&values[12] = xmmword_1E866D3D0;
          *&values[14] = *&off_1E866D3E0;
          *values = xmmword_1E866D370;
          *&values[2] = *&off_1E866D380;
          *&values[4] = xmmword_1E866D390;
          *&values[6] = *&off_1E866D3A0;
          CFArray = CFArrayCreate(0, values, 32, 0);
        }
      }

      else
      {
        *values = xmmword_1E866D1A0;
        values[2] = @"LinearMapByGeometry";
        CFArray = CFArrayCreate(0, values, 3, 0);
      }

      goto LABEL_26;
    }

    if (a3 <= 31)
    {
      if (a3 == 25 || a3 == 29)
      {
        *&values[4] = xmmword_1E866D328;
        *&values[6] = *&off_1E866D338;
        values[8] = "Fixed to FaceDown";
        *values = xmmword_1E866D308;
        *&values[2] = *&off_1E866D318;
        v8 = values;
        v9 = 9;
        CFArray = applesauce::CF::details::make_CFArrayRef<char const*>(&v8);
      }

      else
      {
        if (a3 != 30)
        {
          return result;
        }

        *values = xmmword_1E866D350;
        *&values[2] = *&off_1E866D360;
        v8 = values;
        v9 = 4;
        CFArray = applesauce::CF::details::make_CFArrayRef<char const*>(&v8);
      }

      goto LABEL_26;
    }

    if (a3 == 32)
    {
      *values = xmmword_1E866D480;
      *&values[2] = *off_1E866D490;
      CFArray = CFArrayCreate(0, values, 4, 0);
      goto LABEL_26;
    }

    if (a3 == 200 || a3 == 213)
    {
      *values = xmmword_1E866D2D0;
      *&values[2] = *&off_1E866D2E0;
      *&values[4] = xmmword_1E866D2F0;
      values[6] = "FaceDown";
      v8 = values;
      v9 = 7;
      CFArray = applesauce::CF::details::make_CFArrayRef<char const*>(&v8);
LABEL_26:
      v7 = CFArray;
      result = 0;
      *a4 = v7;
    }
  }

  return result;
}

__n128 AUFTSpatialAC::RestoreState(AUFTSpatialAC *this, const void *a2)
{
  if (!ausdk::AUBase::RestoreState(this, a2))
  {
    ++*(this + 69);
    ++*(this + 71);
    ++*(this + 73);
    result.n128_u64[0] = 0x101010101010101;
    result.n128_u64[1] = 0x101010101010101;
    *(this + 600) = result;
    *(this + 616) = result;
  }

  return result;
}

uint64_t AUFTSpatialAC::SaveExtendedScopes(AUFTSpatialAC *this, __CFData *a2)
{
  ausdk::AUScope::SaveState((this + 80), a2);

  return ausdk::AUScope::SaveState((this + 128), a2);
}

const __CFString *AUFTSpatialAC::GetParameterInfo(AUFTSpatialAC *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 0;
  buffer->unitName = 0;
  if (a2 == 2)
  {
    v12 = a3 - 800;
    if ((a3 - 800) < 0xC)
    {
      result = off_1E866D548[v12];
      v9 = dword_1DE0EE408[v12];
      v5 = flt_1DE0EE438[v12];
      v10 = flt_1DE0EE468[v12];
      v8 = flt_1DE0EE498[v12];
      v7 = 1074790400;
      goto LABEL_95;
    }

    return 4294956418;
  }

  if (a2 == 1)
  {
    v11 = a3 - 600;
    if ((a3 - 600) < 9)
    {
      result = off_1E866D500[v11];
      v9 = dword_1DE0EE354[v11];
      v5 = flt_1DE0EE378[v11];
      v10 = flt_1DE0EE39C[v11];
      v8 = flt_1DE0EE3C0[v11];
      v7 = dword_1DE0EE3E4[v11];
      goto LABEL_95;
    }

    return 4294956418;
  }

  if (a2)
  {
    return 4294956430;
  }

  v5 = 0.0;
  result = 4294956418;
  v7 = -1072693248;
  if (a3 <= 199)
  {
    v8 = 2.0;
    v9 = kAudioUnitParameterUnit_Indexed;
    result = @"(GW) Mode AU is using the drive spatialization";
    v10 = 2.0;
    switch(a3)
    {
      case 0:
        goto LABEL_95;
      case 1:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) (TEST ONLY, false for ship) Inject fake meta data";
        goto LABEL_94;
      case 2:
        v8 = 1.0;
        result = @"(GW) (TEST ONLY) num of users to inject fake meta data";
        goto LABEL_72;
      case 3:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) Go to neutral az and el if only one active input stream";
        goto LABEL_81;
      case 4:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) Go to neutral az and el if only one active output stream";
        goto LABEL_81;
      case 5:
        v8 = 6.0;
        v5 = 1.0;
        result = @"(GW) Max number of streams assigned to main canvas";
LABEL_72:
        v10 = 32.0;
        goto LABEL_95;
      case 6:
        v10 = 1.0;
        result = @"(GW) Max number of streams assigned to list/roster";
        goto LABEL_81;
      case 7:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) Enable pan to adapt to FT window aspect ratio";
        goto LABEL_81;
      case 8:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) Enable Azimuth panning when in portrait";
        goto LABEL_81;
      case 9:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) Enable Elevation panning when in landscape";
        goto LABEL_81;
      case 10:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 0.0;
        result = @"(GW) Minimum azimuth for pan when in portrait";
        goto LABEL_78;
      case 11:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 0.0;
        result = @"(GW) Maximum azimuth for pan when in portrait";
        goto LABEL_78;
      case 12:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = -15.0;
        result = @"(GW) Minimum azimuth for pan when in landscape";
        goto LABEL_78;
      case 13:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 15.0;
        result = @"(GW) Maximum azimuth for pan when in landscape";
LABEL_78:
        v10 = 180.0;
        v16 = -1020002304;
        goto LABEL_79;
      case 14:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = -15.0;
        result = @"(GW) Minimum elevation for pan when in portrait";
        goto LABEL_69;
      case 15:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 15.0;
        result = @"(GW) Maximum elevation for pan when in portrait";
        goto LABEL_69;
      case 16:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 0.0;
        result = @"(GW) Minimum elevation for pan when in landscape";
        goto LABEL_69;
      case 17:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 0.0;
        result = @"(GW) Maximum elevation for pan when in landscape";
        goto LABEL_69;
      case 18:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 1.0;
        v10 = 10.0;
        result = @"(GW) Desired render distance (m)";
        goto LABEL_95;
      case 19:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 20.0;
        result = @"(GW) Desired reverb-blend (shared with all users)";
        goto LABEL_91;
      case 20:
        v9 = kAudioUnitParameterUnit_Generic;
        v10 = 4.0;
        result = @"(GW) Exponent for energy values for (X,Y) weighting";
        goto LABEL_95;
      case 21:
        v10 = 1.0;
        result = @"(GW) Enable(true)/disable(false) single-user decorrelation, left channel";
        goto LABEL_94;
      case 22:
        v10 = 1.0;
        result = @"(GW) Enable(true)/disable(false) single-user decorrelation, right channel";
        goto LABEL_94;
      case 23:
        v10 = 1.0;
        result = @"(GW) Enable(true)/disable(false) multi-user decorrelation, left channel";
        goto LABEL_94;
      case 24:
        v10 = 1.0;
        result = @"(GW) Enable(true)/disable(false) multi-user decorrelation, right channel";
        goto LABEL_94;
      case 25:
        v8 = -1.0;
        v10 = 6.0;
        v5 = -2.0;
        result = @"(GW) Playback output orientation control (-1==use param 200, -2==use param 213)";
        goto LABEL_95;
      case 26:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) (true) Enable switching off 2nd EC ref in 1:1 FaceTime";
        goto LABEL_94;
      case 27:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) (true) Enable switching off 3rd EC ref in 1:1 FaceTime";
        goto LABEL_94;
      case 28:
        v7 = 1074790400;
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) Fake portrait panning with landscape (some iPhones)";
        goto LABEL_94;
      case 29:
        v8 = -1.0;
        v10 = 6.0;
        v5 = -2.0;
        result = @"(GW) Screen orientation value used for panning control (-1==use param 200, -2==use param 213)";
        goto LABEL_95;
      case 30:
        v8 = 1.0;
        v10 = 3.0;
        result = CFSTR("(GW) Use prominence in canvas/grid assignments (0=no, 1=AND InCanvas, 2=OR InCanvas, 3=OnlyProm ");
        goto LABEL_95;
      case 31:
        v8 = 8.0;
        result = @"(GW) Max prominence value for a stream to be assigned to canvas/grid";
        v15 = 1148846080;
        goto LABEL_92;
      case 32:
        v10 = 3.0;
        result = @"(GW) Center client on missing meta:0:ignore, 1:Cx=Cy=0, 2=XorY=0, 3:Cx=Cy=0||(X==0)||(Y==0).";
        v8 = 3.0;
        goto LABEL_95;
      case 33:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) Use U+1 specific tuning values for gain, reverb and distance";
        goto LABEL_94;
      case 34:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) Use U+1 specific tuning only if Cx=Cy=0";
        goto LABEL_94;
      case 35:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GW) If using U+1 tuning, interpolate U++/U+1 in transitions";
        goto LABEL_81;
      case 36:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 0.5;
        v10 = 5.0;
        result = @"(GW) Interpolation time in transitons (sec)";
        goto LABEL_95;
      case 37:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 1.0;
        v10 = 10.0;
        result = @"(GW) U+1 specific render distance (m)";
        goto LABEL_95;
      case 38:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 20.0;
        result = @"(GW) U+1 reverb-blend";
LABEL_91:
        v15 = 1120403456;
LABEL_92:
        v10 = *&v15;
        goto LABEL_95;
      case 39:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 0.0;
        v10 = 20.0;
        v5 = -20.0;
        result = @"(GW) U+1 specific gain (dB)";
        goto LABEL_95;
      case 40:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 0.0;
        v10 = 20.0;
        v5 = -20.0;
        result = @"(GW) U++ specific gain (dB)";
        goto LABEL_95;
      default:
        return result;
    }
  }

  if (a3 <= 399)
  {
    switch(a3)
    {
      case 200:
        v8 = 1.0;
        v10 = 6.0;
        v9 = kAudioUnitParameterUnit_Indexed;
        result = @"(GW) Assumed orientation of device ";
        goto LABEL_95;
      case 201:
        v9 = kAudioUnitParameterUnit_Generic;
        result = @"(GW) Geo model screen width in cm landscape (cm)";
        v13 = 1107951616;
        goto LABEL_45;
      case 202:
        v9 = kAudioUnitParameterUnit_Generic;
        result = @"(GW) Geo model screen height in cm in landscape (cm)";
        v13 = 1101791232;
LABEL_45:
        v8 = *&v13;
        v14 = 1140457472;
        goto LABEL_46;
      case 203:
        v9 = kAudioUnitParameterUnit_Generic;
        result = @"(GW) Geo model user viewing distance from screen (cm)";
        v8 = 60.0;
        v14 = 1148846080;
LABEL_46:
        v10 = *&v14;
        v5 = 0.01;
        goto LABEL_95;
      case 204:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 0.0;
        result = @"(GW) Rel az of eye->screen plane to speaker 0 deg az(deg)";
        goto LABEL_69;
      case 205:
        v9 = kAudioUnitParameterUnit_Generic;
        v8 = 0.0;
        result = @"(GW) Rel el of eye->screen plane to speaker 0 deg el(deg)";
LABEL_69:
        v10 = 90.0;
        v16 = -1028390912;
LABEL_79:
        v5 = *&v16;
        goto LABEL_95;
      case 206:
        v9 = kAudioUnitParameterUnit_Generic;
        v5 = 1.0;
        result = @"(GW) Device screen width in points ";
        v8 = 3450.0;
        goto LABEL_53;
      case 207:
        v9 = kAudioUnitParameterUnit_Generic;
        v5 = 1.0;
        result = @"(GW) Device screen height in points ";
        v8 = 2150.0;
LABEL_53:
        v10 = 10000.0;
        goto LABEL_95;
      case 208:
        v9 = kAudioUnitParameterUnit_Generic;
        result = @"(GW) FT window x-position in points (from top left corner)";
        goto LABEL_58;
      case 209:
        v9 = kAudioUnitParameterUnit_Generic;
        result = @"(GW) FT window y-position in points  (from top left corner)";
LABEL_58:
        v10 = 10000.0;
        goto LABEL_94;
      case 210:
        v9 = kAudioUnitParameterUnit_Generic;
        result = @"(GW) FT window width in points ";
        v8 = 345.0;
        goto LABEL_56;
      case 211:
        v9 = kAudioUnitParameterUnit_Generic;
        result = @"(GW) FT window height in points ";
        v8 = 215.0;
LABEL_56:
        v10 = 10000.0;
        v5 = 0.001;
        goto LABEL_95;
      case 212:
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(G) Voice activity";
        goto LABEL_94;
      case 213:
        v8 = 1.0;
        v10 = 6.0;
        v9 = kAudioUnitParameterUnit_Indexed;
        result = @"(GW) Assumed orientation of user interface ";
        goto LABEL_95;
      default:
        return result;
    }
  }

  if (a3 <= 402)
  {
    if (a3 == 400)
    {
      v9 = kAudioUnitParameterUnit_Generic;
      v7 = 1074790400;
      v10 = 1.0;
      result = @"(GR) Control output for decorrelator, left channel";
      goto LABEL_94;
    }

    if (a3 == 401)
    {
      v9 = kAudioUnitParameterUnit_Generic;
      v7 = 1074790400;
      v10 = 1.0;
      result = @"(GR) Control output for decorrelator, right channel";
      goto LABEL_94;
    }

    v9 = kAudioUnitParameterUnit_Generic;
    v7 = 1074790400;
    v8 = 1.0;
    v10 = 6.0;
    result = @"(GR) Monitor of internal screen orientation within controller";
  }

  else
  {
    if (a3 <= 404)
    {
      if (a3 != 403)
      {
        v7 = 1074790400;
        v10 = 1.0;
        v9 = kAudioUnitParameterUnit_Boolean;
        result = @"(GR) Enable(true)/disable(false) the 2nd EC ref";
LABEL_81:
        v8 = 1.0;
        goto LABEL_95;
      }

      v9 = kAudioUnitParameterUnit_Generic;
      v7 = 1074790400;
      result = @"(GR) Numer of active streams detected";
      v10 = 33.0;
LABEL_94:
      v8 = 0.0;
      goto LABEL_95;
    }

    if (a3 == 405)
    {
      v7 = 1074790400;
      v10 = 1.0;
      v9 = kAudioUnitParameterUnit_Boolean;
      result = @"(GR) Enable(true)/disable(false) the 3rd EC ref";
      goto LABEL_81;
    }

    if (a3 != 406)
    {
      return result;
    }

    v9 = kAudioUnitParameterUnit_Generic;
    v7 = 1074790400;
    v8 = 1.0;
    v10 = 6.0;
    result = @"(GR) Monitor of internal audio render orientation within controller";
  }

LABEL_95:
  buffer->cfNameString = result;
  buffer->flags = 0x8000000;
  CFStringGetCString(result, buffer->name, 52, 0x8000100u);
  result = 0;
  buffer->clumpID = 0;
  flags = buffer->flags;
  buffer->unit = v9;
  buffer->minValue = v5;
  buffer->maxValue = v10;
  buffer->defaultValue = v8;
  buffer->flags = flags | v7;
  return result;
}

uint64_t AUFTSpatialAC::GetParameterList(AUFTSpatialAC *this, int a2, unsigned int *a3, unsigned int *a4)
{
  switch(a2)
  {
    case 0:
      if (!a3)
      {
        v4 = 62;
        goto LABEL_11;
      }

      *a3 = xmmword_1DE096230;
      *(a3 + 1) = xmmword_1DE09BC60;
      *(a3 + 2) = xmmword_1DE09C1E0;
      *(a3 + 3) = xmmword_1DE09C0E0;
      *(a3 + 4) = xmmword_1DE09C1F0;
      *(a3 + 5) = xmmword_1DE09C200;
      *(a3 + 6) = xmmword_1DE09C210;
      *(a3 + 7) = xmmword_1DE09CD40;
      *(a3 + 8) = xmmword_1DE09CD50;
      *(a3 + 9) = xmmword_1DE09CD60;
      v4 = 62;
      v5 = 406;
      v6 = 405;
      v7 = 404;
      v8 = 403;
      v9 = 402;
      v10 = 401;
      v11 = 400;
      *(a3 + 10) = xmmword_1DE09DFE0;
      *(a3 + 11) = xmmword_1DE09DFF0;
      v12 = 213;
      v13 = 61;
      v14 = 60;
      v15 = 59;
      *(a3 + 12) = xmmword_1DE09E000;
      v16 = 58;
      v17 = 57;
      v18 = 56;
      v19 = 55;
      v20 = 54;
      *(a3 + 26) = 0xD4000000D3;
      goto LABEL_10;
    case 2:
      if (!a3)
      {
        v4 = 12;
        goto LABEL_11;
      }

      v4 = 12;
      v5 = 811;
      v6 = 810;
      *a3 = xmmword_1DE09DFD0;
      v7 = 809;
      v8 = 808;
      v9 = 807;
      v10 = 806;
      v11 = 805;
      v12 = 804;
      v13 = 11;
      v14 = 10;
      v15 = 9;
      v16 = 8;
      v17 = 7;
      v18 = 6;
      v19 = 5;
      v20 = 4;
LABEL_10:
      a3[v20] = v12;
      a3[v19] = v11;
      a3[v18] = v10;
      a3[v17] = v9;
      a3[v16] = v8;
      a3[v15] = v7;
      a3[v14] = v6;
      a3[v13] = v5;
LABEL_11:
      result = 0;
      *a4 = v4;
      return result;
    case 1:
      if (!a3)
      {
        v4 = 9;
        goto LABEL_11;
      }

      v4 = 9;
      *a3 = 600;
      v5 = 608;
      v6 = 607;
      v7 = 606;
      v8 = 605;
      v9 = 604;
      v10 = 603;
      v11 = 602;
      v12 = 601;
      v13 = 8;
      v14 = 7;
      v15 = 6;
      v16 = 5;
      v17 = 4;
      v18 = 3;
      v19 = 2;
      v20 = 1;
      goto LABEL_10;
  }

  return 4294956430;
}

uint64_t AUFTSpatialAC::SetBusCount(AUFTSpatialAC *this, int a2, unsigned int a3)
{
  v3 = a3 - 1;
  if (a2 == 1 && v3 < 0x20)
  {
    v4 = 80;
LABEL_7:
    ausdk::AUScope::SetNumberOfElements((this + v4), a3);
    return 0;
  }

  v5 = 4294956445;
  if (a2 == 2 && v3 <= 0x1F)
  {
    v4 = 128;
    goto LABEL_7;
  }

  return v5;
}

uint64_t AUFTSpatialAC::BusCountWritable(AUFTSpatialAC *this, int a2)
{
  if ((a2 - 1) > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 17) ^ 1;
  }

  return v2 & 1;
}

ausdk::AUInputElement *AUFTSpatialAC::Render(AUFTSpatialAC *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v8 = 0;
  v9 = 0;
  v31 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v10 = *(this + 15);
    if (v10)
    {
      LODWORD(v11) = (*(*v10 + 24))(v10);
    }

    else
    {
      v11 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v9 >= v11)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 80), v9);
    if (Element && *(Element + 172))
    {
      result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, v9);
      if (v14)
      {
        result = ausdk::AUInputElement::PullInput(result, a2, a3, v9, a4);
      }

      if (result)
      {
        return result;
      }
    }

    else
    {
      v8 = 1;
    }

    v9 = (v9 + 1);
  }

  v15 = 0;
  memset(v30, 0, sizeof(v30));
  do
  {
    v16 = *(this + 21);
    if (v16)
    {
      LODWORD(v17) = (*(*v16 + 24))(v16);
    }

    else
    {
      v17 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (v15 >= v17)
    {
      v19 = 0;
    }

    else
    {
      v18 = ausdk::AUScope::GetElement((this + 128), v15);
      if (!v18)
      {
LABEL_43:
        ausdk::Throw(0xFFFFD583);
      }

      v19 = ausdk::AUIOElement::PrepareBuffer(v18, a4);
    }

    *(v30 + v15++) = v19;
  }

  while (v15 != 32);
  if (v8)
  {
    return 0;
  }

  v20 = 0;
  memset(v29, 0, sizeof(v29));
  do
  {
    v21 = *(this + 15);
    if (v21)
    {
      LODWORD(v22) = (*(*v21 + 24))(v21);
    }

    else
    {
      v22 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v20 >= v22)
    {
      v24 = 0;
    }

    else
    {
      v23 = ausdk::AUScope::GetElement((this + 80), v20);
      if (!v23)
      {
        goto LABEL_43;
      }

      if (!*(v23 + 144))
      {
        ausdk::Throw(0xFFFFFFFFLL);
      }

      v24 = *(v23 + 152) + 48;
    }

    *(v29 + v20++) = v24;
  }

  while (v20 != 32);
  v25 = *(this + 15);
  if (v25)
  {
    v26 = (*(*v25 + 24))(v25);
  }

  else
  {
    v26 = (*(this + 13) - *(this + 12)) >> 3;
  }

  v27 = *(this + 21);
  if (v27)
  {
    v28 = (*(*v27 + 24))(v27);
  }

  else
  {
    v28 = (*(this + 19) - *(this + 18)) >> 3;
  }

  return (*(*this + 184))(this, a2, a4, v26, v29, v28, v30);
}

uint64_t AUFTSpatialAC::ProcessMultipleBufferLists(AUFTSpatialAC *this, unsigned int *a2, vDSP_Length __N, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v8 = __N;
  __C = 0.0;
  v10 = *(this + 69);
  if (*(this + 70) != v10)
  {
    AUFTSpatialAC::UpdateGlobalVariableState(this);
    *(this + 70) = v10;
    *(this + 72) = *(this + 71);
    *(this + 752) = 1;
    v12 = *(this + 73);
    if (*(this + 74) == v12)
    {
LABEL_76:
      AUFTSpatialAC::MakeDependentPositionData(this);
      goto LABEL_77;
    }

    goto LABEL_8;
  }

  v11 = *(this + 71);
  if (*(this + 72) != v11)
  {
    AUFTSpatialAC::UpdateGlobalMetaVariableState(this);
    *(this + 72) = v11;
    *(this + 752) = 1;
    v12 = *(this + 73);
    if (*(this + 74) == v12)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = *(this + 73);
  if (*(this + 74) != v12)
  {
LABEL_8:
    AUFTSpatialAC::UpdateInputVariableState(this);
    *(this + 600) = 0u;
    *(this + 616) = 0u;
    *(this + 74) = v12;
    *(this + 752) = 1;
LABEL_9:
    buf[0] = 0;
    v386 = 0;
    LOBYTE(v385) = 0;
    v384 = 0;
    v13 = 0.0;
    v14 = *(this + 159);
    v380 = a7;
    __Na = v8;
    if (!v14)
    {
LABEL_13:
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0.0;
LABEL_57:
      v40 = *(this + 668);
      v41.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      v42 = v23 | 2;
      v43 = v23;
      v44 = v22;
      v45 = v43;
      if (!v22)
      {
        v42 = v43;
      }

      if (v18)
      {
        v42 |= 4u;
      }

      if (v17)
      {
        v42 |= 8u;
      }

      if (v19)
      {
        v42 |= 0x10u;
      }

      if (v20)
      {
        v42 |= 0x20u;
      }

      if (v21)
      {
        v46 = v42 | 0x40;
      }

      else
      {
        v46 = v42;
      }

      if (v46)
      {
        rep = v41.__d_.__rep_;
        AU::FTSpatialAC::GetMessenger(v41.__d_.__rep_);
        v47 = v40[1];
        if (!v47 || (__N_4 = *v40, (v48 = std::__shared_weak_count::lock(v47)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        if (!*MEMORY[0x1E69E3C08])
        {
          __break(1u);
LABEL_507:
          dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
          goto LABEL_88;
        }

        *&v49 = __N_4;
        *(&v49 + 1) = v48;
        __N_4b = v49;
        v50 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v50 + 8) = 0;
        *(v50 + 16) = 0;
        *(v50 + 24) = __N_4b;
        *(v50 + 40) = v13;
        *(v50 + 44) = v45;
        *(v50 + 48) = v24;
        *(v50 + 52) = v44;
        *(v50 + 56) = *buf;
        *(v50 + 60) = v18;
        *(v50 + 64) = v385;
        *(v50 + 68) = v17;
        *(v50 + 72) = v19;
        *(v50 + 80) = v20;
        *(v50 + 88) = v21;
        *(v50 + 96) = v46;
        *(v50 + 104) = rep;
        *v50 = &unk_1F5920C58;
        caulk::concurrent::messenger::enqueue(&AU::FTSpatialAC::GetMessenger(void)::sMessenger, v50);
      }

      a7 = v380;
      v8 = __Na;
      goto LABEL_76;
    }

    v15 = this + 1040;
    while (1)
    {
      v16 = *v15;
      v15 += 44;
      if (v16 == 1)
      {
        break;
      }

      if (!--v14)
      {
        goto LABEL_13;
      }
    }

    v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v26 & 1) == 0)
    {
      goto LABEL_505;
    }

    Parameter = ausdk::AUElement::GetParameter(v25, 0xD2u);
    v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v29 & 1) == 0)
    {
      goto LABEL_505;
    }

    v30 = ausdk::AUElement::GetParameter(v28, 0xD3u);
    v23 = Parameter <= 0.0;
    if (Parameter > 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = Parameter;
    }

    if (v30 > 0.0)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v30;
    }

    if ((*(this + 230) & 0x80000000) != 0 && v30 > 0.0 && Parameter > 0.0)
    {
      v31 = *(this + 200);
      if ((v31 - 1) > 1)
      {
        if ((v31 - 3) > 1 || v30 <= Parameter)
        {
          goto LABEL_32;
        }

        v32 = &v384;
        v33 = &v385;
        goto LABEL_31;
      }

      if (Parameter > v30)
      {
        v32 = &v386;
        v33 = buf;
LABEL_31:
        *v33 = v30 / Parameter;
        *v32 = 1;
      }
    }

LABEL_32:
    v34 = *(this + 159);
    if (v34)
    {
      v35 = 0;
      v19 = 0;
      v21 = 0;
      v20 = 0;
      v36 = v30 <= 0.0 || Parameter <= 0.0;
      v37 = !v36;
      v38 = (this + 1052);
      do
      {
        if (*(v38 - 12) == 1)
        {
          if (Parameter <= 0.0 || *(v38 - 1) <= Parameter)
          {
            v39 = 1;
          }

          else
          {
            if (v35 >= 0x20)
            {
              goto LABEL_520;
            }

            v39 = 0;
            v19 |= 1 << v35;
          }

          if (v30 > 0.0)
          {
            if (*v38 <= v30)
            {
              if ((v37 & v39) == 1)
              {
                if (v35 >= 0x20)
                {
LABEL_520:
                  std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
                }

                v21 |= 1 << v35;
              }
            }

            else
            {
              if (v35 >= 0x20)
              {
                goto LABEL_520;
              }

              v20 |= 1 << v35;
            }
          }
        }

        ++v35;
        v38 += 11;
      }

      while (v34 != v35);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v19 = 0;
    }

    v18 = v386;
    v17 = v384;
    v22 = v30 <= 0.0;
    goto LABEL_57;
  }

LABEL_77:
  if (*(this + 84) < v8)
  {
    return 4294956422;
  }

  if (*a5)
  {
    if ((*a5)->mNumberBuffers != 1)
    {
      if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
      {
        dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
      }

      v52 = AUFTSpatialAC::getAUSLog(void)::gLog;
      if (!os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        return 4294956428;
      }

      *buf = 0;
      v53 = "Input bus must be mono\n";
      goto LABEL_283;
    }

    if (*a7)
    {
      if ((*a7)->mNumberBuffers != 1)
      {
        if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
        {
          dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
        }

        v52 = AUFTSpatialAC::getAUSLog(void)::gLog;
        if (!os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
        {
          return 4294956428;
        }

        *buf = 0;
        v53 = "Output bus must be mono\n";
LABEL_283:
        _os_log_error_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_ERROR, v53, buf, 2u);
        return 4294956428;
      }
    }

    else
    {
      if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
      {
        dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
      }

      v55 = AUFTSpatialAC::getAUSLog(void)::gLog;
      if (os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1DDB85000, v55, OS_LOG_TYPE_ERROR, "At least one output bus, bus1, is need. It is a required output\n", buf, 2u);
      }
    }

    if (*(this + 752) == 1)
    {
      v56 = *(this + 194);
      for (i = *(this + 158); v56 < i; ++v56)
      {
        v58 = a7[v56];
        if (v58)
        {
          vDSP_vfill(this + 161, v58->mBuffers[0].mData, 1, v8);
          i = *(this + 158);
        }
      }
    }

    v59 = *(this + 135);
    if (v59 == 0.0)
    {
      v61 = 50.0;
    }

    else
    {
      v60 = v8;
      if (v8 < 1.0)
      {
        v60 = 1.0;
      }

      v61 = v59 / v60;
    }

    v62 = this + 828;
    *(this + 1331) = v61;
    v381 = a7;
    __Nb = v8;
    if (*(this + 544) == 1)
    {
      v63 = *(this + 158);
      if (v63)
      {
        v64 = (v63 + 15) & 0x1FFFFFFF0;
        v65 = vdupq_n_s64(v63 - 1);
        v66 = xmmword_1DE095290;
        v67 = xmmword_1DE0952A0;
        v68 = xmmword_1DE0952B0;
        v69 = xmmword_1DE0952C0;
        v70 = xmmword_1DE0952D0;
        v71 = xmmword_1DE095220;
        v72 = xmmword_1DE095150;
        v73 = xmmword_1DE095160;
        v74 = this + 2488;
        v75 = vdupq_n_s64(0x10uLL);
        do
        {
          v76 = vmovn_s64(vcgeq_u64(v65, v73));
          if (vuzp1_s8(vuzp1_s16(v76, *v65.i8), *v65.i8).u8[0])
          {
            *v74 = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v76, *&v65), *&v65).i8[1])
          {
            v74[24] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v65, *&v72))), *&v65).i8[2])
          {
            v74[48] = 0;
            v74[72] = 0;
          }

          v77 = vmovn_s64(vcgeq_u64(v65, v71));
          if (vuzp1_s8(*&v65, vuzp1_s16(v77, *&v65)).i32[1])
          {
            v74[96] = 0;
          }

          if (vuzp1_s8(*&v65, vuzp1_s16(v77, *&v65)).i8[5])
          {
            v74[120] = 0;
          }

          if (vuzp1_s8(*&v65, vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v65, *&v70)))).i8[6])
          {
            v74[144] = 0;
            v74[168] = 0;
          }

          v78 = vmovn_s64(vcgeq_u64(v65, v69));
          if (vuzp1_s8(vuzp1_s16(v78, *v65.i8), *v65.i8).u8[0])
          {
            v74[192] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v78, *&v65), *&v65).i8[1])
          {
            v74[216] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v65, *&v68))), *&v65).i8[2])
          {
            v74[240] = 0;
            v74[264] = 0;
          }

          v79 = vmovn_s64(vcgeq_u64(v65, v67));
          if (vuzp1_s8(*&v65, vuzp1_s16(v79, *&v65)).i32[1])
          {
            v74[288] = 0;
          }

          if (vuzp1_s8(*&v65, vuzp1_s16(v79, *&v65)).i8[5])
          {
            v74[312] = 0;
          }

          if (vuzp1_s8(*&v65, vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v65, *&v66)))).i8[6])
          {
            v74[336] = 0;
            v74[360] = 0;
          }

          v71 = vaddq_s64(v71, v75);
          v72 = vaddq_s64(v72, v75);
          v73 = vaddq_s64(v73, v75);
          v70 = vaddq_s64(v70, v75);
          v69 = vaddq_s64(v69, v75);
          v68 = vaddq_s64(v68, v75);
          v67 = vaddq_s64(v67, v75);
          v74 += 384;
          v66 = vaddq_s64(v66, v75);
          v64 -= 16;
        }

        while (v64);
      }

      v80 = *(this + 159);
      if (v80)
      {
        v81 = 0;
        v82 = 0;
        v83 = *(this + 194);
        v84 = this + 1040;
        do
        {
          if (v82 >= v83)
          {
            v82 = 0;
          }

          *(this + v81 + 1029) = v82;
          *(v84 - 1) = v81;
          *v84 = 1;
          v84 += 44;
          *(this + 24 * v82++ + 2488) = 1;
          ++v81;
        }

        while (v80 != v81);
      }

      if (v80 >= v63)
      {
        v85 = v63;
      }

      else
      {
        v85 = v80;
      }

      if (v85)
      {
        v86 = this + 2472;
        do
        {
          v86[16] = 1;
          *v86 = xmmword_1DE097CF0;
          v86 += 24;
          --v85;
        }

        while (v85);
      }

      v87 = v63 - v80;
      if (v63 > v80)
      {
        v88 = this + 24 * v80 + 2472;
        do
        {
          v88[16] = 0;
          *v88 = xmmword_1DE09E010;
          v88 += 24;
          --v87;
        }

        while (v87);
      }

      goto LABEL_353;
    }

    if (*(this + 223) == 0.0)
    {
      vDSP_vfill(this + 162, this + 1197, 1, 0x20uLL);
    }

    else if (*(this + 159))
    {
      v89 = 0;
      v90 = 0;
      v91 = this + 4788;
      do
      {
        v92 = 0.0;
        v93 = 0.0;
        if (v91[v89 - 3748] == 1)
        {
          v94 = a5[v90];
          if (v94)
          {
            vDSP_svesq(v94->mBuffers[0].mData, 1, &__C, __Nb);
            v93 = powf(__C, *(this + 223));
          }
        }

        __C = v93;
        if ((LODWORD(v93) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v92 = (v93 * 0.4) + (*&v91[4 * v90] * 0.6);
        }

        *&v91[4 * v90++] = v92;
        v89 += 44;
      }

      while (v90 < *(this + 159));
    }

    if (*(this + 760) == 1)
    {
      if (*(this + 752) == 1)
      {
        v95 = *(this + 211);
        if (v95)
        {
          v96 = *(this + 250) / v95;
          v97 = (this + 4116);
          v98 = (this + 1040);
          v99 = v96 * 0.5;
          v100 = *(this + 211);
          do
          {
            *v98 = 257;
            *(v98 + 32) = 1;
            *(v98 + 2) = 1;
            v98[2] = v99;
            v99 = v96 + v99;
            v98[3] = 0.0;
            v98[4] = 0.0;
            v98 += 11;
            *v97++ = 32;
            --v100;
          }

          while (v100);
        }

        v101 = *(this + 159);
        if (v95 < v101)
        {
          v102 = v101 - v95;
          v103 = (this + 4 * v95 + 4116);
          v104 = this + 44 * v95 + 1040;
          do
          {
            *v104 = 0;
            v104[32] = 0;
            v104[2] = 0;
            *(v104 + 1) = 0;
            *(v104 + 4) = 0;
            v104 += 44;
            *v103++ = 32;
            --v102;
          }

          while (v102);
        }
      }

      *(this + 752) = 0;
    }

    v105 = *(this + 158);
    if (v105)
    {
      v106 = (this + 3464);
      v107 = this + 2488;
      do
      {
        *(v106 - 32) = 0;
        *v106++ = 0;
        *v107 = 0;
        v107 += 24;
        --v105;
      }

      while (v105);
    }

    v80 = *(this + 159);
    if (v80)
    {
      v108 = this + 4372;
      v109 = (this + 4660);
      v110 = this + 4372;
      v111 = *(this + 159);
      do
      {
        *(v109 - 64) = 32;
        *(v109 - 32) = 32;
        *v109++ = 32;
        *v110++ = 0;
        --v111;
      }

      while (v111);
      v112 = 0;
      *(this + 1026) = 0;
      v113 = (this + 4116);
      v114 = this + 1040;
      v115 = v80;
      v116 = (this + 4116);
      do
      {
        v117 = *v114;
        v114 += 44;
        if (v117)
        {
          *(this + 1026) = ++v112;
        }

        else
        {
          *v116 = 32;
        }

        ++v116;
        --v115;
      }

      while (v115);
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = this + 1072;
      do
      {
        if (*(v121 - 32) == 1 && *v121 == 1)
        {
          *(this + v115 + 1101) = v118;
          LODWORD(v115) = v115 + 1;
          v122 = *v113;
          if (v122 >= *(this + 191))
          {
            *(this + v119++ + 1133) = v118;
          }

          else
          {
            *v108 = 1;
            ++*(this + v122 + 834);
            *(this + v120++ + 1165) = v118;
          }
        }

        ++v118;
        ++v108;
        ++v113;
        v121 += 44;
      }

      while (v80 != v118);
    }

    else
    {
      v120 = 0;
      v119 = 0;
      *(this + 1026) = 0;
    }

    v123 = *(this + 191);
    v124 = 0;
    v125 = (v123 - 1);
    if (v123 - 1 >= 0)
    {
      v126 = this + 3336;
      v127 = this + 3464;
      do
      {
        if (!*&v126[4 * v125])
        {
          *&v127[4 * v124++] = v125;
        }

        v36 = v125-- <= 0;
      }

      while (!v36);
      if (!v119 && v124)
      {
        if (v123)
        {
          v128 = 0;
          v129 = 0;
          v130 = 0;
          v131 = 0;
          do
          {
            v132 = *&v126[4 * v128];
            v133 = v132 >= v131;
            v134 = v132 >= v131;
            if (v132 > v131)
            {
              v131 = *&v126[4 * v128];
            }

            v130 |= v134;
            if (v133)
            {
              v129 = v128;
            }

            ++v128;
          }

          while (v123 != v128);
          if (((v131 > 1) & v130) != 0)
          {
            if (!v80)
            {
              goto LABEL_269;
            }

            v135 = 0;
            v136 = this + 4116;
            v137 = (this + 1052);
            v138 = 0.0;
            v139 = (this + 4116);
            v140 = v80;
            v141 = 0.0;
            do
            {
              v142 = *v139++;
              if (v142 == v129)
              {
                v141 = v141 + *(v137 - 1);
                v138 = v138 + *v137;
                ++v135;
              }

              v137 += 11;
              --v140;
            }

            while (v140);
            v143 = 0;
            v144 = 0;
            v145 = 0;
            v146 = 1.0 / v135;
            v147 = v141 * v146;
            v148 = v138 * v146;
            do
            {
              if (v136[v143 - 3076] == 1 && *&v136[4 * v144] == v129)
              {
                if (((((v148 - *&v136[v143 - 3064]) * (v148 - *&v136[v143 - 3064])) + ((v147 - *&v136[v143 - 3068]) * (v147 - *&v136[v143 - 3068]))) >= -1.0) | (v140 ^ 1) & 1)
                {
                  v145 = v144;
                }

                LODWORD(v140) = ((((v148 - *&v136[v143 - 3064]) * (v148 - *&v136[v143 - 3064])) + ((v147 - *&v136[v143 - 3068]) * (v147 - *&v136[v143 - 3068]))) >= -1.0) | v140 ^ 1 | v140;
              }

              ++v144;
              v143 += 44;
            }

            while (v80 != v144);
            if (v140)
            {
              v149 = *&v127[4 * v124 - 4];
              *&v136[4 * v145] = v149;
              ++*&v126[4 * v149];
              --*&v126[4 * v129];
            }
          }
        }

LABEL_263:
        if (v80)
        {
          v195 = *(this + 193);
          v196 = (this + 4116);
          v197 = v80;
          v198 = this + 1072;
          do
          {
            if (*(v198 - 32) == 1 && (*v198 & 1) == 0)
            {
              *v196 = v195;
              ++*(this + v195 + 834);
            }

            ++v196;
            v198 += 44;
            --v197;
          }

          while (v197);
        }

LABEL_269:
        v63 = *(this + 158);
        if (v63)
        {
          v199 = (this + 3336);
          v200 = this + 2488;
          v201 = *(this + 158);
          do
          {
            if (*v199++)
            {
              *v200 = 1;
            }

            v200 += 24;
            --v201;
          }

          while (v201);
          *(this + 1027) = 0;
          v203 = this + 2488;
          v204 = v63;
          do
          {
            v205 = *v203;
            v203 += 24;
            if (v205 == 1)
            {
              LODWORD(v201) = v201 + 1;
              *(this + 1027) = v201;
            }

            --v204;
          }

          while (v204);
          v206 = *(this + 1026);
          v207 = v206 != 1;
          v208 = v201 == 1;
          if (v201 == 1)
          {
            v209 = 896;
            v210 = 900;
          }

          else
          {
            v209 = 904;
            v210 = 908;
          }
        }

        else
        {
          v208 = 0;
          *(this + 1027) = 0;
          v206 = *(this + 1026);
          v207 = v206 != 1;
          v210 = 908;
          v209 = 904;
        }

        if (!v207)
        {
          v209 = 896;
          v210 = 900;
        }

        *(this + 256) = *(this + v209);
        *(this + 257) = *(this + v210);
        if (v80)
        {
          v211 = 0;
          v212 = this + 1040;
          v213 = 1;
          do
          {
            v214 = *v212;
            v212 += 44;
            if (v214 == 1 && ((*(this + 123) >> v211) & 1) != 0)
            {
              break;
            }

            v213 = ++v211 < v80;
          }

          while (v80 != v211);
        }

        else
        {
          v213 = 0;
        }

        v62[3284] = 0;
        if (*(this + 783) == 1)
        {
          v215 = v213 & *(this + 784);
          v216 = 1;
          if ((v215 & 1) != 0 || (*(this + 784) & 1) == 0)
          {
            v62[3284] = 1;
            v216 = 0;
          }
        }

        else
        {
          v216 = 1;
        }

        v217 = (v207 | v216) == 0;
        v218 = 940;
        if (!v217)
        {
          v218 = 884;
        }

        v219 = 944;
        if (!v217)
        {
          v219 = 888;
        }

        v220 = 948;
        if (!v217)
        {
          v220 = 952;
        }

        v221 = *(this + v218);
        *(this + 1325) = v221;
        v222 = *(this + v219);
        *(this + 1326) = v222;
        v223 = *(this + v220);
        *(this + 1327) = v223;
        if (*(this + 785) != 1)
        {
          *(this + 1328) = v221;
          *(this + 1329) = v222;
          *(this + 1330) = v223;
          goto LABEL_332;
        }

        v224 = *(this + 1330);
        if (v224 >= v223)
        {
          if (v224 <= v223)
          {
            v223 = *(this + 1330);
LABEL_315:
            v227 = *(this + 1328);
            if (v227 >= v221)
            {
              if (v227 <= v221)
              {
                v221 = *(this + 1328);
LABEL_324:
                v230 = *(this + 1329);
                if (v230 >= v222)
                {
                  if (v230 <= v222)
                  {
                    goto LABEL_332;
                  }

                  v232 = v230 - *(this + 1333);
                  if (v232 > v222)
                  {
                    v222 = v232;
                  }
                }

                else
                {
                  v231 = v230 + *(this + 1333);
                  if (v231 < v222)
                  {
                    v222 = v231;
                  }
                }

                *(this + 1329) = v222;
LABEL_332:
                if (!*(this + 189) || v206 == 1 && (*(this + 781) & 1) != 0 || (*(this + 782) & v208 & 1) != 0)
                {
                  if (v63)
                  {
                    v233 = (this + 3336);
                    v234 = (this + 2492);
                    v235 = v63;
                    do
                    {
                      v237 = *v233++;
                      v236 = v237;
                      if (v237)
                      {
                        v238 = *v62;
                        v236 = 1;
                        v239 = v221;
                        v240 = LODWORD(v223);
                        v241 = this + 5316;
                      }

                      else
                      {
                        v239 = 1.0;
                        v238 = 0;
                        v240 = -1024458752;
                        v241 = this + 888;
                      }

                      *(v234 - 4) = v236;
                      *(v234 - 5) = v238;
                      *(v234 - 3) = v239;
                      *(v234 - 2) = v240;
                      *v234 = *v241;
                      v234 += 6;
                      --v235;
                    }

                    while (v235);
                  }

                  goto LABEL_342;
                }

                AUFTSpatialAC::SetRenderTuningValsToUse(this);
                v260 = *(this + 189);
                v261 = *(this + 159);
                if (v261)
                {
                  v262 = (this + 1064);
                  do
                  {
                    v263 = *(v262 - 1);
                    v264 = 1.0;
                    if (v263 > 1.0 || (v264 = 0.0, v263 < 0.0))
                    {
                      *(v262 - 1) = v264;
                    }

                    v265 = 1.0;
                    if (*v262 > 1.0 || (v265 = 0.0, *v262 < 0.0))
                    {
                      *v262 = v265;
                    }

                    v262 += 11;
                    --v261;
                  }

                  while (v261);
                }

                v266 = *(this + 158);
                if (v266)
                {
                  v267 = (this + 3336);
                  do
                  {
                    *v267 = 0;
                    v267[64] = 0;
                    v267[96] = 0;
                    ++v267;
                    --v266;
                  }

                  while (v266);
                }

                vDSP_vfill(this + 161, this + 994, 1, *(this + 194));
                v268 = *(this + 819);
                v269 = *(this + 818);
                v270 = *(this + 821);
                v271 = *(this + 820);
                v272 = *(this + 233);
                v273 = *(this + 936);
                v274 = (v272 - 1) & 0xFFFFFFFD;
                if (v260 == 1)
                {
                  v80 = *(this + 159);
                  if (v80)
                  {
                    v326 = 0;
                    v327 = (this + 5044);
                    v328 = (this + 1064);
                    do
                    {
                      if (v272 && ((v273 & 1) != 0 || !v274 && (*(this + 122) & (1 << v326)) != 0))
                      {
                        *v327 = 0.0;
                        v329 = 0.0;
                      }

                      else
                      {
                        v330 = *(v328 - 1);
                        if (v330 < 0.0)
                        {
                          v330 = 0.0;
                        }

                        if (v330 > 1.0)
                        {
                          v330 = 1.0;
                        }

                        *v327 = v269 + (v330 * (v268 - v269));
                        v331 = 1.0 - *v328;
                        if (v331 < 0.0)
                        {
                          v331 = 0.0;
                        }

                        if (v331 > 1.0)
                        {
                          v331 = 1.0;
                        }

                        v329 = v271 + (v331 * (v270 - v271));
                      }

                      v327[32] = v329;
                      ++v326;
                      ++v327;
                      v328 += 11;
                    }

                    while (v80 != v326);
                    goto LABEL_475;
                  }
                }

                else
                {
                  if (v260 != 2)
                  {
                    LODWORD(v80) = *(this + 159);
LABEL_475:
                    if (v80)
                    {
                      v332 = (this + 5172);
                      v333 = v80;
                      v334 = v80;
                      do
                      {
                        v335 = *(v332 - 32);
                        v336 = v268;
                        if (v335 > v268 || (v336 = v269, v335 < v269))
                        {
                          *(v332 - 32) = v336;
                        }

                        v337 = v270;
                        if (*v332 > v270 || (v337 = v271, *v332 < v271))
                        {
                          *v332 = v337;
                        }

                        ++v332;
                        --v334;
                      }

                      while (v334);
                      v338 = (this + 4116);
                      v339 = this + 1040;
                      do
                      {
                        v340 = *v339;
                        v339 += 44;
                        if (v340 == 1)
                        {
                          v341 = *v338;
                          if (v341 < *(this + 194))
                          {
                            ++*(this + v341 + 834);
                            v342 = v338[168] + 1.0e-20;
                            *(this + v341 + 994) = *(this + v341 + 994) + v342;
                            *(this + v341 + 898) = *(this + v341 + 898) + (v342 * v338[232]);
                            *(this + v341 + 930) = *(this + v341 + 930) + (v342 * v338[264]);
                          }
                        }

                        ++v338;
                        --v333;
                      }

                      while (v333);
                    }

                    goto LABEL_489;
                  }

                  __N_4a = *(this + 822);
                  v275 = *(this + 206);
                  v373 = atanf((__N_4a * 0.5) / v275);
                  v371 = *(this + 823);
                  v370 = atanf((v371 * 0.5) / v275);
                  v80 = *(this + 159);
                  if (v80)
                  {
                    v276 = 0;
                    v277 = (this + 5044);
                    v278 = (this + 1064);
                    do
                    {
                      if (v272 && ((v273 & 1) != 0 || !v274 && (*(this + 122) & (1 << v276)) != 0))
                      {
                        *v277 = 0.0;
                        v279 = 0.0;
                      }

                      else
                      {
                        v280 = *(v278 - 1);
                        if (v280 < 0.0)
                        {
                          v280 = 0.0;
                        }

                        if (v280 > 1.0)
                        {
                          v280 = 1.0;
                        }

                        v281 = ((v373 + atanf((__N_4a * (v280 + -0.5)) / v275)) * 0.5) / v373;
                        if (v281 < 0.0)
                        {
                          v281 = 0.0;
                        }

                        if (v281 > 1.0)
                        {
                          v281 = 1.0;
                        }

                        *v277 = v269 + (v281 * (v268 - v269));
                        v282 = 1.0 - *v278;
                        if (v282 < 0.0)
                        {
                          v282 = 0.0;
                        }

                        if (v282 > 1.0)
                        {
                          v282 = 1.0;
                        }

                        v283 = ((v370 + atanf((v371 * (v282 + -0.5)) / v275)) * 0.5) / v370;
                        if (v283 < 0.0)
                        {
                          v283 = 0.0;
                        }

                        if (v283 > 1.0)
                        {
                          v283 = 1.0;
                        }

                        v279 = v271 + (v283 * (v270 - v271));
                      }

                      v277[32] = v279;
                      ++v276;
                      ++v277;
                      v278 += 11;
                    }

                    while (v80 != v276);
                    goto LABEL_475;
                  }
                }

LABEL_489:
                v63 = *(this + 158);
                if (v63)
                {
                  v343 = 0;
                  v344 = 0;
                  v345 = (this + 3336);
                  do
                  {
                    v346 = (this + v343);
                    if (*(this + v343 + 3336))
                    {
                      v347 = 1.0 / v346[994];
                      v348 = (this + v344);
                      v348[618] = *(this + 207) + ((v346[898] * v347) * *(this + 824));
                      v348[619] = *(this + 208) + ((v347 * v346[930]) * *(this + 825));
                      v348[620] = *(this + 1328);
                      v349 = *(this + 1330);
                      v350 = 1;
                      v351 = this + 5316;
                    }

                    else
                    {
                      v350 = 0;
                      v352 = this + v344;
                      *(v352 + 309) = 0;
                      *(v352 + 620) = 1065353216;
                      v349 = -1024458752;
                      v351 = this + 888;
                    }

                    v353 = this + v344;
                    *(v353 + 621) = v349;
                    v353[2488] = v350;
                    *(v353 + 623) = *v351;
                    v344 += 24;
                    v343 += 4;
                  }

                  while (24 * v63 != v344);
                  v354 = (this + 2476);
                  v355 = v63;
                  do
                  {
                    if (*v345++)
                    {
                      v357 = *(v354 - 1);
                      v358 = 1127481344;
                      if (v357 > 180.0 || (v358 = -1020002304, v357 < -180.0))
                      {
                        *(v354 - 1) = v358;
                      }

                      v359 = 1119092736;
                      if (*v354 > 90.0 || (v359 = -1028390912, *v354 < -90.0))
                      {
                        *v354 = v359;
                      }
                    }

                    v354 += 6;
                    --v355;
                  }

                  while (v355);
                }

LABEL_342:
                v242 = *(this + 201);
                if (v242 <= 6)
                {
                  v243 = 1 << v242;
                  if ((*(this + 120) & v243) != 0 && v63 != 0)
                  {
                    v245 = (this + 2472);
                    v246 = v63;
                    do
                    {
                      *v245 = -*v245;
                      v245 += 6;
                      --v246;
                    }

                    while (v246);
                  }

                  if ((*(this + 121) & v243) != 0)
                  {
                    if (!v63)
                    {
                      v249 = (this + 632);
                      if (v80)
                      {
LABEL_356:
                        v250 = 0;
                        v251 = 0;
                        v252 = 0;
                        v253 = this + 4116;
                        v254 = this + 3304;
                        do
                        {
                          if (v253[v250 - 3076] == 1)
                          {
                            v255 = a5[v251];
                            if (v255)
                            {
                              v256 = *&v253[4 * v251];
                              if (v256 < *(this + 194) && *(this + 24 * v256 + 2488) == 1)
                              {
                                v257 = v381[v256];
                                if (v257)
                                {
                                  mData = v257->mBuffers[0].mData;
                                  v259 = v255->mBuffers[0].mData;
                                  if (v254[v256])
                                  {
                                    v252 = 1;
                                    MEMORY[0x1E12BE5D0](mData, 1, v259, 1, v257->mBuffers[0].mData, 1, __Nb);
                                  }

                                  else
                                  {
                                    memcpy(mData, v259, v255->mBuffers[0].mDataByteSize);
                                    v252 = 1;
                                    v254[v256] = 1;
                                  }
                                }
                              }
                            }
                          }

                          ++v251;
                          v250 += 44;
                        }

                        while (v251 < *(this + 159));
LABEL_409:
                        v284 = *(this + 194);
                        if (v284)
                        {
                          for (j = 0; j < v284; ++j)
                          {
                            if ((*(this + j + 3304) & 1) == 0)
                            {
                              v286 = v381[j];
                              if (v286)
                              {
                                vDSP_vfill(this + 161, v286->mBuffers[0].mData, 1, __Nb);
                                v284 = *(this + 194);
                              }
                            }
                          }
                        }

                        if ((v252 & 1) == 0)
                        {
                          *(this + 2488) = 1;
                        }

                        v287 = *(this + 101);
                        if (v287)
                        {
                          AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>::Buffer::Write(*v287, (this + 792));
                        }

                        v288 = *(this + 127);
                        if (v288)
                        {
                          AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>::Buffer::Write(*v288, this + 62);
                        }

                        v289 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                        if (v290)
                        {
                          ausdk::AUElement::SetParameter(v289, 0x190u, *(this + 256));
                          v291 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                          if (v292)
                          {
                            ausdk::AUElement::SetParameter(v291, 0x191u, *(this + 257));
                            v293 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                            if (v294)
                            {
                              ausdk::AUElement::SetParameter(v293, 0x192u, *(this + 200));
                              v295 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                              if (v296)
                              {
                                ausdk::AUElement::SetParameter(v295, 0x193u, *(this + 1026));
                                v297 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                if (v298)
                                {
                                  ausdk::AUElement::SetParameter(v297, 0x196u, *(this + 201));
                                  if (*(this + 916))
                                  {
                                    v299 = *(this + 1026);
                                    v300 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                    if ((v301 & 1) == 0)
                                    {
                                      goto LABEL_505;
                                    }

                                    if (v299 >= 2)
                                    {
                                      v302 = 1.0;
                                    }

                                    else
                                    {
                                      v302 = 0.0;
                                    }

                                    ausdk::AUElement::SetParameter(v300, 0x194u, v302);
                                    if ((*(this + 917) & 1) == 0)
                                    {
                                      goto LABEL_439;
                                    }
                                  }

                                  else
                                  {
                                    if ((*(this + 917) & 1) == 0)
                                    {
LABEL_439:
                                      if (*v249)
                                      {
                                        v305 = 0;
                                        v306 = (this + 2472);
                                        do
                                        {
                                          Element = ausdk::AUScope::GetElement((this + 704), v305);
                                          LOBYTE(v308) = *(v306 + 16);
                                          ausdk::AUElement::SetParameter(Element, 0x325u, v308);
                                          if (*(this + 918) == 1 && (*(this + 200) - 1) <= 1)
                                          {
                                            v309 = ausdk::AUScope::GetElement((this + 704), v305);
                                            ausdk::AUElement::SetParameter(v309, 0x320u, v306[1]);
                                            v310 = ausdk::AUScope::GetElement((this + 704), v305);
                                            v311 = v306;
                                          }

                                          else
                                          {
                                            v312 = ausdk::AUScope::GetElement((this + 704), v305);
                                            ausdk::AUElement::SetParameter(v312, 0x320u, *v306);
                                            v310 = ausdk::AUScope::GetElement((this + 704), v305);
                                            v311 = (this + 24 * v305 + 2476);
                                          }

                                          ausdk::AUElement::SetParameter(v310, 0x321u, *v311);
                                          v313 = ausdk::AUScope::GetElement((this + 704), v305);
                                          ausdk::AUElement::SetParameter(v313, 0x322u, v306[2]);
                                          v314 = ausdk::AUScope::GetElement((this + 704), v305);
                                          ausdk::AUElement::SetParameter(v314, 0x323u, v306[3]);
                                          v315 = ausdk::AUScope::GetElement((this + 704), v305);
                                          ausdk::AUElement::SetParameter(v315, 0x328u, v306[5]);
                                          ++v305;
                                          v306 += 6;
                                        }

                                        while (v305 < *v249);
                                      }

                                      if (*(this + 3264) == 1)
                                      {
                                        v360 = *(this + 406);
                                        v361 = *(this + 405);
                                        if (v360 != v361)
                                        {
                                          v362 = 0;
                                          v363 = (this + 2472);
                                          do
                                          {
                                            v364 = *(v361 + 8 * v362);
                                            if (v364)
                                            {
                                              AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>::Buffer::Write(*v364, v363);
                                              v360 = *(this + 406);
                                              v361 = *(this + 405);
                                            }

                                            ++v362;
                                            v363 = (v363 + 24);
                                          }

                                          while (v362 < (v360 - v361) >> 3);
                                        }
                                      }

                                      v316 = *(this + 159);
                                      if (v316)
                                      {
                                        v317 = (this + 4116);
                                        v318 = (this + 1032);
                                        v319 = (this + 1032);
                                        do
                                        {
                                          v320 = *v317++;
                                          *v319 = v320;
                                          v319 += 11;
                                          --v316;
                                        }

                                        while (v316);
                                        v321 = 0;
                                        do
                                        {
                                          v322 = *v318;
                                          v323 = *(this + 194);
                                          v324 = ausdk::AUScope::GetElement((this + 656), v321);
                                          v325 = -1.0;
                                          if (v322 < v323)
                                          {
                                            v325 = *v318;
                                          }

                                          ausdk::AUElement::SetParameter(v324, 0x258u, v325);
                                          ++v321;
                                          v318 += 11;
                                        }

                                        while (v321 < *(this + 159));
                                      }

                                      if (*(this + 2464) != 1)
                                      {
                                        return 0;
                                      }

                                      v365 = *(this + 306);
                                      v366 = *(this + 305);
                                      if (v365 == v366)
                                      {
                                        return 0;
                                      }

                                      v367 = 0;
                                      v368 = (this + 1032);
                                      do
                                      {
                                        v369 = *(v366 + 8 * v367);
                                        if (v369)
                                        {
                                          AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>::Buffer::Write(*v369, v368);
                                          v365 = *(this + 306);
                                          v366 = *(this + 305);
                                        }

                                        result = 0;
                                        ++v367;
                                        v368 = (v368 + 44);
                                      }

                                      while (v367 < (v365 - v366) >> 3);
                                      return result;
                                    }

                                    if (*(this + 1026) >= 2u)
                                    {
                                      v302 = 1.0;
                                    }

                                    else
                                    {
                                      v302 = 0.0;
                                    }
                                  }

                                  v303 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
                                  if (v304)
                                  {
                                    ausdk::AUElement::SetParameter(v303, 0x195u, v302);
                                    goto LABEL_439;
                                  }
                                }
                              }
                            }
                          }
                        }

LABEL_505:
                        abort();
                      }

LABEL_408:
                      v252 = 0;
                      goto LABEL_409;
                    }

                    v247 = v63;
                    v248 = (this + 2476);
                    do
                    {
                      *v248 = -*v248;
                      v248 += 6;
                      --v247;
                    }

                    while (v247);
                  }
                }

LABEL_353:
                v249 = (this + 632);
                if (v63)
                {
                  bzero(this + 3304, v63);
                }

                if (v80)
                {
                  goto LABEL_356;
                }

                goto LABEL_408;
              }

              v229 = v227 - *(this + 1332);
              if (v229 > v221)
              {
                v221 = v229;
              }
            }

            else
            {
              v228 = v227 + *(this + 1332);
              if (v228 < v221)
              {
                v221 = v228;
              }
            }

            *(this + 1328) = v221;
            goto LABEL_324;
          }

          v226 = v224 - *(this + 1334);
          if (v226 > v223)
          {
            v223 = v226;
          }
        }

        else
        {
          v225 = v224 + *(this + 1334);
          if (v225 < v223)
          {
            v223 = v225;
          }
        }

        *(this + 1330) = v223;
        goto LABEL_315;
      }
    }

    if (v124 >= v119)
    {
      v150 = v119;
    }

    else
    {
      v150 = v124;
    }

    if (v150)
    {
      v151 = this + 4532;
      v152 = this + 4660;
      v153 = this + 1032;
      v154 = (this + 4916);
      v155 = v120 + v150;
      do
      {
        if (v119 >= 2 && v119 > v124 && v120)
        {
          v156 = 0;
          v157 = v120;
          do
          {
            v158 = 0;
            v159 = &v153[44 * *&v151[4 * v156]];
            v160 = *(v159 + 4);
            v161 = *(v159 + 5);
            v162 = 0.0;
            do
            {
              v163 = &v153[44 * *&v152[v158]];
              v164 = (v161 - *(v163 + 5)) * (v161 - *(v163 + 5));
              if (!v158 || (v164 + ((v160 - *(v163 + 4)) * (v160 - *(v163 + 4)))) < v162)
              {
                v162 = v164 + ((v160 - *(v163 + 4)) * (v160 - *(v163 + 4)));
              }

              v158 += 4;
            }

            while (4 * v120 != v158);
            v154[v156++] = v162;
          }

          while (v156 != v119);
          v165 = 0;
          v166 = *v154;
          v167 = (this + 4920);
          for (k = 1; k != v119; ++k)
          {
            v169 = *v167++;
            v170 = v169;
            if (v169 > v166)
            {
              v166 = v170;
              v165 = k;
            }
          }

          v171 = *&v151[4 * v165];
          *&v151[4 * v165] = *&v151[4 * --v119];
          *&v151[4 * v119] = v171;
        }

        else
        {
          --v119;
          v157 = v120;
          v171 = *&v151[4 * v119];
        }

        v172 = *(this + --v124 + 866);
        *(this + v171 + 1029) = v172;
        ++*(this + v172 + 834);
        *&v152[4 * v157] = v171;
        ++v120;
      }

      while (v120 != v155);
      v120 = v155;
    }

    if (!v119)
    {
      goto LABEL_263;
    }

    v173 = 0;
    v174 = this + 4532;
    v175 = this + 1032;
    v176 = this + 4116;
    v177 = this + 3336;
    v178 = v119;
    v372 = v119;
    while (1)
    {
      v179 = v120;
      v180 = *&v174[4 * v173];
      if (*(this + 191) != 1)
      {
        break;
      }

      v181 = 0;
LABEL_261:
      *&v176[4 * v180] = v181;
      ++*&v177[4 * v181];
      *(this + v179 + 1165) = v180;
      v120 = v179 + 1;
      if (++v173 == v178)
      {
        LODWORD(v80) = *(this + 159);
        v62 = this + 828;
        goto LABEL_263;
      }
    }

    v182 = &v175[44 * v180];
    v183 = *(v182 + 4);
    v184 = *(v182 + 5);
    vDSP_vfill(this + 161, this + 962, 1, *(this + 194));
    vDSP_vfill(this + 161, this + 994, 1, *(this + 194));
    v185 = (this + 4660);
    v186 = v179;
    if (v179)
    {
      do
      {
        v187 = *v185++;
        v188 = *&v176[4 * v187];
        *(this + v188 + 962) = *(this + v188 + 962) + (((v183 - *&v175[44 * v187 + 16]) * (v183 - *&v175[44 * v187 + 16])) + ((v184 - *&v175[44 * v187 + 20]) * (v184 - *&v175[44 * v187 + 20])));
        *(this + v188 + 994) = *(this + v188 + 994) + 1.0;
        --v186;
      }

      while (v186);
    }

    v189 = *(this + 194);
    v178 = v372;
    v177 = this + 3336;
    if (!v189)
    {
      v181 = 0;
      v174 = this + 4532;
      goto LABEL_261;
    }

    v190 = 0;
    v181 = 0;
    v191 = 0;
    v192 = (this + 3976);
    v193 = 1.0e20;
    v174 = this + 4532;
    while (1)
    {
      if (*v192 <= 0.0)
      {
        goto LABEL_257;
      }

      v194 = *(v192 - 32) / *v192;
      if ((v191 & 1) != 0 && v194 >= v193)
      {
        break;
      }

      v191 = 1;
      v181 = v190;
LABEL_258:
      ++v190;
      ++v192;
      v193 = v194;
      if (!--v189)
      {
        goto LABEL_261;
      }
    }

    v191 = 1;
LABEL_257:
    v194 = v193;
    goto LABEL_258;
  }

  if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
  {
    goto LABEL_507;
  }

LABEL_88:
  v54 = AUFTSpatialAC::getAUSLog(void)::gLog;
  if (os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DDB85000, v54, OS_LOG_TYPE_ERROR, "At least one input bus, bus1, is need. It is a required input\n", buf, 2u);
  }

  return 4294956420;
}

uint64_t AUFTSpatialAC::UpdateGlobalMetaVariableState(AUFTSpatialAC *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_61;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 0xC8u);
  if (Parameter - 1 <= 3)
  {
    *(this + 198) = Parameter;
  }

  v5 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v6 & 1) == 0)
  {
LABEL_61:
    abort();
  }

  v7 = ausdk::AUElement::GetParameter(v5, 0xD5u);
  if (v7 - 1 <= 3)
  {
    *(this + 199) = v7;
  }

  v8 = *(this + 230);
  if (v8 == -2)
  {
    v8 = *(this + 199);
  }

  else if (v8 == -1)
  {
    v8 = *(this + 198);
  }

  else if ((v8 - 1) > 3)
  {
    goto LABEL_13;
  }

  *(this + 200) = v8;
LABEL_13:
  v9 = *(this + 228);
  if (v9 == -2)
  {
    v9 = *(this + 199);
  }

  else if (v9 == -1)
  {
    v9 = *(this + 198);
  }

  else if ((v9 - 1) > 3)
  {
    goto LABEL_19;
  }

  *(this + 201) = v9;
LABEL_19:
  if (*(this + 918) == 1)
  {
    v10 = *(this + 201);
    if (v10 == 1)
    {
      v11 = 4;
      goto LABEL_24;
    }

    if (v10 == 2)
    {
      v11 = 3;
LABEL_24:
      *(this + 201) = v11;
    }
  }

  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_61;
  }

  v14 = ausdk::AUElement::GetParameter(v12, 0xCEu);
  v15 = (this + 836);
  *(this + 209) = v14;
  if (v14 > 10000.0)
  {
    v15 = &AUFTSpatialAC::kFTSpatialMax_XY_points;
  }

  if (v14 < 1.0)
  {
    v15 = &AUSpeechLevelEstimator::kVAD_Max;
  }

  *(this + 209) = *v15;
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_61;
  }

  v18 = ausdk::AUElement::GetParameter(v16, 0xCFu);
  v19 = (this + 840);
  *(this + 210) = v18;
  if (v18 > 10000.0)
  {
    v19 = &AUFTSpatialAC::kFTSpatialMax_XY_points;
  }

  if (v18 < 1.0)
  {
    v19 = &AUSpeechLevelEstimator::kVAD_Max;
  }

  *(this + 210) = *v19;
  v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_61;
  }

  v22 = ausdk::AUElement::GetParameter(v20, 0xD0u);
  v23 = (this + 992);
  *(this + 248) = v22;
  if (v22 > 10000.0)
  {
    v23 = &AUFTSpatialAC::kFTSpatialMax_XY_points;
  }

  if (v22 < 0.0)
  {
    v23 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  *(this + 248) = *v23;
  v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_61;
  }

  v26 = ausdk::AUElement::GetParameter(v24, 0xD1u);
  v27 = (this + 996);
  *(this + 249) = v26;
  if (v26 > 10000.0)
  {
    v27 = &AUFTSpatialAC::kFTSpatialMax_XY_points;
  }

  if (v26 < 0.0)
  {
    v27 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  *(this + 249) = *v27;
  v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_61;
  }

  v30 = ausdk::AUElement::GetParameter(v28, 0xD2u);
  v31 = v30;
  v32 = (this + 1000);
  *(this + 250) = v30;
  if (v30 > 10000.0)
  {
    v32 = &AUFTSpatialAC::kFTSpatialMax_XY_points;
  }

  if (v30 < 0.001)
  {
    v32 = &AUFTSpatialAC::kFTSpatialMinWindow_XY_size;
  }

  *(this + 250) = *v32;
  v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_61;
  }

  v35 = ausdk::AUElement::GetParameter(v33, 0xD3u);
  v36 = (this + 1004);
  *(this + 251) = v35;
  v37 = v35 == 0.0 || v31 == 0.0;
  if (v35 > 10000.0)
  {
    v36 = &AUFTSpatialAC::kFTSpatialMax_XY_points;
  }

  if (v35 < 0.001)
  {
    v36 = &AUFTSpatialAC::kFTSpatialMinWindow_XY_size;
  }

  v38 = *v36;
  *(this + 251) = *v36;
  *(this + 936) = v37;
  v39 = *(this + 250) / (v38 + 1.0e-20);
  *(this + 252) = v39;

  return AUFTSpatialAC::SetRenderTuningValsToUse(this);
}

uint64_t AUFTSpatialAC::UpdateGlobalVariableState(float32x2_t *this)
{
  this[94].i8[0] = 1;
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[94].i32[1] = ausdk::AUElement::GetParameter(v2, 0);
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v5 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[95].i8[0] = ausdk::AUElement::GetParameter(v4, 1u) != 0.0;
  v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v7 & 1) == 0)
  {
    goto LABEL_191;
  }

  Parameter = ausdk::AUElement::GetParameter(v6, 2u);
  if (this[80].i32[0] < Parameter)
  {
    Parameter = this[80].u32[0];
  }

  if (Parameter <= 1)
  {
    Parameter = 1;
  }

  this[105].i32[1] = Parameter;
  v9 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[97].i8[5] = ausdk::AUElement::GetParameter(v9, 3u) != 0.0;
  v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v12 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[97].i8[6] = ausdk::AUElement::GetParameter(v11, 4u) != 0.0;
  v13 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v14 & 1) == 0)
  {
    goto LABEL_191;
  }

  v15 = &this[95] + 1;
  this[95].i32[1] = ausdk::AUElement::GetParameter(v13, 5u);
  v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_191;
  }

  v18 = ausdk::AUElement::GetParameter(v16, 6u);
  this[96].i32[0] = v18;
  if (this[94].i32[1])
  {
    v19 = this[95].u32[1];
    v20 = this[80].u32[0];
    if (v19 + v18 <= v20)
    {
      v20 = v19 + v18;
    }

    else
    {
      if (v19 >= v20)
      {
        v19 = v20 - 1;
        if (v20 - 1 <= 1)
        {
          v19 = 1;
        }

        *v15 = v19;
      }

      v18 = v20 - v19;
      this[96].i32[0] = v20 - v19;
    }

    this[97].i32[0] = v20;
    this[97].i8[4] = v18 != 0;
    if (v18)
    {
      goto LABEL_23;
    }
  }

  else
  {
    *v15 = 1;
    v19 = 1;
    this[97].i32[0] = 1;
    this[97].i8[4] = 0;
  }

  --v19;
LABEL_23:
  this[96].i32[1] = v19;
  v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_191;
  }

  v23 = ausdk::AUElement::GetParameter(v21, 0xC9u);
  v24 = this + 102;
  this[102].f32[0] = v23;
  if (v23 > 500.0)
  {
    v24 = &AUFTSpatialAC::kFTSpatialMax_dim_cm;
  }

  if (v23 < 0.01)
  {
    v24 = &AUFTSpatialAC::kFTSpatialMin_dim_cm;
  }

  this[102].i32[0] = v24->i32[0];
  v25 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_191;
  }

  v27 = ausdk::AUElement::GetParameter(v25, 0xCAu);
  v28 = &this[102] + 1;
  this[102].f32[1] = v27;
  if (v27 > 500.0)
  {
    v28 = &AUFTSpatialAC::kFTSpatialMax_dim_cm;
  }

  if (v27 < 0.01)
  {
    v28 = &AUFTSpatialAC::kFTSpatialMin_dim_cm;
  }

  this[102].i32[1] = *v28;
  v29 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_191;
  }

  v31 = ausdk::AUElement::GetParameter(v29, 0xCBu);
  v32 = this + 103;
  this[103].f32[0] = v31;
  if (v31 > 1000.0)
  {
    v32 = &AUFTSpatialAC::kFTSpatialMax_dist_cm;
  }

  if (v31 < 0.01)
  {
    v32 = &AUFTSpatialAC::kFTSpatialMin_dim_cm;
  }

  this[103].i32[0] = v32->i32[0];
  v33 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[103].f32[1] = ausdk::AUElement::GetParameter(v33, 0xCCu);
  v35 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v36 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[104].f32[0] = ausdk::AUElement::GetParameter(v35, 0xCDu);
  v37 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[106].i8[0] = ausdk::AUElement::GetParameter(v37, 7u) != 0.0;
  v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[106].i8[1] = ausdk::AUElement::GetParameter(v39, 8u) != 0.0;
  v41 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[106].i8[2] = ausdk::AUElement::GetParameter(v41, 9u) != 0.0;
  v43 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v44 & 1) == 0)
  {
    goto LABEL_191;
  }

  v45 = ausdk::AUElement::GetParameter(v43, 0xCu);
  this[108].f32[1] = v45;
  if (v45 <= 180.0)
  {
    v46 = &this[108] + 1;
  }

  else
  {
    v46 = &kParamValue_Mode1Azimuth_Max;
  }

  if (v45 < -180.0)
  {
    v46 = &kParamValue_Mode1Azimuth_Min;
  }

  this[108].i32[1] = *v46;
  v47 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_191;
  }

  v49 = ausdk::AUElement::GetParameter(v47, 0xDu);
  this[109].f32[0] = v49;
  if (v49 <= 180.0)
  {
    v50 = this + 109;
  }

  else
  {
    v50 = &kParamValue_Mode1Azimuth_Max;
  }

  if (v49 < -180.0)
  {
    v50 = &kParamValue_Mode1Azimuth_Min;
  }

  this[109].i32[0] = v50->i32[0];
  v51 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v52 & 1) == 0)
  {
    goto LABEL_191;
  }

  v53 = ausdk::AUElement::GetParameter(v51, 0xAu);
  v54 = &this[106] + 1;
  this[106].f32[1] = v53;
  if (v53 <= 180.0)
  {
    v55 = &this[106] + 1;
  }

  else
  {
    v55 = &kParamValue_Mode1Azimuth_Max;
  }

  if (v53 < -180.0)
  {
    v55 = &kParamValue_Mode1Azimuth_Min;
  }

  this[106].i32[1] = *v55;
  v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v57 & 1) == 0)
  {
    goto LABEL_191;
  }

  v58 = ausdk::AUElement::GetParameter(v56, 0xBu);
  v59 = &this[107];
  this[107].f32[0] = v58;
  if (v58 > 180.0)
  {
    v59 = &kParamValue_Mode1Azimuth_Max;
  }

  if (v58 < -180.0)
  {
    v59 = &kParamValue_Mode1Azimuth_Min;
  }

  v60 = *v59;
  this[107].f32[0] = *v59;
  v61 = this[109].f32[0];
  if (this[108].f32[1] >= v61)
  {
    if (v61 == -180.0)
    {
      this[109].i32[0] = -1020002959;
    }

    else
    {
      this[108].f32[1] = fmaxf(v61 + -0.01, -180.0);
    }
  }

  if (*v54 >= v60)
  {
    *v54 = v60;
  }

  v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_191;
  }

  v64 = ausdk::AUElement::GetParameter(v62, 0x10u);
  v65 = &this[109] + 1;
  this[109].f32[1] = v64;
  if (v64 <= 90.0)
  {
    v66 = &this[109] + 1;
  }

  else
  {
    v66 = &kParamValue_Mode1Elevation_Max;
  }

  if (v64 < -90.0)
  {
    v66 = &kParamValue_Mode1Elevation_Min;
  }

  this[109].i32[1] = *v66;
  v67 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v68 & 1) == 0)
  {
    goto LABEL_191;
  }

  v69 = ausdk::AUElement::GetParameter(v67, 0x11u);
  v70 = this + 110;
  this[110].f32[0] = v69;
  if (v69 <= 90.0)
  {
    v71 = this + 110;
  }

  else
  {
    v71 = &kParamValue_Mode1Elevation_Max;
  }

  if (v69 < -90.0)
  {
    v71 = &kParamValue_Mode1Elevation_Min;
  }

  this[110].i32[0] = v71->i32[0];
  v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_191;
  }

  v74 = ausdk::AUElement::GetParameter(v72, 0xEu);
  this[107].f32[1] = v74;
  if (v74 <= 90.0)
  {
    v75 = &this[107] + 1;
  }

  else
  {
    v75 = &kParamValue_Mode1Elevation_Max;
  }

  if (v74 < -90.0)
  {
    v75 = &kParamValue_Mode1Elevation_Min;
  }

  this[107].i32[1] = *v75;
  v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v77 & 1) == 0)
  {
    goto LABEL_191;
  }

  v78 = ausdk::AUElement::GetParameter(v76, 0xFu);
  this[108].f32[0] = v78;
  if (v78 <= 90.0)
  {
    v79 = &this[108];
  }

  else
  {
    v79 = &kParamValue_Mode1Elevation_Max;
  }

  if (v78 < -90.0)
  {
    v79 = &kParamValue_Mode1Elevation_Min;
  }

  v80 = *v79;
  this[108].f32[0] = *v79;
  if (this[107].f32[1] >= v80)
  {
    if (v80 == -90.0)
    {
      this[108].i32[0] = -1028392223;
    }

    else
    {
      this[107].f32[1] = fmaxf(v80 + -0.01, -90.0);
    }
  }

  if (*v65 >= v70->f32[0])
  {
    *v65 = v70->f32[0];
  }

  v81 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v82 & 1) == 0)
  {
    goto LABEL_191;
  }

  v83 = ausdk::AUElement::GetParameter(v81, 0x12u);
  this[110].f32[1] = v83;
  v84 = (this + 884);
  if (v83 <= 10.0)
  {
    v85 = &this[110] + 1;
  }

  else
  {
    v85 = &kParamValue_Mode1Distance_Max;
  }

  if (v83 < 0.0)
  {
    v85 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  v84->f32[0] = *v85;
  v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v87 & 1) == 0)
  {
    goto LABEL_191;
  }

  v88 = ausdk::AUElement::GetParameter(v86, 0x13u);
  v89 = &this[111];
  this[111].f32[0] = v88;
  if (v88 > 100.0)
  {
    v89 = &kParamValue_Mode1ReverbBlend_Max;
  }

  if (v88 < 0.0)
  {
    v89 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  this[111].f32[0] = *v89;
  v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v91 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[111].f32[1] = ausdk::AUElement::GetParameter(v90, 0x14u) * 0.5;
  v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v93 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[112].i32[0] = ausdk::AUElement::GetParameter(v92, 0x15u);
  v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v95 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[112].i32[1] = ausdk::AUElement::GetParameter(v94, 0x16u);
  v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v97 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[113].i32[0] = ausdk::AUElement::GetParameter(v96, 0x17u);
  v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v99 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[113].i32[1] = ausdk::AUElement::GetParameter(v98, 0x18u);
  v100 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_191;
  }

  v102 = ausdk::AUElement::GetParameter(v100, 0x19u);
  v103 = this + 114;
  this[114].i32[0] = v102;
  if (v102 > 6)
  {
    v103 = &kParamValue_ScreenOrientationControl_Max;
  }

  v104 = v102 >= -2 ? v103 : &kParamValue_ScreenOrientationControl_Min;
  this[114].i32[0] = *v104;
  v105 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v106 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[114].i8[4] = ausdk::AUElement::GetParameter(v105, 0x1Au) != 0.0;
  v107 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v108 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[114].i8[5] = ausdk::AUElement::GetParameter(v107, 0x1Bu) != 0.0;
  v109 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v110 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[114].i8[6] = ausdk::AUElement::GetParameter(v109, 0x1Cu) != 0.0;
  v111 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v112 & 1) == 0)
  {
    goto LABEL_191;
  }

  v113 = ausdk::AUElement::GetParameter(v111, 0x1Du);
  v114 = this + 115;
  this[115].i32[0] = v113;
  if (v113 > 6)
  {
    v114 = &kParamValue_ScreenOrientationControl_Max;
  }

  v115 = v113 >= -2 ? v114 : &kParamValue_ScreenOrientationControl_Min;
  this[115].i32[0] = *v115;
  v116 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v117 & 1) == 0)
  {
    goto LABEL_191;
  }

  v118 = ausdk::AUElement::GetParameter(v116, 0x1Eu);
  if (v118 >= 3)
  {
    v118 = 3;
  }

  this[115].i32[1] = v118;
  v119 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v120 & 1) == 0)
  {
    goto LABEL_191;
  }

  v121 = ausdk::AUElement::GetParameter(v119, 0x1Fu);
  if (v121 >= 0x3E8)
  {
    v121 = 1000;
  }

  this[116].i32[0] = v121;
  v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v123 & 1) == 0)
  {
    goto LABEL_191;
  }

  v124 = ausdk::AUElement::GetParameter(v122, 0x20u);
  if (v124 >= 3)
  {
    v124 = 3;
  }

  this[116].i32[1] = v124;
  v125 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v126 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[97].i8[7] = ausdk::AUElement::GetParameter(v125, 0x21u) != 0.0;
  v127 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v128 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[98].i8[0] = ausdk::AUElement::GetParameter(v127, 0x22u) != 0.0;
  v129 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v130 & 1) == 0)
  {
    goto LABEL_191;
  }

  this[98].i8[1] = ausdk::AUElement::GetParameter(v129, 0x23u) != 0.0;
  v131 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v132 & 1) == 0)
  {
    goto LABEL_191;
  }

  v133 = ausdk::AUElement::GetParameter(v131, 0x24u);
  v134 = &this[98] + 1;
  this[98].f32[1] = v133;
  v135 = &kParamValue_InterpTime_Max;
  if (v133 <= 5.0)
  {
    v135 = &this[98] + 1;
  }

  if (v133 < 0.0)
  {
    v135 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  this[98].f32[1] = *v135;
  v136 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v137 & 1) == 0)
  {
    goto LABEL_191;
  }

  v138 = ausdk::AUElement::GetParameter(v136, 0x25u);
  this[117].f32[1] = v138;
  v139 = (this + 940);
  if (v138 <= 10.0)
  {
    v140 = &this[117] + 1;
  }

  else
  {
    v140 = &kParamValue_Mode1Distance_Max;
  }

  if (v138 < 0.0)
  {
    v140 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  v139->f32[0] = *v140;
  v141 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v142 & 1) == 0)
  {
    goto LABEL_191;
  }

  v143 = ausdk::AUElement::GetParameter(v141, 0x26u);
  v144 = &this[118];
  this[118].f32[0] = v143;
  if (v143 > 100.0)
  {
    v144 = &kParamValue_Mode1ReverbBlend_Max;
  }

  if (v143 < 0.0)
  {
    v144 = &AUSpeechLevelEstimator::kVAD_Min;
  }

  this[118].f32[0] = *v144;
  v145 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v146 & 1) == 0)
  {
    goto LABEL_191;
  }

  v147 = ausdk::AUElement::GetParameter(v145, 0x27u);
  v148 = &this[118] + 1;
  this[118].f32[1] = v147;
  if (v147 > 20.0)
  {
    v148 = &kParamValue_UppGain_Max;
  }

  if (v147 < -20.0)
  {
    v148 = &kParamValue_UppGain_Min;
  }

  this[118].i32[1] = *v148;
  v149 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v150 & 1) == 0)
  {
    goto LABEL_191;
  }

  v151 = ausdk::AUElement::GetParameter(v149, 0x28u);
  v153 = this + 119;
  this[119].f32[0] = v151;
  if (v151 > 20.0)
  {
    v153 = &kParamValue_UppGain_Max;
  }

  if (v151 < -20.0)
  {
    v153 = &kParamValue_UppGain_Min;
  }

  v154 = v153->f32[0];
  this[119].i32[0] = v153->i32[0];
  v152.i32[0] = 1.0;
  if (this[98].i8[1] == 1 && *v134 > 0.0)
  {
    *v152.i32 = *v134 * this[665].f32[1];
    v155 = 1.0;
    v156 = *v152.i32 <= 1.0;
    v157 = *v152.i32 < 200.0 || *v152.i32 <= 1.0;
    if (*v152.i32 >= 200.0)
    {
      v156 = 1;
    }

    if (!v157)
    {
      v155 = 200.0;
    }

    if (v156)
    {
      *v152.i32 = v155;
    }
  }

  this[666] = vdiv_f32(vabd_f32(*v84, *v139), vdup_lane_s32(v152, 0));
  this[667].f32[0] = vabds_f32(v154, this[118].f32[1]) / *v152.i32;
  if ((this[114].i8[4] & 1) == 0)
  {
    v158 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
    if ((v159 & 1) == 0)
    {
      goto LABEL_191;
    }

    ausdk::AUElement::SetParameter(v158, 0x194u, 1.0);
  }

  if (this[114].i8[5])
  {
    goto LABEL_188;
  }

  v160 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(&this[4], 0);
  if ((v161 & 1) == 0)
  {
LABEL_191:
    abort();
  }

  ausdk::AUElement::SetParameter(v160, 0x195u, 1.0);
LABEL_188:

  return AUFTSpatialAC::UpdateGlobalMetaVariableState(this);
}

uint64_t AUFTSpatialAC::UpdateInputVariableState(AUFTSpatialAC *this)
{
  v2 = 0;
  for (i = 0; ; ++i)
  {
    v4 = *(this + 87);
    result = v4 ? (*(*v4 + 24))(v4) : (*(this + 85) - *(this + 84)) >> 3;
    if (i >= result)
    {
      break;
    }

    if (*(this + i + 600) == 1)
    {
      Element = ausdk::AUScope::GetElement((this + 656), i);
      v7 = this + v2;
      *(this + v2 + 1036) = ausdk::AUElement::GetParameter(Element, 0x259u);
      v8 = ausdk::AUScope::GetElement((this + 656), i);
      v7[1040] = ausdk::AUElement::GetParameter(v8, 0x25Au) != 0.0;
      v9 = ausdk::AUScope::GetElement((this + 656), i);
      v7[1041] = ausdk::AUElement::GetParameter(v9, 0x25Bu) != 0.0;
      v10 = ausdk::AUScope::GetElement((this + 656), i);
      v7[1042] = ausdk::AUElement::GetParameter(v10, 0x25Cu) != 0.0;
      v11 = ausdk::AUScope::GetElement((this + 656), i);
      *(v7 + 261) = ausdk::AUElement::GetParameter(v11, 0x25Du);
      v12 = ausdk::AUScope::GetElement((this + 656), i);
      *(v7 + 262) = ausdk::AUElement::GetParameter(v12, 0x25Eu);
      v13 = ausdk::AUScope::GetElement((this + 656), i);
      *(v7 + 263) = ausdk::AUElement::GetParameter(v13, 0x25Fu);
      v14 = ausdk::AUScope::GetElement((this + 656), i);
      *(v7 + 264) = ausdk::AUElement::GetParameter(v14, 0x260u);
    }

    v2 += 44;
  }

  return result;
}

float32x2_t *AUFTSpatialAC::MakeDependentPositionData(float32x2_t *this)
{
  v1 = this;
  v2 = this[79].u32[1];
  if (v2)
  {
    v3 = 0;
    __asm { FMOV            V2.2S, #1.0 }

    v9 = vand_s8(vdiv_f32(_D2, this[125]), vcgtz_f32(this[125]));
    v10 = this[122];
    v11 = this[123];
    v12 = this + 134;
    do
    {
      v13 = 1 << v3;
      v14 = v10 & ~(1 << v3);
      v15 = v11 & ~(1 << v3);
      if (v12[-4].i8[0] == 1)
      {
        v16 = v12[-3];
        if (v16.f32[0] == 0.0 && v16.f32[1] == 0.0)
        {
          v15 = v11 | v13;
          v17 = v10 | v13;
          if (this[116].i32[1])
          {
            v14 = v17;
          }
        }

        *(v12 - 12) = vmul_f32(v9, v16);
        v12[-1].i32[1] = v12[-2].i32[0];
        v12->i8[0] = v12[-4].i8[1];
      }

      else
      {
        *(&v12[-1] + 1) = 0;
        *(&v12[-2] + 4) = 0;
      }

      v11 = v15;
      v10 = v14;
      ++v3;
      v12 = (v12 + 44);
    }

    while (v2 != v3);
    this[122] = v14;
    this[123] = v15;
  }

  v18 = this[115].i32[1];
  switch(v18)
  {
    case 1:
      v26 = 0;
      for (i = this + 134; ; i = (i + 44))
      {
        v28 = v1[87];
        this = (*&v28 ? (*(**&v28 + 24))(v28) : (*&v1[85] - *&v1[84]) >> 3);
        if (v26 >= this)
        {
          break;
        }

        v29 = i->i8[0] == 1 && i[-4].i32[1] <= v1[116].i32[0];
        i->i8[0] = v29;
        ++v26;
      }

      break;
    case 3:
      v23 = 0;
      for (j = this + 134; ; j = (j + 44))
      {
        v25 = v1[87];
        this = (*&v25 ? (*(**&v25 + 24))(v25) : (*&v1[85] - *&v1[84]) >> 3);
        if (v23 >= this)
        {
          break;
        }

        j->i8[0] = j[-4].i32[1] <= v1[116].i32[0];
        ++v23;
      }

      break;
    case 2:
      v19 = 0;
      for (k = this + 134; ; k = (k + 44))
      {
        v21 = v1[87];
        this = (*&v21 ? (*(**&v21 + 24))(v21) : (*&v1[85] - *&v1[84]) >> 3);
        if (v19 >= this)
        {
          break;
        }

        v22 = (k->i8[0] & 1) != 0 || k[-4].i32[1] <= v1[116].i32[0];
        k->i8[0] = v22;
        ++v19;
      }

      break;
  }

  return this;
}

std::chrono::steady_clock::time_point AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>::Buffer::Write(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 680);
  v5 = (a1 + 744);
  explicit = atomic_load_explicit((a1 + 744), memory_order_acquire);
  v7 = v4 >= explicit;
  v8 = v4 - explicit;
  v9 = 256;
  if (!v7)
  {
    v9 = -1;
  }

  if (v8 == v9)
  {
    AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>::Buffer::Flush(a1);
  }

  result.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v23 = *a2;
  v11 = *(a1 + 680);
  v12 = 256;
  if ((v11 + 1) < 0x100)
  {
    v12 = v11 + 1;
  }

  v13 = (v11 - v12 + 257) % 0x101uLL - (257 - v12) + 1;
  if (v13 == atomic_load_explicit(v5, memory_order_acquire))
  {
    goto LABEL_19;
  }

  v14 = a1 + 24 * v11 + 752;
  *v14 = result;
  *(v14 + 8) = v23;
  atomic_store(v13, (a1 + 680));
  v15 = *(a1 + 680);
  v16 = atomic_load_explicit((a1 + 744), memory_order_acquire);
  v17 = v16 + ~v15;
  v7 = v15 >= v16;
  v18 = 257;
  if (!v7)
  {
    v18 = 0;
  }

  if (v17 + v18 <= 0x7F)
  {
    AU::FTSpatialAC::GetMessenger(result.__d_.__rep_);
    v19 = *a1;
    v20 = *(a1 + 8);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v22 = v19;
      v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v21 + 16) = 0;
      *(v21 + 24) = v22;
      *v21 = &unk_1F592DDB0;
      *(v21 + 8) = 0;

      return caulk::concurrent::messenger::enqueue(&AU::FTSpatialAC::GetMessenger(void)::sMessenger, v21);
    }

    __break(1u);
LABEL_19:
    _os_assert_log();
    result.__d_.__rep_ = _os_crash();
    __break(1u);
  }

  return result;
}

std::chrono::steady_clock::time_point AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>::Buffer::Write(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 680);
  v5 = (a1 + 744);
  explicit = atomic_load_explicit((a1 + 744), memory_order_acquire);
  v7 = v4 >= explicit;
  v8 = v4 - explicit;
  v9 = 256;
  if (!v7)
  {
    v9 = -1;
  }

  if (v8 == v9)
  {
    AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>::Buffer::Flush(a1);
  }

  result.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v23 = *a2;
  v24 = *(a2 + 4);
  v11 = *(a1 + 680);
  v12 = 256;
  if ((v11 + 1) < 0x100)
  {
    v12 = v11 + 1;
  }

  v13 = (v11 - v12 + 257) % 0x101uLL - (257 - v12) + 1;
  if (v13 == atomic_load_explicit(v5, memory_order_acquire))
  {
    goto LABEL_19;
  }

  v14 = a1 + 32 * v11;
  *(v14 + 752) = result;
  *(v14 + 776) = v24;
  *(v14 + 760) = v23;
  atomic_store(v13, (a1 + 680));
  v15 = *(a1 + 680);
  v16 = atomic_load_explicit((a1 + 744), memory_order_acquire);
  v17 = v16 + ~v15;
  v7 = v15 >= v16;
  v18 = 257;
  if (!v7)
  {
    v18 = 0;
  }

  if (v17 + v18 <= 0x7F)
  {
    AU::FTSpatialAC::GetMessenger(result.__d_.__rep_);
    v19 = *a1;
    v20 = *(a1 + 8);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v22 = v19;
      v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v21 + 16) = 0;
      *(v21 + 24) = v22;
      *v21 = &unk_1F592DE00;
      *(v21 + 8) = 0;

      return caulk::concurrent::messenger::enqueue(&AU::FTSpatialAC::GetMessenger(void)::sMessenger, v21);
    }

    __break(1u);
LABEL_19:
    _os_assert_log();
    result.__d_.__rep_ = _os_crash();
    __break(1u);
  }

  return result;
}

std::chrono::steady_clock::time_point AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>::Buffer::Write(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 680);
  v5 = (a1 + 744);
  explicit = atomic_load_explicit((a1 + 744), memory_order_acquire);
  v7 = v4 >= explicit;
  v8 = v4 - explicit;
  v9 = 256;
  if (!v7)
  {
    v9 = -1;
  }

  if (v8 == v9)
  {
    AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>::Buffer::Flush(a1);
  }

  result.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v23 = *a2;
  *v24 = a2[1];
  *&v24[12] = *(a2 + 28);
  v11 = *(a1 + 680);
  v12 = 256;
  if ((v11 + 1) < 0x100)
  {
    v12 = v11 + 1;
  }

  v13 = (v11 - v12 + 257) % 0x101uLL - (257 - v12) + 1;
  if (v13 == atomic_load_explicit(v5, memory_order_acquire))
  {
    goto LABEL_19;
  }

  v14 = a1 + 56 * v11 + 752;
  *(v14 + 8) = v23;
  *v14 = result;
  *(v14 + 24) = *v24;
  *(v14 + 36) = *&v24[12];
  atomic_store(v13, (a1 + 680));
  v15 = *(a1 + 680);
  v16 = atomic_load_explicit((a1 + 744), memory_order_acquire);
  v17 = v16 + ~v15;
  v7 = v15 >= v16;
  v18 = 257;
  if (!v7)
  {
    v18 = 0;
  }

  if (v17 + v18 <= 0x7F)
  {
    AU::FTSpatialAC::GetMessenger(result.__d_.__rep_);
    v19 = *a1;
    v20 = *(a1 + 8);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v22 = v19;
      v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v21 + 16) = 0;
      *(v21 + 24) = v22;
      *v21 = &unk_1F592DE50;
      *(v21 + 8) = 0;

      return caulk::concurrent::messenger::enqueue(&AU::FTSpatialAC::GetMessenger(void)::sMessenger, v21);
    }

    __break(1u);
LABEL_19:
    _os_assert_log();
    result.__d_.__rep_ = _os_crash();
    __break(1u);
  }

  return result;
}

void AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>::Buffer::Flush(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 16));
  explicit = atomic_load_explicit((a1 + 680), memory_order_acquire);
  v3 = *(a1 + 744);
  v4 = explicit >= v3;
  v5 = explicit - v3;
  v6 = -257;
  if (v4)
  {
    v6 = 0;
  }

  if (v5 != v6)
  {
    if ((*(a1 + 648) & 1) == 0)
    {
      std::optional<std::ofstream>::emplace[abi:ne200100]<std::__fs::filesystem::path &,void>(a1 + 80);
    }

    v15[0] = a1;
    v7 = atomic_load_explicit((a1 + 680), memory_order_acquire);
    v8 = *(a1 + 744);
    v9 = v7 - v8;
    v10 = 257;
    if (v7 >= v8)
    {
      v10 = 0;
    }

    v11 = v10 + v9;
    if (v10 + v9)
    {
      v12 = v10 + v7;
      v13 = a1 + 752 + 56 * v8;
      if (v10 + v7 < 0x102)
      {
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC24AUFTSpatAUInStreamParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_(v13, v13 + 56 * v11, v15);
        if (v12 == 257)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }
      }

      else
      {
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC24AUFTSpatAUInStreamParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_(v13, a1 + 15144, v15);
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC24AUFTSpatAUInStreamParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_(a1 + 752, v13 + 56 * v11 - 14392, v15);
        v14 = v12 - 257;
      }

      atomic_store(v14, (a1 + 744));
    }
  }

  std::mutex::unlock((a1 + 16));
}

void sub_1DDF11F00(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDF11F08);
  }

  __clang_call_terminate(a1);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_24AUFTSpatAUInStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>::Buffer::Flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_1F592DE78;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_1F592DE78;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_24AUFTSpatAUInStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>::Buffer::Flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_24AUFTSpatAUInStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DE78;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_24AUFTSpatAUInStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DE78;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_24AUFTSpatAUInStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DE78;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_24AUFTSpatAUInStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DE78;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t *std::optional<std::ofstream>::emplace[abi:ne200100]<std::__fs::filesystem::path &,void>(uint64_t a1)
{
  if (*(a1 + 568) == 1)
  {
    v2 = MEMORY[0x1E69E54D0];
    v3 = *MEMORY[0x1E69E54D0];
    *a1 = *MEMORY[0x1E69E54D0];
    *(a1 + *(v3 - 24)) = *(v2 + 24);
    MEMORY[0x1E12BCB20](a1 + 8);
    std::ostream::~ostream();
    MEMORY[0x1E12BD050](a1 + 416);
    *(a1 + 568) = 0;
  }

  result = std::ofstream::basic_ofstream(a1);
  *(a1 + 568) = 1;
  return result;
}

os_log_t ___Z16AUFTSpatialACLogv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUFTSpatialAC");
  AUFTSpatialACLog(void)::gLog = result;
  return result;
}

void _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC24AUFTSpatAUInStreamParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *a3;
      AUFTSpatialAC::Log((*a3 + 80), v5);
      AUFTSpatialACLogCSV<unsigned int>((v6 + 80), *(v5 + 8));
      AUFTSpatialACLogCSV<unsigned int>((v6 + 80), *(v5 + 12));
      AUFTSpatialACLogCSV<BOOL>((v6 + 80), *(v5 + 16), ", ");
      AUFTSpatialACLogCSV<BOOL>((v6 + 80), *(v5 + 17), ", ");
      AUFTSpatialACLogCSV<BOOL>((v6 + 80), *(v5 + 18), ", ");
      AUFTSpatialACLogCSV<unsigned int>((v6 + 80), *(v5 + 20));
      v7 = v5 + 24;
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      v7 += 4;
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      v7 += 4;
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      v7 += 4;
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      v7 += 4;
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      v7 += 4;
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      AUFTSpatialACLogCSV<BOOL>((v6 + 80), *(v7 + 4), "\n");
      v5 = v7 + 12;
    }

    while (v5 != a2);
  }
}

void *AUFTSpatialAC::Log(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  *__s = 0u;
  v12 = 0u;
  __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  __t.__d_.__rep_ = std::chrono::system_clock::to_time_t(&__t);
  v4 = *a2;
  v5 = localtime(&__t.__d_.__rep_);
  v6 = strftime(__s, 0x40uLL, "%T", v5);
  snprintf(&__s[v6], 64 - v6, ":%03lld", v4 / 1000000 % 1000);
  v7 = strlen(__s);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v7);
  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
}

void sub_1DDF125CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AUFTSpatialACLogCSV<unsigned int>(void *a1, unsigned int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  memset(&v20, 0, sizeof(v20));
  v27 = v25;
  v28 = v26;
  MEMORY[0x1E12BCF50](&v24);
  v4 = std::locale::classic();
  if (std::locale::operator==(&v24, v4))
  {
    v5 = v26;
    do
    {
      *--v5 = (a2 % 0xA) | 0x30;
      v6 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v6);
    goto LABEL_29;
  }

  v7 = std::locale::use_facet(&v24, MEMORY[0x1E69E5368]);
  (v7->__vftable[1].__on_zero_shared)(&__p);
  v8 = v23;
  if ((v23 & 0x8000000000000000) != 0)
  {
    v10 = v22;
    if (!v22)
    {
      goto LABEL_25;
    }

    p_p = __p;
  }

  else
  {
    if (!v23)
    {
      goto LABEL_25;
    }

    p_p = &__p;
    v10 = v23;
  }

  if (*p_p > 0)
  {
    v11 = (v7->__vftable[1].~facet_0)(v7);
    v12 = 0;
    if (v23 >= 0)
    {
      v13 = &__p;
    }

    else
    {
      v13 = __p;
    }

    LOBYTE(v14) = *v13;
    v5 = v26;
    v15 = *v13;
    do
    {
      if (!v15)
      {
        if (++v12 < v10)
        {
          v16 = v23 >= 0 ? &__p : __p;
          v14 = *(v16 + v12);
          if (v14 < 1)
          {
            LOBYTE(v14) = 127;
          }
        }

        *--v5 = v11;
        v15 = v14;
      }

      --v15;
      *--v5 = (a2 % 0xA) | 0x30;
      v6 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v6);
    v8 = v23;
    goto LABEL_27;
  }

LABEL_25:
  v5 = v26;
  do
  {
    *--v5 = (a2 % 0xA) | 0x30;
    v6 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v6);
LABEL_27:
  if (v8 < 0)
  {
    operator delete(__p);
  }

LABEL_29:
  std::locale::~locale(&v24);
  v27 = v5;
  v28 = v26;
  std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v20, v5, v26, v26 - v5);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v20;
  }

  else
  {
    v17 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v17, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", ", 2);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_1DDF12874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::locale a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a22);
  _Unwind_Resume(a1);
}

void AUFTSpatialACLogCSV<BOOL>(void *a1, char a2, const char *a3)
{
  memset(&__p, 0, sizeof(__p));
  if (a2)
  {
    v5 = 49;
  }

  else
  {
    v5 = 48;
  }

  v11 = v5;
  v13 = &v11;
  v14 = v12;
  std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&__p, &v11, v12, 1uLL);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, size);
  v9 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, a3, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1DDF12980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUFTSpatialACLogCSV<float>(void *a1, float *a2, const char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&v12, 0, sizeof(v12));
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::lexical_istream_limited_src(&v13);
  v6 = boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::shl_real<float>(&v13, *a2);
  v7 = v6;
  if (v6)
  {
    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v12, v16, v17, v17 - v16);
  }

  std::ostream::~ostream();
  v13.__vftable = (MEMORY[0x1E69E5548] + 16);
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13.__vftable = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(v14);
  if (!v7)
  {
    std::bad_cast::bad_cast(&v13);
    v13.__vftable = &unk_1F5938F98;
    boost::throw_exception<boost::bad_lexical_cast>();
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v12;
  }

  else
  {
    v8 = v12.__r_.__value_.__r.__words[0];
  }

  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v8, size);
  v11 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a3, v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1DDF12B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::exception a15)
{
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::~lexical_istream_limited_src(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::chrono::steady_clock::time_point AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>::Buffer::Write(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 680);
  v5 = (a1 + 744);
  explicit = atomic_load_explicit((a1 + 744), memory_order_acquire);
  v7 = v4 >= explicit;
  v8 = v4 - explicit;
  v9 = 256;
  if (!v7)
  {
    v9 = -1;
  }

  if (v8 == v9)
  {
    AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>::Buffer::Flush(a1);
  }

  result.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v23 = *a2;
  v24 = *(a2 + 2);
  v11 = *(a1 + 680);
  v12 = 256;
  if ((v11 + 1) < 0x100)
  {
    v12 = v11 + 1;
  }

  v13 = (v11 - v12 + 257) % 0x101uLL - (257 - v12) + 1;
  if (v13 == atomic_load_explicit(v5, memory_order_acquire))
  {
    goto LABEL_19;
  }

  v14 = a1 + 32 * v11;
  *(v14 + 752) = result;
  *(v14 + 776) = v24;
  *(v14 + 760) = v23;
  atomic_store(v13, (a1 + 680));
  v15 = *(a1 + 680);
  v16 = atomic_load_explicit((a1 + 744), memory_order_acquire);
  v17 = v16 + ~v15;
  v7 = v15 >= v16;
  v18 = 257;
  if (!v7)
  {
    v18 = 0;
  }

  if (v17 + v18 <= 0x7F)
  {
    AU::FTSpatialAC::GetMessenger(result.__d_.__rep_);
    v19 = *a1;
    v20 = *(a1 + 8);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v22 = v19;
      v21 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v21 + 16) = 0;
      *(v21 + 24) = v22;
      *v21 = &unk_1F592DEA0;
      *(v21 + 8) = 0;

      return caulk::concurrent::messenger::enqueue(&AU::FTSpatialAC::GetMessenger(void)::sMessenger, v21);
    }

    __break(1u);
LABEL_19:
    _os_assert_log();
    result.__d_.__rep_ = _os_crash();
    __break(1u);
  }

  return result;
}

void AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>::Buffer::Flush(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 16));
  explicit = atomic_load_explicit((a1 + 680), memory_order_acquire);
  v3 = *(a1 + 744);
  v4 = explicit >= v3;
  v5 = explicit - v3;
  v6 = -257;
  if (v4)
  {
    v6 = 0;
  }

  if (v5 != v6)
  {
    if ((*(a1 + 648) & 1) == 0)
    {
      std::optional<std::ofstream>::emplace[abi:ne200100]<std::__fs::filesystem::path &,void>(a1 + 80);
    }

    v15[0] = a1;
    v7 = atomic_load_explicit((a1 + 680), memory_order_acquire);
    v8 = *(a1 + 744);
    v9 = v7 - v8;
    v10 = 257;
    if (v7 >= v8)
    {
      v10 = 0;
    }

    v11 = v10 + v9;
    if (v10 + v9)
    {
      v12 = v10 + v7;
      v13 = a1 + 752 + 32 * v8;
      if (v10 + v7 < 0x102)
      {
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC25AUFTSpatAUOutStreamParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_((a1 + 752 + 32 * v8), (v13 + 32 * v11), v15);
        if (v12 == 257)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }
      }

      else
      {
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC25AUFTSpatAUOutStreamParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_((a1 + 752 + 32 * v8), (a1 + 8976), v15);
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC25AUFTSpatAUOutStreamParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_((a1 + 752), (v13 + 32 * v11 - 8224), v15);
        v14 = v12 - 257;
      }

      atomic_store(v14, (a1 + 744));
    }
  }

  std::mutex::unlock((a1 + 16));
}

void sub_1DDF12F38(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDF12F40);
  }

  __clang_call_terminate(a1);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_25AUFTSpatAUOutStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>::Buffer::Flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_1F592DEC8;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_1F592DEC8;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_25AUFTSpatAUOutStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>::Buffer::Flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_25AUFTSpatAUOutStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DEC8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_25AUFTSpatAUOutStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DEC8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_25AUFTSpatAUOutStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DEC8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_25AUFTSpatAUOutStreamParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DEC8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC25AUFTSpatAUOutStreamParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *a3;
      AUFTSpatialAC::Log((*a3 + 80), v5);
      v7 = v5 + 1;
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      v7 = (v7 + 4);
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      v7 = (v7 + 4);
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      v7 = (v7 + 4);
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, ", ");
      AUFTSpatialACLogCSV<BOOL>((v6 + 80), *(v7++ + 4), ", ");
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, "\n");
      v5 = (v7 + 4);
    }

    while (v5 != a2);
  }
}

void AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>::Buffer::Flush(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 16));
  explicit = atomic_load_explicit((a1 + 680), memory_order_acquire);
  v3 = *(a1 + 744);
  v4 = explicit >= v3;
  v5 = explicit - v3;
  v6 = -257;
  if (v4)
  {
    v6 = 0;
  }

  if (v5 != v6)
  {
    if ((*(a1 + 648) & 1) == 0)
    {
      std::optional<std::ofstream>::emplace[abi:ne200100]<std::__fs::filesystem::path &,void>(a1 + 80);
    }

    v15[0] = a1;
    v7 = atomic_load_explicit((a1 + 680), memory_order_acquire);
    v8 = *(a1 + 744);
    v9 = v7 - v8;
    v10 = 257;
    if (v7 >= v8)
    {
      v10 = 0;
    }

    v11 = v10 + v9;
    if (v10 + v9)
    {
      v12 = v10 + v7;
      v13 = a1 + 752 + 32 * v8;
      if (v10 + v7 < 0x102)
      {
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC16AUFTWindowParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_((a1 + 752 + 32 * v8), (v13 + 32 * v11), v15);
        if (v12 == 257)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }
      }

      else
      {
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC16AUFTWindowParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_((a1 + 752 + 32 * v8), (a1 + 8976), v15);
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC16AUFTWindowParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_((a1 + 752), (v13 + 32 * v11 - 8224), v15);
        v14 = v12 - 257;
      }

      atomic_store(v14, (a1 + 744));
    }
  }

  std::mutex::unlock((a1 + 16));
}

void sub_1DDF1355C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDF13564);
  }

  __clang_call_terminate(a1);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_16AUFTWindowParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>::Buffer::Flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_1F592DE28;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_1F592DE28;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_16AUFTWindowParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>::Buffer::Flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_16AUFTWindowParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DE28;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_16AUFTWindowParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DE28;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_16AUFTWindowParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DE28;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_16AUFTWindowParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DE28;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC16AUFTWindowParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *a3;
      AUFTSpatialAC::Log((*a3 + 80), v5);
      v7 = (v5 + 1);
      AUFTSpatialACLogCSV<float>((v6 + 80), v7++, ", ");
      AUFTSpatialACLogCSV<float>((v6 + 80), v7++, ", ");
      AUFTSpatialACLogCSV<float>((v6 + 80), v7++, ", ");
      AUFTSpatialACLogCSV<float>((v6 + 80), v7++, ", ");
      AUFTSpatialACLogCSV<float>((v6 + 80), v7, "\n");
      v5 = (v7 + 2);
    }

    while (v5 != a2);
  }
}

void AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>::Buffer::Flush(uint64_t a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 16));
  explicit = atomic_load_explicit((a1 + 680), memory_order_acquire);
  v3 = *(a1 + 744);
  v4 = explicit >= v3;
  v5 = explicit - v3;
  v6 = -257;
  if (v4)
  {
    v6 = 0;
  }

  if (v5 != v6)
  {
    if ((*(a1 + 648) & 1) == 0)
    {
      std::optional<std::ofstream>::emplace[abi:ne200100]<std::__fs::filesystem::path &,void>(a1 + 80);
    }

    v15[0] = a1;
    v7 = atomic_load_explicit((a1 + 680), memory_order_acquire);
    v8 = *(a1 + 744);
    v9 = v7 - v8;
    v10 = 257;
    if (v7 >= v8)
    {
      v10 = 0;
    }

    v11 = v10 + v9;
    if (v10 + v9)
    {
      v12 = v10 + v7;
      v13 = (a1 + 752 + 24 * v8);
      if (v10 + v7 < 0x102)
      {
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC21AUFTOrientationParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_(v13, &v13[3 * v11], v15);
        if (v12 == 257)
        {
          v14 = 0;
        }

        else
        {
          v14 = v12;
        }
      }

      else
      {
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC21AUFTOrientationParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_(v13, (a1 + 6920), v15);
        _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC21AUFTOrientationParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_((a1 + 752), &v13[3 * v11 - 771], v15);
        v14 = v12 - 257;
      }

      atomic_store(v14, (a1 + 744));
    }
  }

  std::mutex::unlock((a1 + 16));
}

void sub_1DDF13B7C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDF13B84);
  }

  __clang_call_terminate(a1);
}

caulk::rt_safe_memory_resource *_ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_21AUFTOrientationParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(caulk::concurrent::message *a1)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *(a1 + 3);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v3)
      {
        AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>::Buffer::Flush(v3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_weak(v2);
    v6 = *(a1 + 4);
    *a1 = &unk_1F592DDD8;
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *a1 = &unk_1F592DDD8;
  }

  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_21AUFTOrientationParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEE7performEv(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 24);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = std::__shared_weak_count::lock(v1);
    if (v3)
    {
      v4 = v3;
      if (v2)
      {
        AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>::Buffer::Flush(v2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_21AUFTOrientationParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DDD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details12message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_21AUFTOrientationParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DDD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_21AUFTOrientationParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED0Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DDD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

void _ZN5caulk10concurrent7details15rt_message_callIZN13AUFTSpatialAC18AURealTimeDebugLogINS3_21AUFTOrientationParamsELm256EE6Buffer5WriteERKS5_EUlT_E_JNSt3__18weak_ptrIS7_EEEED1Ev(caulk::concurrent::message *this)
{
  *this = &unk_1F592DDD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void _ZN5boost8lockfree6detail15ringbuffer_baseINSt3__15tupleIJNS3_6chrono10time_pointINS5_12steady_clockENS5_8durationIxNS3_5ratioILl1ELl1000000000EEEEEEEN13AUFTSpatialAC21AUFTOrientationParamsEEEEE22run_functor_and_deleteIZNSD_18AURealTimeDebugLogISE_Lm256EE6Buffer5FlushEvEUlRKT_E_EEvPSF_SP_SN_(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *a3;
      AUFTSpatialAC::Log((*a3 + 80), v5);
      v7 = (v5 + 1);
      AUFTSpatialACLogCSV<CAOrientation>((v6 + 80), v7++, ", ");
      AUFTSpatialACLogCSV<CAOrientation>((v6 + 80), v7++, ", ");
      AUFTSpatialACLogCSV<CAOrientation>((v6 + 80), v7++, ", ");
      AUFTSpatialACLogCSV<CAOrientation>((v6 + 80), v7, "\n");
      v5 = (v7 + 1);
    }

    while (v5 != a2);
  }
}

void AUFTSpatialACLogCSV<CAOrientation>(void *a1, unsigned int *a2, const char *a3)
{
  memset(&v15, 0, sizeof(v15));
  v22 = 0;
  *__p = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  __sb = 0u;
  v17 = 0u;
  std::stringbuf::basic_stringbuf[abi:ne200100](&__sb);
  v17 = 0uLL;
  *&v18 = 0;
  *&__sb = &unk_1F5938E28;
  v24.__loc_ = 0;
  v23 = MEMORY[0x1E69E5520] + 24;
  v24.__vftable = (MEMORY[0x1E69E5520] + 64);
  std::ios_base::init(&v24, &__sb);
  v25 = 0;
  v26 = -1;
  *&v28 = &v27;
  *(&v28 + 1) = &v27 + 2;
  v6 = (&v23 + *(v23 - 24));
  v6->__exceptions_ = 1;
  std::ios_base::clear(v6, v6->__rdstate_);
  v7 = MEMORY[0x1E12BCC10](&v23, *a2);
  v8 = *(v7 + *(*v7 - 24) + 32);
  v9 = *(*(&v24.__rdstate_ + *(v23 - 24)) + 40);
  v28 = v9;
  if ((v8 & 5) != 0)
  {
    v10 = 0;
  }

  else
  {
    std::string::__assign_trivial[abi:ne200100]<char const*,char const*>(&v15, v9, *(&v9 + 1), *(&v9 + 1) - v9);
    v10 = 1;
  }

  std::ostream::~ostream();
  *&__sb = MEMORY[0x1E69E5548] + 16;
  if (SBYTE7(v21) < 0)
  {
    operator delete(__p[0]);
  }

  *&__sb = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&__sb + 1);
  if ((v10 & 1) == 0)
  {
    std::bad_cast::bad_cast(&__sb);
    *&__sb = &unk_1F5938F98;
    boost::throw_exception<boost::bad_lexical_cast>();
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v11, size);
  v14 = strlen(a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, a3, v14);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1DDF141D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::exception a16)
{
  boost::detail::lexical_istream_limited_src<char,std::char_traits<char>,true,21ul>::~lexical_istream_limited_src(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AUFTSpatialAC::SetRenderTuningValsToUse(uint64_t this)
{
  v1 = *(this + 816);
  v2 = *(this + 820);
  v3 = *(this + 800);
  v4 = v3 - 1;
  v5 = v2 / v1;
  v6 = v3 - 3;
  if (v4 >= 2)
  {
    v5 = v1 / v2;
  }

  v7 = *(this + 1008);
  if (v7 == v5 || v7 == 0.0 || (*(this + 848) & 1) == 0)
  {
    __asm { FMOV            V2.2S, #1.0 }

    *(this + 3296) = _D2;
  }

  else if (v7 <= v5)
  {
    *(this + 3300) = 1065353216;
    *(this + 3296) = v7 / v5;
  }

  else
  {
    *(this + 3300) = v5 / v7;
    *(this + 3296) = 1065353216;
  }

  if (v4 < 2)
  {
    *(this + 3272) = *(this + 852);
    *(this + 3288) = v2;
    *(this + 3292) = v1;
    if ((*(this + 849) & 1) == 0)
    {
      *(this + 3296) = 0;
    }
  }

  else if (v6 > 1)
  {
    *(this + 3272) = *(this + 868);
    *(this + 3288) = v1;
    *(this + 3292) = v2;
  }

  else
  {
    *(this + 3272) = *(this + 868);
    *(this + 3288) = v1;
    *(this + 3292) = v2;
    if ((*(this + 850) & 1) == 0)
    {
      *(this + 3300) = 0;
    }
  }

  return this;
}

os_log_t ___ZN13AUFTSpatialAC9getAUSLogEv_block_invoke()
{
  result = os_log_create("com.apple.coreaudio", "AUFTSpatialAC");
  AUFTSpatialAC::getAUSLog(void)::gLog = result;
  return result;
}

uint64_t AUFTSpatialAC::SetParameter(AUFTSpatialAC *this, unsigned int a2, int a3, unsigned int a4, float a5)
{
  result = 4294956418;
  switch(a3)
  {
    case 2:
      if (a2 - 812 >= 0xFFFFFFF4)
      {
        v12 = 0;
      }

      else
      {
        v12 = -10878;
      }

      if (a4 <= 0x1F)
      {
        result = v12;
      }

      else
      {
        result = 4294956419;
      }

      if (result)
      {
        return result;
      }

      Element = ausdk::AUScope::GetElement((this + 704), a4);
      ausdk::AUElement::SetParameter(Element, a2, a5);
      return 0;
    case 1:
      if (a2 - 609 >= 0xFFFFFFF7)
      {
        v10 = 0;
      }

      else
      {
        v10 = -10878;
      }

      if (a4 <= 0x1F)
      {
        result = v10;
      }

      else
      {
        result = 4294956419;
      }

      if (result)
      {
        return result;
      }

      v11 = ausdk::AUScope::GetElement((this + 656), a4);
      ausdk::AUElement::SetParameter(v11, a2, a5);
      if (a2 != 600)
      {
        result = 0;
        ++*(this + 73);
        *(this + a4 + 600) = 1;
        return result;
      }

      return 0;
    case 0:
      result = ausdk::AUBase::SetParameter(this, a2, 0, a4, a5);
      if (!result)
      {
        if (a2 == 213 || a2 == 200 || a2 - 206 <= 5)
        {
          result = 0;
          ++*(this + 71);
        }

        else
        {
          result = 0;
          ++*(this + 69);
        }
      }

      break;
  }

  return result;
}

uint64_t AUFTSpatialAC::GetParameter(AUFTSpatialAC *this, unsigned int a2, int a3, unsigned int a4, float *a5)
{
  v7 = 4294956418;
  if (a3 == 2)
  {
    if (a2 - 812 >= 0xFFFFFFF4)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      LODWORD(v7) = -10878;
    }

    if (a4 <= 0x1F)
    {
      v7 = v7;
    }

    else
    {
      v7 = 4294956419;
    }

    if (v7)
    {
      return v7;
    }

    v9 = (this + 704);
LABEL_23:
    Element = ausdk::AUScope::GetElement(v9, a4);
    Parameter = ausdk::AUElement::GetParameter(Element, a2);
    v7 = 0;
    *a5 = Parameter;
    return v7;
  }

  if (a3 == 1)
  {
    if (a2 - 609 >= 0xFFFFFFF7)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      LODWORD(v7) = -10878;
    }

    if (a4 <= 0x1F)
    {
      v7 = v7;
    }

    else
    {
      v7 = 4294956419;
    }

    if (v7)
    {
      return v7;
    }

    v9 = (this + 656);
    goto LABEL_23;
  }

  if (a3)
  {
    return v7;
  }

  return ausdk::AUBase::GetParameter(this, a2, 0, a4, a5);
}

uint64_t AUFTSpatialAC::SetProperty(AUFTSpatialAC *this, int a2, int a3, unsigned int a4, CFDataRef *a5, uint64_t a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
    {
      dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
    }

    v7 = AUFTSpatialAC::getAUSLog(void)::gLog;
    if (os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "The inData passed to SetProperty is null.", v21, 2u);
    }

    return 4294956445;
  }

  if (a3)
  {
    return 4294956417;
  }

  v6 = 4294956417;
  if (a2 <= 6999)
  {
    if (a2 <= 4999)
    {
      if (a2 == 21)
      {
        if (a6 == 4)
        {
          v6 = 0;
          *(this + 544) = *a5 != 0;
          return v6;
        }
      }

      else
      {
        if (a2 != 3700)
        {
          return v6;
        }

        if (a6 == 4)
        {
          v6 = 0;
          *(this + 376) = *a5 == 1;
          return v6;
        }
      }

      return 4294956445;
    }

    if (a2 != 5000)
    {
      if (a2 == 6000)
      {
        memset(v21, 0, sizeof(v21));
        v22 = 0;
        std::vector<long long>::__init_with_size[abi:ne200100]<long long const*,long long const*>(v21, a5, &a5[a6 >> 3], a6 >> 3);
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__wrap_iter<long long const*>,std::__wrap_iter<long long const*>>();
      }

      return v6;
    }

    if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
    {
      v18 = a5;
      v19 = a6;
      dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
      a6 = v19;
      a5 = v18;
    }

    if (!GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
    {
      return 4294956417;
    }

    v6 = (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 56))(*(this + 66), a5, a6);
    if (v6)
    {
      if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
      {
        dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
      }

      v14 = AUFTSpatialAC::getAUSLog(void)::gLog;
      if (os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
      {
        *v21 = 67109120;
        *&v21[4] = v6;
        goto LABEL_51;
      }

      return v6;
    }

LABEL_57:
    AUFTSpatialAC::LoadSpatialMetadataProperties(this);
    return v6;
  }

  if (a2 <= 104000)
  {
    if (a2 == 7000)
    {
      v15 = *a5;
      v16 = *(this + 668);
      std::mutex::lock((v16 + 48));
      *(v16 + 136) = v15;
      std::mutex::unlock((v16 + 48));
      if (AUFTSpatialACLog(void)::onceToken != -1)
      {
        dispatch_once(&AUFTSpatialACLog(void)::onceToken, &__block_literal_global_177_20536);
      }

      v17 = AUFTSpatialACLog(void)::gLog;
      if (os_log_type_enabled(AUFTSpatialACLog(void)::gLog, OS_LOG_TYPE_INFO))
      {
        *v21 = 134217984;
        *&v21[4] = v15;
        _os_log_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_INFO, "set CoreAudio reporter time period - %f", v21, 0xCu);
      }

      return 0;
    }

    if (a2 != 104000)
    {
      return v6;
    }

    if (a6 == 4)
    {
      v10 = *a5;
      if (*a5 <= 0x7Fu)
      {
        v11 = (this + 960);
LABEL_55:
        AUFTSpatialAC::SetOrientationFlagsFromBitMask(v11, v10);
        return 0;
      }
    }

    return 4294956445;
  }

  if (a2 == 104001)
  {
    if (a6 == 4)
    {
      v10 = *a5;
      if (*a5 <= 0x7Fu)
      {
        v11 = (this + 968);
        goto LABEL_55;
      }
    }

    return 4294956445;
  }

  if (a2 != 105000)
  {
    return v6;
  }

  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    v20 = a5;
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
    a5 = v20;
  }

  if (!GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
  {
    return 4294956417;
  }

  v12 = *a5;
  BytePtr = CFDataGetBytePtr(*a5);
  CFDataGetLength(v12);
  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
  }

  v6 = (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 56))(*(this + 66), BytePtr);
  if (!v6)
  {
    goto LABEL_57;
  }

  if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
  {
    dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
  }

  v14 = AUFTSpatialAC::getAUSLog(void)::gLog;
  if (os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
  {
    *v21 = 67109120;
    *&v21[4] = v6;
LABEL_51:
    _os_log_error_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_ERROR, "failed to set spatial metadata with status %d", v21, 8u);
  }

  return v6;
}

void sub_1DDF14B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t *AUFTSpatialAC::SetOrientationFlagsFromBitMask(uint64_t *result, unsigned int a2)
{
  v2 = 0;
  v3 = *result;
  do
  {
    v4 = v3 | (1 << v2);
    v3 &= ~(1 << v2);
    if (a2)
    {
      v3 = v4;
    }

    a2 >>= 1;
    ++v2;
  }

  while (v2 != 7);
  *result = v3;
  return result;
}

void AUFTSpatialAC::LoadSpatialMetadataProperties(AUFTSpatialAC *this)
{
  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
  }

  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
  {
    v3 = 4;
    v4 = 0;
    if (!(*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 24))(*(this + 66), 3, 0, &v4, &v3))
    {
      (*(*this + 152))(this, 200, 0, 0, 0, v4);
    }
  }

  AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(this, 4, 0, 206, 0, 0);
  AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(this, 5, 0, 207, 0, 0);
  AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(this, 6, 0, 210, 0, 0);
  AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(this, 7, 0, 211, 0, 0);
  AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(this, 8, 0, 208, 0, 0);
  AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(this, 9, 0, 209, 0, 0);
  AUFTSpatialAC::LoadSpatialMetadataPropertyAs<unsigned int,BOOL>(this, 17, 0, 212, 0, 0);
  v2 = 0;
  do
  {
    AUFTSpatialAC::LoadSpatialMetadataPropertyAs<unsigned int,BOOL>(this, 10, v2, 602, 1, v2);
    AUFTSpatialAC::LoadSpatialMetadataPropertyAs<unsigned int,BOOL>(this, 11, v2, 603, 1, v2);
    AUFTSpatialAC::LoadSpatialMetadataPropertyAs<unsigned int,BOOL>(this, 12, v2, 604, 1, v2);
    if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
    {
      dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
    }

    if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
    {
      v3 = 4;
      v4 = 0;
      if (!(*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 24))(*(this + 66), 16, v2, &v4, &v3))
      {
        (*(*this + 152))(this, 605, 1, v2, 0, v4);
      }
    }

    AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(this, 13, v2, 606, 1, v2);
    AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(this, 14, v2, 607, 1, v2);
    AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(this, 15, v2, 608, 1, v2);
    v2 = (v2 + 1);
  }

  while (v2 != 32);
}

void AUFTSpatialAC::LoadSpatialMetadataPropertyAs<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
  }

  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
  {
    v12 = 4;
    v13 = 0.0;
    if (!(*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 24))(a1[66], a2, a3, &v13, &v12))
    {
      (*(*a1 + 152))(a1, a4, a5, a6, 0, v13);
    }
  }
}

void AUFTSpatialAC::LoadSpatialMetadataPropertyAs<unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
  }

  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
  {
    v13 = 4;
    v14 = 0;
    if (!(*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 24))(a1[66], a2, a3, &v14, &v13))
    {
      v12.n128_u64[0] = 0;
      if (v14)
      {
        v12.n128_f32[0] = 1.0;
      }

      (*(*a1 + 152))(a1, a4, a5, a6, 0, v12);
    }
  }
}

void *___ZL21GetSpatialMetadataSPIv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "gSpatialMetadataSPI");
    GetSpatialMetadataSPI(void)::sSpatialMetadataSPI = result;
  }

  return result;
}

uint64_t AUFTSpatialAC::GetProperty(AUFTSpatialAC *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  length_4[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    return 4294956417;
  }

  v5 = 4294956417;
  if (a2 <= 5999)
  {
    if (a2 > 3699)
    {
      if (a2 != 3700)
      {
        if (a2 != 5000)
        {
          return v5;
        }

        if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
        {
          dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
        }

        if (!GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
        {
          return 4294956417;
        }

        AUFTSpatialAC::StoreSpatialMetadataProperties(this);
        length = *(this + 134);
        if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
        {
          dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
        }

        v5 = (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 48))(*(this + 66), a5, &length);
        if (v5)
        {
          if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
          {
            dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
          }

          v13 = AUFTSpatialAC::getAUSLog(void)::gLog;
          if (os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
          {
            LODWORD(length_4[0]) = 67109120;
            HIDWORD(length_4[0]) = v5;
            _os_log_error_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_ERROR, "failed to set spatial metadata with status %u", length_4, 8u);
          }
        }

        return v5;
      }

      v5 = 0;
      v12 = *(this + 376);
    }

    else if (a2 == 21)
    {
      v5 = 0;
      v12 = *(this + 544);
    }

    else
    {
      if (a2 != 3000)
      {
        return v5;
      }

      v5 = 0;
      v12 = *(this + 201);
    }

    *a5 = v12;
    return v5;
  }

  if (a2 > 103999)
  {
    if (a2 == 104000)
    {
      v5 = 0;
      v16 = *(this + 120);
    }

    else
    {
      if (a2 != 104001)
      {
        if (a2 == 105000)
        {
          if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
          {
            dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
          }

          if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
          {
            AUFTSpatialAC::StoreSpatialMetadataProperties(this);
            length = *(this + 134);
            Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], length);
            MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
            if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
            {
              dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
            }

            v5 = (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 48))(*(this + 66), MutableBytePtr, &length);
            if (v5)
            {
              if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
              {
                dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
              }

              v11 = AUFTSpatialAC::getAUSLog(void)::gLog;
              if (os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_ERROR))
              {
                LODWORD(length_4[0]) = 67109120;
                HIDWORD(length_4[0]) = v5;
                _os_log_error_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_ERROR, "failed to set spatial metadata with status %u", length_4, 8u);
              }

              *a5 = 0;
              CFRelease(Mutable);
            }

            else
            {
              CFDataSetLength(Mutable, length);
              *a5 = Mutable;
            }
          }
        }

        return v5;
      }

      v5 = 0;
      v16 = *(this + 121);
    }

    *a5 = v16;
    return v5;
  }

  if (a2 == 6000)
  {
    AU::FTSpatialAC::MetricsReporter::getCAReporterIDs(length_4, *(this + 668));
    v17 = length_4[0];
    memcpy(a5, length_4[0], length_4[1] - length_4[0]);
    if (v17)
    {
      operator delete(v17);
    }

    return 0;
  }

  else if (a2 == 7000)
  {
    v14 = *(this + 668);
    std::mutex::lock((v14 + 48));
    v15 = *(v14 + 136);
    std::mutex::unlock((v14 + 48));
    v5 = 0;
    *a5 = v15;
  }

  return v5;
}

void AUFTSpatialAC::StoreSpatialMetadataProperties(AUFTSpatialAC *this)
{
  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
  }

  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
  {
    v4 = 0.0;
    if (!(*(*this + 144))(this, 200, 0, 0, &v4))
    {
      v3 = v4;
      if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
      {
        dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
      }

      (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 32))(*(this + 66), 3, 0, &v3, 4);
    }
  }

  AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(this, 4, 0, 206, 0, 0);
  AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(this, 5, 0, 207, 0, 0);
  AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(this, 6, 0, 210, 0, 0);
  AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(this, 7, 0, 211, 0, 0);
  AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(this, 8, 0, 208, 0, 0);
  AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(this, 9, 0, 209, 0, 0);
  AUFTSpatialAC::StoreSpatialMetadataPropertyAs<unsigned int,BOOL>(this, 17, 0, 212, 0, 0);
  v2 = 0;
  do
  {
    AUFTSpatialAC::StoreSpatialMetadataPropertyAs<unsigned int,BOOL>(this, 10, v2, 602, 1, v2);
    AUFTSpatialAC::StoreSpatialMetadataPropertyAs<unsigned int,BOOL>(this, 11, v2, 603, 1, v2);
    AUFTSpatialAC::StoreSpatialMetadataPropertyAs<unsigned int,BOOL>(this, 12, v2, 604, 1, v2);
    if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
    {
      dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
    }

    if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
    {
      v4 = 0.0;
      if (!(*(*this + 144))(this, 605, 1, v2, &v4))
      {
        v3 = v4;
        if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
        {
          dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
        }

        (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 32))(*(this + 66), 16, v2, &v3, 4);
      }
    }

    AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(this, 13, v2, 606, 1, v2);
    AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(this, 14, v2, 607, 1, v2);
    AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(this, 15, v2, 608, 1, v2);
    v2 = (v2 + 1);
  }

  while (v2 != 32);
}

void AUFTSpatialAC::StoreSpatialMetadataPropertyAs<float,float>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
  }

  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
  {
    v13 = 0;
    if (!(*(*a1 + 144))(a1, a4, a5, a6, &v13))
    {
      v12 = v13;
      if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
      {
        dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
      }

      (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 32))(a1[66], a2, a3, &v12, 4);
    }
  }
}

void AUFTSpatialAC::StoreSpatialMetadataPropertyAs<unsigned int,BOOL>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
  }

  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
  {
    v13 = 0.0;
    if (!(*(*a1 + 144))(a1, a4, a5, a6, &v13))
    {
      v12 = v13 != 0.0;
      if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
      {
        dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
      }

      (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 32))(a1[66], a2, a3, &v12, 4);
    }
  }
}

uint64_t AUFTSpatialAC::GetPropertyInfo(AUFTSpatialAC *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3)
  {
    return 4294956417;
  }

  v15 = v6;
  v16 = v7;
  result = 4294956417;
  if (a2 <= 5999)
  {
    if (a2 > 3699)
    {
      if (a2 != 3700)
      {
        if (a2 != 5000)
        {
          return result;
        }

        result = 0;
        *a6 = 1;
        v11 = *(this + 134);
        goto LABEL_20;
      }
    }

    else if (a2 != 21)
    {
      if (a2 != 3000)
      {
        return result;
      }

      result = 0;
      *a6 = 0;
      goto LABEL_19;
    }

LABEL_18:
    result = 0;
    *a6 = 1;
LABEL_19:
    v11 = 4;
LABEL_20:
    *a5 = v11;
    return result;
  }

  if (a2 > 103999)
  {
    if (a2 != 104000 && a2 != 104001)
    {
      if (a2 != 105000)
      {
        return result;
      }

      result = 0;
      *a6 = 1;
      v11 = 8;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (a2 != 6000)
  {
    if (a2 != 7000)
    {
      return result;
    }

    goto LABEL_18;
  }

  *a6 = 1;
  AU::FTSpatialAC::MetricsReporter::getCAReporterIDs(&__p, *(this + 668));
  v12 = __p;
  *a5 = (v14 - __p) & 0xFFFFFFF8;
  if (v12)
  {
    operator delete(v12);
  }

  return 0;
}

uint64_t AUFTSpatialAC::Reset(AUFTSpatialAC *this)
{
  *(this + 752) = 1;
  *(this + 69) = 1;
  *(this + 35) = xmmword_1DE095160;
  *(this + 36) = xmmword_1DE095160;
  *(this + 74) = 0;
  *&v2 = 0x101010101010101;
  *(&v2 + 1) = 0x101010101010101;
  *(this + 600) = v2;
  *(this + 616) = v2;
  AUFTSpatialAC::SetOutputParamsToDefaults(this);
  v3 = 884;
  if (*(this + 783))
  {
    v3 = 940;
  }

  v4 = 888;
  if (*(this + 783))
  {
    v4 = 944;
  }

  v5 = 952;
  if (*(this + 783))
  {
    v5 = 948;
  }

  v6 = *(this + v5);
  v7 = *(this + v4);
  v8 = *(this + v3);
  *(this + 1328) = v8;
  *(this + 1329) = v7;
  *(this + 1330) = v6;
  *(this + 1325) = v8;
  *(this + 1326) = v7;
  *(this + 1327) = v6;
  memset_pattern16(this + 4116, &unk_1DE09E970, 0x80uLL);
  memset_pattern16(this + 4244, &unk_1DE09E970, 0x80uLL);
  vDSP_vfill(this + 161, this + 1197, 1, 0x20uLL);
  return 0;
}

uint64_t AUFTSpatialAC::SetOutputParamsToDefaults(AUFTSpatialAC *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0 || (ausdk::AUElement::SetParameter(v2, 0x190u, 0.0), v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v5 & 1) == 0) || (ausdk::AUElement::SetParameter(v4, 0x191u, 0.0), v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v7 & 1) == 0) || (ausdk::AUElement::SetParameter(v6, 0x192u, 1.0), v8 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v9 & 1) == 0) || (ausdk::AUElement::SetParameter(v8, 0x193u, 0.0), v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v11 & 1) == 0) || (ausdk::AUElement::SetParameter(v10, 0x194u, 1.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v13 & 1) == 0) || (ausdk::AUElement::SetParameter(v12, 0x195u, 1.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v14, 0x196u, 1.0);
  for (i = 0; ; ++i)
  {
    v17 = *(this + 93);
    result = v17 ? (*(*v17 + 24))(v17) : (*(this + 91) - *(this + 90)) >> 3;
    if (i >= result)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(Element, 0x320u, 0.0);
    v20 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v20, 0x321u, 0.0);
    v21 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v21, 0x322u, 2.0);
    v22 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v22, 0x323u, 0.0);
    v23 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v23, 0x324u, 1.0);
    v24 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v24, 0x325u, 0.0);
    v25 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v25, 0x326u, 0.0);
    v26 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v26, 0x327u, 10.0);
    v27 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v27, 0x328u, 9.0);
    v28 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v28, 0x329u, 0.0);
    v29 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v29, 0x32Au, 0.0);
    v30 = ausdk::AUScope::GetElement((this + 704), i);
    ausdk::AUElement::SetParameter(v30, 0x32Bu, 0.0);
  }

  return result;
}

uint64_t AUFTSpatialAC::Initialize(AUFTSpatialAC *this)
{
  *(this + 752) = 1;
  v2 = *(this + 21);
  if (v2)
  {
    LODWORD(v3) = (*(*v2 + 24))(v2);
  }

  else
  {
    v3 = (*(this + 19) - *(this + 18)) >> 3;
  }

  *(this + 158) = v3;
  v4 = *(this + 15);
  if (v4)
  {
    LODWORD(v5) = (*(*v4 + 24))(*(this + 15));
    LODWORD(v3) = *(this + 158);
  }

  else
  {
    v5 = (*(this + 13) - *(this + 12)) >> 3;
  }

  *(this + 159) = v5;
  if (v5 >= v3)
  {
    LODWORD(v5) = v3;
  }

  *(this + 160) = v5;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v7 = *(Element + 80);
  *(this + 135) = v7;
  *(this + 1331) = 1112014848;
  (*(*this + 72))(this, 0, 0);
  AUFTSpatialAC::UpdateState(this);
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 70) = *(this + 69);
  *(this + 72) = *(this + 71);
  *(this + 74) = *(this + 73);
  v8 = 884;
  if (*(this + 783))
  {
    v8 = 940;
  }

  v9 = 888;
  v10 = 952;
  if (*(this + 783))
  {
    v10 = 948;
  }

  v11 = *(this + v10);
  if (*(this + 783))
  {
    v9 = 944;
  }

  v12 = *(this + v9);
  v13 = *(this + v8);
  *(this + 1328) = v13;
  *(this + 1329) = v12;
  *(this + 1330) = v11;
  *(this + 1325) = v13;
  *(this + 1326) = v12;
  *(this + 1327) = v11;
  return 0;
}

float32x2_t *AUFTSpatialAC::UpdateState(float32x2_t *this)
{
  AUFTSpatialAC::UpdateGlobalVariableState(this);
  AUFTSpatialAC::UpdateInputVariableState(this);
  v2 = 0;
  for (i = &this[311] + 1; ; i += 6)
  {
    v4 = this[93];
    if (v4)
    {
      LODWORD(v5) = (*(**&v4 + 24))(v4);
    }

    else
    {
      v5 = (*&this[91] - *&this[90]) >> 3;
    }

    if (v2 >= v5)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement(&this[88], v2);
    *(i - 5) = ausdk::AUElement::GetParameter(Element, 0x320u);
    v7 = ausdk::AUScope::GetElement(&this[88], v2);
    *(i - 4) = ausdk::AUElement::GetParameter(v7, 0x321u);
    v8 = ausdk::AUScope::GetElement(&this[88], v2);
    *(i - 3) = ausdk::AUElement::GetParameter(v8, 0x322u);
    v9 = ausdk::AUScope::GetElement(&this[88], v2);
    *(i - 2) = ausdk::AUElement::GetParameter(v9, 0x323u);
    v10 = ausdk::AUScope::GetElement(&this[88], v2);
    *(i - 4) = ausdk::AUElement::GetParameter(v10, 0x325u) == 1.0;
    v11 = ausdk::AUScope::GetElement(&this[88], v2);
    *i = ausdk::AUElement::GetParameter(v11, 0x328u);
    ++v2;
  }

  return AUFTSpatialAC::MakeDependentPositionData(this);
}

void AUFTSpatialAC::CreateExtendedElements(AUFTSpatialAC *this)
{
  ausdk::AUScope::Initialize((this + 656), this, 1, 32);
  for (i = 0; i != 32; ++i)
  {
    std::to_string(&v14, i);
    v3 = std::string::insert(&v14, 0, "In", 2uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v16 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (v16 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
    Element = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v6);
    CFRelease(v6);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  ausdk::AUScope::Initialize((this + 704), this, 2, 32);
  for (j = 0; j != 32; ++j)
  {
    std::to_string(&v14, j);
    v9 = std::string::insert(&v14, 0, "Out", 3uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v16 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (v16 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = CFStringCreateWithCString(0, v11, 0x8000100u);
    v13 = ausdk::AUScope::GetElement((this + 704), j);
    ausdk::Owned<__CFString const*>::operator=((v13 + 72), v12);
    CFRelease(v12);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1DDF163B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AUFTSpatialAC::~AUFTSpatialAC(AUFTSpatialAC *this)
{
  AUFTSpatialAC::~AUFTSpatialAC(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592D9D8;
  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
  }

  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
  {
    (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 16))(*(this + 66));
  }

  v2 = *(this + 669);
  *(this + 334) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>>::reset[abi:ne200100](this + 101, 0);
  std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>>::reset[abi:ne200100](this + 127, 0);
  if (*(this + 2464) == 1)
  {
    v5[0] = (this + 2440);
    std::vector<std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>>>::__destroy_vector::operator()[abi:ne200100](v5);
    *(this + 2464) = 0;
  }

  if (*(this + 3264) == 1)
  {
    v5[0] = (this + 3240);
    std::vector<std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>>>::__destroy_vector::operator()[abi:ne200100](v5);
    *(this + 3264) = 0;
  }

  if (AUFTSpatialACLog(void)::onceToken != -1)
  {
    dispatch_once(&AUFTSpatialACLog(void)::onceToken, &__block_literal_global_177_20536);
  }

  v3 = AUFTSpatialACLog(void)::gLog;
  if (os_log_type_enabled(AUFTSpatialACLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEFAULT, "destroyed", v5, 2u);
  }

  v4 = *(this + 669);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(this + 3264) == 1)
  {
    v5[0] = (this + 3240);
    std::vector<std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>>>::__destroy_vector::operator()[abi:ne200100](v5);
  }

  if (*(this + 2464) == 1)
  {
    v5[0] = (this + 2440);
    std::vector<std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>>>::__destroy_vector::operator()[abi:ne200100](v5);
  }

  std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>>::reset[abi:ne200100](this + 127, 0);
  std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>>::reset[abi:ne200100](this + 101, 0);
  v5[0] = (this + 720);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](v5);
  v5[0] = (this + 672);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](v5);
  ausdk::AUBase::~AUBase(this);
}

void std::vector<std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>::Buffer::Flush(*v2);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTWindowParams,256ul>::Buffer::Flush(v3);
      explicit = atomic_load_explicit((v3 + 680), memory_order_acquire);
      v5 = *(v3 + 744);
      v6 = v5 - explicit;
      v9 = v5 > explicit;
      v7 = 257;
      if (!v9)
      {
        v7 = 0;
      }

      if (v7 != v6)
      {
        v8 = v7 + explicit;
        v10 = v8 - 257;
        v9 = v8 > 0x101;
        if (v8 == 257)
        {
          v8 = 0;
        }

        if (v9)
        {
          v8 = v10;
        }

        atomic_store(v8, (v3 + 744));
      }

      if (*(v3 + 679) < 0)
      {
        operator delete(*(v3 + 656));
      }

      if (*(v3 + 648) == 1)
      {
        v11 = MEMORY[0x1E69E54D0];
        v12 = *MEMORY[0x1E69E54D0];
        *(v3 + 80) = *MEMORY[0x1E69E54D0];
        *(v3 + 80 + *(v12 - 24)) = *(v11 + 24);
        MEMORY[0x1E12BCB20](v3 + 88);
        std::ostream::~ostream();
        MEMORY[0x1E12BD050](v3 + 496);
      }

      std::mutex::~mutex((v3 + 16));
      v13 = *(v3 + 8);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      MEMORY[0x1E12BD160](v3, 0x10F2C40CC79D655);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t **std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>::Buffer::Flush(*v2);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTOrientationParams,256ul>::Buffer::Flush(v3);
      explicit = atomic_load_explicit((v3 + 680), memory_order_acquire);
      v5 = *(v3 + 744);
      v6 = v5 - explicit;
      v9 = v5 > explicit;
      v7 = 257;
      if (!v9)
      {
        v7 = 0;
      }

      if (v7 != v6)
      {
        v8 = v7 + explicit;
        v10 = v8 - 257;
        v9 = v8 > 0x101;
        if (v8 == 257)
        {
          v8 = 0;
        }

        if (v9)
        {
          v8 = v10;
        }

        atomic_store(v8, (v3 + 744));
      }

      if (*(v3 + 679) < 0)
      {
        operator delete(*(v3 + 656));
      }

      if (*(v3 + 648) == 1)
      {
        v11 = MEMORY[0x1E69E54D0];
        v12 = *MEMORY[0x1E69E54D0];
        *(v3 + 80) = *MEMORY[0x1E69E54D0];
        *(v3 + 80 + *(v12 - 24)) = *(v11 + 24);
        MEMORY[0x1E12BCB20](v3 + 88);
        std::ostream::~ostream();
        MEMORY[0x1E12BD050](v3 + 496);
      }

      std::mutex::~mutex((v3 + 16));
      v13 = *(v3 + 8);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      MEMORY[0x1E12BD160](v3, 0x10F2C40C449EA7FLL);
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

uint64_t **std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>::Buffer::Flush(*v2);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUInStreamParams,256ul>::Buffer::Flush(v3);
      explicit = atomic_load_explicit((v3 + 680), memory_order_acquire);
      v5 = *(v3 + 744);
      v6 = v5 - explicit;
      v9 = v5 > explicit;
      v7 = 257;
      if (!v9)
      {
        v7 = 0;
      }

      if (v7 != v6)
      {
        v8 = v7 + explicit;
        v10 = v8 - 257;
        v9 = v8 > 0x101;
        if (v8 == 257)
        {
          v8 = 0;
        }

        if (v9)
        {
          v8 = v10;
        }

        atomic_store(v8, (v3 + 744));
      }

      if (*(v3 + 679) < 0)
      {
        operator delete(*(v3 + 656));
      }

      if (*(v3 + 648) == 1)
      {
        v11 = MEMORY[0x1E69E54D0];
        v12 = *MEMORY[0x1E69E54D0];
        *(v3 + 80) = *MEMORY[0x1E69E54D0];
        *(v3 + 80 + *(v12 - 24)) = *(v11 + 24);
        MEMORY[0x1E12BCB20](v3 + 88);
        std::ostream::~ostream();
        MEMORY[0x1E12BD050](v3 + 496);
      }

      std::mutex::~mutex((v3 + 16));
      v13 = *(v3 + 8);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      MEMORY[0x1E12BD160](v3, 0x10F2C407FE28AF6);
    }

    MEMORY[0x1E12BD160](v2, 0x20C4093837F09);
  }

  return a1;
}

uint64_t **std::unique_ptr<AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>::Buffer::Flush(*v2);
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      AUFTSpatialAC::AURealTimeDebugLog<AUFTSpatialAC::AUFTSpatAUOutStreamParams,256ul>::Buffer::Flush(v3);
      explicit = atomic_load_explicit((v3 + 680), memory_order_acquire);
      v5 = *(v3 + 744);
      v6 = v5 - explicit;
      v9 = v5 > explicit;
      v7 = 257;
      if (!v9)
      {
        v7 = 0;
      }

      if (v7 != v6)
      {
        v8 = v7 + explicit;
        v10 = v8 - 257;
        v9 = v8 > 0x101;
        if (v8 == 257)
        {
          v8 = 0;
        }

        if (v9)
        {
          v8 = v10;
        }

        atomic_store(v8, (v3 + 744));
      }

      if (*(v3 + 679) < 0)
      {
        operator delete(*(v3 + 656));
      }

      if (*(v3 + 648) == 1)
      {
        v11 = MEMORY[0x1E69E54D0];
        v12 = *MEMORY[0x1E69E54D0];
        *(v3 + 80) = *MEMORY[0x1E69E54D0];
        *(v3 + 80 + *(v12 - 24)) = *(v11 + 24);
        MEMORY[0x1E12BCB20](v3 + 88);
        std::ostream::~ostream();
        MEMORY[0x1E12BD050](v3 + 496);
      }

      std::mutex::~mutex((v3 + 16));
      v13 = *(v3 + 8);
      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      MEMORY[0x1E12BD160](v3, 0x10F2C40CC79D655);
    }

    MEMORY[0x1E12BD160](v2, 0x20C4093837F09);
  }

  return a1;
}

void AUFTSpatialAC::AUFTSpatialAC(AUFTSpatialAC *this, OpaqueAudioComponentInstance *a2)
{
  v162 = *MEMORY[0x1E69E9840];
  v3 = (this + 5300);
  v4 = (this + 792);
  v5 = ausdk::AUBase::AUBase(this, a2, 32, 32);
  v6 = 0;
  *v5 = &unk_1F592D9D8;
  *(v5 + 66) = 0;
  *(v5 + 135) = 1186693120;
  *(v5 + 544) = 0;
  *(v5 + 69) = 1;
  *(v5 + 35) = xmmword_1DE095160;
  *(v5 + 36) = xmmword_1DE095160;
  *(v5 + 74) = 0;
  *(v5 + 79) = 0x2000000020;
  v7 = (v5 + 644);
  *(v5 + 644) = 0x3F80000000000000;
  *(v5 + 82) = 0;
  *(v5 + 166) = 0;
  *(v5 + 45) = 0u;
  *(v5 + 46) = 0u;
  *(v5 + 42) = 0u;
  *(v5 + 43) = 0u;
  *(v5 + 700) = 0u;
  *(v5 + 752) = 1;
  *(v5 + 189) = 0;
  *(v5 + 760) = 0;
  *(v5 + 191) = 6;
  *(v5 + 96) = 0x100000001;
  *(v5 + 195) = 65793;
  *(v5 + 392) = 256;
  *(v5 + 197) = 1056964608;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  *v4 = v8;
  *(v5 + 101) = 0;
  *(v5 + 51) = xmmword_1DE09E020;
  *(v5 + 104) = 0x4557A00000000000;
  *(v5 + 105) = 0x645066000;
  *(v5 + 424) = 257;
  *(v5 + 850) = 1;
  *(v4 + 60) = xmmword_1DE09E030;
  *(v4 + 76) = xmmword_1DE09E040;
  *(v5 + 221) = 1061158912;
  *(v5 + 111) = 0x3F80000041200000;
  *(v5 + 56) = xmmword_1DE09E050;
  *(v5 + 228) = -1;
  *(v5 + 458) = 0;
  *(v5 + 918) = 0;
  v4[8] = xmmword_1DE09E060;
  *(v5 + 936) = 0;
  *(v4 + 148) = xmmword_1DE09E070;
  *(v5 + 124) = 0;
  *(v5 + 60) = 0u;
  *(v5 + 61) = 0u;
  *(v5 + 125) = 0x4357000043AC8000;
  *(v5 + 252) = 1070386381;
  *(v5 + 2440) = 0;
  *(v5 + 2464) = 0;
  *(v5 + 1016) = 0u;
  do
  {
    v9 = this + v6;
    *(this + v6 + 2472) = xmmword_1DE09E080;
    v9[2488] = 0;
    *(v9 + 623) = 0;
    v6 += 24;
  }

  while (v6 != 768);
  *(this + 3240) = 0;
  *(this + 3264) = 0;
  v4[155] = xmmword_1DE09E040;
  v4[156] = xmmword_1DE09E090;
  *(this + 513) = 0;
  *(this + 4112) = 0;
  *v3 = xmmword_1DE09E0A0;
  v3[1] = xmmword_1DE09E0B0;
  *(this + 5332) = 0;
  *(this + 334) = 0u;
  AU::FTSpatialAC::GetMessenger(v5);
  ausdk::AUBase::CreateElements(this);
  *(this + 752) = 1;
  *(this + 79) = 0x2000000020;
  *(this + 160) = 32;
  vDSP_vfill(v7, this + 1197, 1, 0x20uLL);
  v10 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v11 & 1) == 0
    || (ausdk::AUElement::SetParameter(v10, 0, 2.0), v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v13 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v12, 1u, 0.0), v14 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v15 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v14, 2u, 1.0), v16 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v17 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v16, 3u, 1.0), v18 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v19 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v18, 4u, 1.0), v20 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v21 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v20, 5u, 6.0), v22 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v23 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v22, 6u, 1.0), v24 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v25 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v24, 7u, 1.0), v26 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v27 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v26, 8u, 1.0), v28 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v29 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v28, 9u, 1.0), v30 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v31 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v30, 0xCu, -15.0), v32 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v33 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v32, 0xDu, 15.0), v34 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v35 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v34, 0xAu, 0.0), v36 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v37 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v36, 0xBu, 0.0), v38 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v39 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v38, 0x10u, 0.0), v40 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v41 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v40, 0x11u, 0.0), v42 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v43 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v42, 0xEu, -15.0), v44 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v45 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v44, 0xFu, 15.0), v46 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v47 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v46, 0x12u, 1.0), v48 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v49 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v48, 0x13u, 20.0), v50 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v51 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v50, 0x14u, 2.0), v52 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v53 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v52, 0x15u, 0.0), v54 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v55 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v54, 0x16u, 0.0), v56 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v57 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v56, 0x17u, 0.0), v58 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v59 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v58, 0x18u, 0.0), v60 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v61 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v60, 0x19u, -1.0), v62 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v63 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v62, 0x1Au, 0.0), v64 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v65 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v64, 0x1Bu, 0.0), v66 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v67 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v66, 0x1Cu, 0.0), v68 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v69 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v68, 0x1Du, -1.0), v70 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v71 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v70, 0x1Eu, 1.0), v72 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v73 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v72, 0x1Fu, 8.0), v74 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v75 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v74, 0x20u, 3.0), v76 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v77 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v76, 0x21u, 0.0), v78 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v79 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v78, 0x22u, 0.0), v80 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v81 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v80, 0x23u, 1.0), v82 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v83 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v82, 0x24u, 0.5), v84 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v85 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v84, 0x25u, 1.0), v86 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v87 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v86, 0x26u, 20.0), v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v89 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v88, 0x27u, 0.0), v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v91 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v90, 0x28u, 0.0), v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v93 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v92, 0xC8u, 1.0), v94 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v95 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v94, 0xC9u, 34.5), v96 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v97 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v96, 0xCAu, 21.5), v98 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v99 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v98, 0xCBu, 60.0), v100 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v101 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v100, 0xCCu, 0.0), v102 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v103 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v102, 0xCDu, 0.0), v104 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v105 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v104, 0xCEu, 3450.0), v106 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v107 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v106, 0xCFu, 2150.0), v108 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v109 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v108, 0xD0u, 0.0), v110 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v111 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v110, 0xD1u, 0.0), v112 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v113 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v112, 0xD2u, 345.0), v114 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v115 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v114, 0xD3u, 215.0), v116 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v117 & 1) == 0)
    || (ausdk::AUElement::SetParameter(v116, 0xD4u, 0.0), v118 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v119 & 1) == 0))
  {
    abort();
  }

  ausdk::AUElement::SetParameter(v118, 0xD5u, 1.0);
  for (i = 0; ; ++i)
  {
    v121 = *(this + 87);
    if (v121)
    {
      LODWORD(v122) = (*(*v121 + 24))(v121);
    }

    else
    {
      v122 = (*(this + 85) - *(this + 84)) >> 3;
    }

    if (i >= v122)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::AUElement::SetParameter(Element, 0x258u, -1.0);
    v124 = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::AUElement::SetParameter(v124, 0x259u, i);
    v125 = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::AUElement::SetParameter(v125, 0x25Au, 0.0);
    v126 = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::AUElement::SetParameter(v126, 0x25Bu, 1.0);
    v127 = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::AUElement::SetParameter(v127, 0x25Cu, 1.0);
    v128 = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::AUElement::SetParameter(v128, 0x25Du, 0.0);
    v129 = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::AUElement::SetParameter(v129, 0x25Eu, 0.0);
    v130 = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::AUElement::SetParameter(v130, 0x25Fu, 0.0);
    v131 = ausdk::AUScope::GetElement((this + 656), i);
    ausdk::AUElement::SetParameter(v131, 0x260u, 0.0);
  }

  AUFTSpatialAC::SetOutputParamsToDefaults(this);
  v132 = 0;
  v157[0].__pn_.__r_.__value_.__r.__words[0] = 0x40D7700000000000;
  *&v157[0].__pn_.__r_.__value_.__r.__words[1] = xmmword_1DE09BD50;
  *&v157[1].__pn_.__r_.__value_.__l.__data_ = xmmword_1DE09BD60;
  while (1)
  {
    v133 = *(this + 15);
    if (v133)
    {
      LODWORD(v134) = (*(*v133 + 24))(v133);
    }

    else
    {
      v134 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v132 >= v134)
    {
      break;
    }

    v135 = ausdk::AUScope::GetElement((this + 80), v132);
    if (!v135)
    {
LABEL_114:
      ausdk::Throw(0xFFFFD583);
    }

    (*(*v135 + 56))(v135, v157);
    ++v132;
  }

  for (j = 0; ; ++j)
  {
    v137 = *(this + 21);
    if (v137)
    {
      LODWORD(v138) = (*(*v137 + 24))(v137);
    }

    else
    {
      v138 = (*(this + 19) - *(this + 18)) >> 3;
    }

    if (j >= v138)
    {
      break;
    }

    v139 = ausdk::AUScope::GetElement((this + 128), j);
    if (!v139)
    {
      goto LABEL_114;
    }

    (*(*v139 + 56))(v139, v157);
  }

  memset_pattern16(this + 4116, &unk_1DE09E970, 0x80uLL);
  memset_pattern16(this + 4244, &unk_1DE09E970, 0x80uLL);
  *&v140 = 0x101010101010101;
  *(&v140 + 1) = 0x101010101010101;
  *(this + 600) = v140;
  *(this + 616) = v140;
  AUFTSpatialAC::UpdateState(this);
  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
  {
    dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
  }

  if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPI)
  {
    (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 8))(this + 528, 32);
    if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
    {
      dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_172);
    }

    (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 40))(*(this + 66), this + 536);
  }

  v141 = CFPreferencesCopyAppValue(@"AUFTSpatialACEnableRealTimeLogs", @"com.apple.coreaudio");
  v142 = v141;
  if (!v141)
  {
LABEL_113:
    v160.__pn_.__r_.__value_.__r.__words[0] = &unk_1F592DEF0;
    v161 = &v160;
    operator new();
  }

  v143 = CFGetTypeID(v141);
  if (v143 != CFBooleanGetTypeID())
  {
    CFRelease(v142);
    goto LABEL_113;
  }

  TypeID = CFBooleanGetTypeID();
  if (TypeID == CFGetTypeID(v142))
  {
    if (!CFBooleanGetValue(v142))
    {
LABEL_93:
      v147 = 0;
LABEL_94:
      CFRelease(v142);
      if (v147)
      {
        std::__fs::filesystem::__temp_directory_path(v157, 0);
        memset(&buf, 0, sizeof(buf));
        std::string::append[abi:ne200100]<char const*,0>(&buf, "AUFTSpatialAC", "");
        std::__fs::filesystem::operator/[abi:ne200100](&v160, v157, &buf);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v157[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v157[0].__pn_.__r_.__value_.__l.__data_);
        }

        if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
        {
          dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
        }

        v148 = AUFTSpatialAC::getAUSLog(void)::gLog;
        if (os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          v149 = &v160;
          if ((v160.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v149 = v160.__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(v157[0].__pn_.__r_.__value_.__l.__data_) = 136315138;
          *(v157[0].__pn_.__r_.__value_.__r.__words + 4) = v149;
          _os_log_impl(&dword_1DDB85000, v148, OS_LOG_TYPE_DEFAULT, "set up logs in %s", v157, 0xCu);
        }

        std::__fs::filesystem::__status(&v160, 0);
        if (buf.__r_.__value_.__s.__data_[0] == 255 || !buf.__r_.__value_.__s.__data_[0])
        {
          std::__fs::filesystem::__create_directory(&v160, 0);
        }

        v158 = 0u;
        memset(v157, 0, sizeof(v157));
        __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v155 = std::chrono::system_clock::to_time_t(&__t);
        rep = __t.__d_.__rep_;
        v151 = localtime(&v155);
        v152 = strftime(v157, 0x40uLL, "%T", v151);
        snprintf(v157 + v152, 64 - v152, ":%03lld", rep / 1000 % 1000);
        if (AUFTSpatialAC::getAUSLog(void)::onceToken != -1)
        {
          dispatch_once(&AUFTSpatialAC::getAUSLog(void)::onceToken, &__block_literal_global_20531);
        }

        v153 = AUFTSpatialAC::getAUSLog(void)::gLog;
        if (os_log_type_enabled(AUFTSpatialAC::getAUSLog(void)::gLog, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v157;
          _os_log_impl(&dword_1DDB85000, v153, OS_LOG_TYPE_DEFAULT, "set up logs with time stamp %s", &buf, 0xCu);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "OrientationParams");
        AUFTSpatialAC::SetUpLogs(void)::$_0::operator()(&buf, &v160, v157, __p);
        operator new();
      }

      goto LABEL_113;
    }
  }

  else
  {
    v145 = CFNumberGetTypeID();
    if (v145 != CFGetTypeID(v142))
    {
      goto LABEL_93;
    }

    v146 = applesauce::CF::details::number_convert_as<BOOL>(v142);
    if (v146 < 0x100u || (v146 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  v147 = 1;
  goto LABEL_94;
}

void sub_1DDF185A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t buf, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AUFTSpatialAC::SetUpMetricsReporter(void)::$_0,std::allocator<AUFTSpatialAC::SetUpMetricsReporter(void)::$_0>,void ()(long long,applesauce::CF::DictionaryRef)>::operator()(uint64_t a1, uint64_t *a2, const void **a3)
{
  v3 = *a2;
  v4 = *a3;
  *a3 = 0;
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_629);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    AudioStatisticsLibraryLoader(void)::libSym(v3, v4, 268435467, 0);
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DDF188F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_20578()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

void AUFTSpatialAC::SetUpLogs(void)::$_0::operator()(std::__fs::filesystem::path *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v13[0] = a3;
  v13[1] = 63;
  v6 = *(a4 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a4[1];
  }

  if (v7 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = *a4;
  }

  v13[3] = v6;
  v13[4] = 429;
  v13[2] = v8;
  v14 = v18;
  *__len = xmmword_1DE09C120;
  v16 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v17 = 0;
  __src = v18;
  v12[0] = 2;
  v12[1] = v13;
  v12[2] = 429;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v14, "log.{}.{}.csv", 13, v12);
  v9 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] >= 0x17)
  {
    operator new();
  }

  *(&__dst.__pn_.__r_.__value_.__s + 23) = __len[1];
  if (__len[1])
  {
    memmove(&__dst, __src, __len[1]);
  }

  __dst.__pn_.__r_.__value_.__s.__data_[v9] = 0;
  if (__src != v18)
  {
    operator delete(__src);
  }

  __p = __dst;
  std::__fs::filesystem::operator/[abi:ne200100](a1, a2, &__p);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1DDF18CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t AUSpeakerProtectionV3::GetScopeExtended(AUSpeakerProtectionV3 *this, int a2)
{
  if (a2 == 4)
  {
    return this + 792;
  }

  else
  {
    return 0;
  }
}

uint64_t AUSpeakerProtectionV3::ChangeStreamFormat(AUSpeakerProtectionV3 *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *__s2, const AudioStreamBasicDescription *__s1)
{
  if (a2 != 1)
  {
    ausdk::AUBase::ChangeStreamFormat(this, a2, a3, __s2, __s1);
    return 0;
  }

  if (a3 == 1)
  {
    v11 = *(this + 15);
    if (v11)
    {
      LODWORD(v12) = (*(*v11 + 24))(v11);
    }

    else
    {
      v12 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v12 >= 2)
    {
      ausdk::AUBase::ChangeStreamFormat(this, 1, 1, __s2, __s1);
      result = 0;
      *(this + 1330) = 1;
      return result;
    }

    return 4294956419;
  }

  if (a3)
  {
    return 4294956419;
  }

  ausdk::AUBase::ChangeStreamFormat(this, 1, a3, __s2, __s1);
  if (*(this + 1330))
  {
    return 0;
  }

  v8 = *(this + 15);
  if (v8)
  {
    LODWORD(v9) = (*(*v8 + 24))(v8);
  }

  else
  {
    v9 = (*(this + 13) - *(this + 12)) >> 3;
  }

  if (v9 < 2)
  {
    return 0;
  }

  result = ausdk::AUScope::GetElement((this + 80), 1u);
  if (result)
  {
    p_mChannelsPerFrame = &__s1->mChannelsPerFrame;
    v14 = vld1_dup_f32(p_mChannelsPerFrame);
    v17[0] = *&__s1->mSampleRate;
    v17[1] = 0x96C70636DLL;
    v19 = 1;
    v15 = vshl_u32(v14, 0x100000003);
    v18 = v15.i32[0];
    v20 = v15;
    v21 = 32;
    Element = ausdk::AUScope::GetElement((this + 80), 1u);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    return (*(*Element + 56))(Element, v17);
  }

  return result;
}

BOOL AUSpeakerProtectionV3::ValidFormat(AUSpeakerProtectionV3 *this, int a2, int a3, const AudioStreamBasicDescription *a4)
{
  if (a2 == 2 || (result = 1, a2 == 1) && !a3)
  {
    v6 = *&a4->mBytesPerPacket;
    v8[0] = *&a4->mSampleRate;
    v8[1] = v6;
    v9 = *&a4->mBitsPerChannel;
    v10 = 0;
    v7 = CAStreamBasicDescription::IdentifyCommonPCMFormat(v8, &v10, 0);
    result = 0;
    if (v7)
    {
      if (v10 == 1)
      {
        return a4->mChannelsPerFrame - 1 < 8;
      }
    }
  }

  return result;
}

uint64_t AUSpeakerProtectionV3::SupportedNumChannels(AUSpeakerProtectionV3 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUSpeakerProtectionV3::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 8;
}

uint64_t AUSpeakerProtectionV3::GetParameterValueStrings(AUSpeakerProtectionV3 *this, int a2, int a3, const __CFArray **a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 != 4)
  {
    return 4294956418;
  }

  if (a3 == 42)
  {
    if (a4)
    {
      v7 = @"Open Loop";
      v8 = @"Convoy Limit";
      v9 = @"Convoy Adaptive";
      v10 = @"Adaptive";
      v11 = @"Convoy Limit v2";
      v6 = CFArrayCreate(0, &v7, 5, 0);
      result = 0;
      *a4 = v6;
      return result;
    }

    return 4294956445;
  }

  if (a3 == 20)
  {
    if (a4)
    {
      v7 = @"None   ";
      v8 = @"Pilot Tone";
      v9 = @"LP MLS";
      *a4 = CFArrayCreate(0, &v7, 3, 0);
      return 4294956418;
    }

    return 4294956445;
  }

  return 4294956418;
}

uint64_t AUSpeakerProtectionV3::RestoreState(AUSpeakerProtectionV3 *this, CFTypeRef cf)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 1185) != 1)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294956445;
  }

  valuePtr = 0;
  result = CFDictionaryGetValue(cf, @"auversion");
  if (!result)
  {
    return result;
  }

  if (CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr) && valuePtr == 65537)
  {
    result = ausdk::AUBase::RestoreState(this, cf);
    ++*(this + 159);
    return result;
  }

  v6 = spp3Subsystem();
  if (v6)
  {
    v7 = *v6;
    if (!*v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
  }

  result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    return result;
  }

  *buf = 136315394;
  v10 = "AUSpeakerProtectionV3.cpp";
  v11 = 1024;
  v12 = 2746;
  _os_log_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preset does not match AU version. Skipping RestoreState", buf, 0x12u);
  return 0;
}

uint64_t AUSpeakerProtectionV3::SaveExtendedScopes(AUSpeakerProtectionV3 *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUSpeakerProtectionV3::SaveState(AUSpeakerProtectionV3 *this, ausdk **a2)
{
  ausdk::AUBase::SaveState(this, a2);
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      valuePtr = 65537;
      v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(v3, @"auversion", v4);
      CFRelease(v4);
    }
  }

  return 0;
}

uint64_t AUSpeakerProtectionV3::GetParameterInfo(AUSpeakerProtectionV3 *this, int a2, int a3, AudioUnitParameterInfo *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = spp3Subsystem();
  if (v7)
  {
    if (*(v7 + 8))
    {
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
        {
          v43 = 136315394;
          v44 = "AUSpeakerProtectionV3.cpp";
          v45 = 1024;
          v46 = 1306;
          _os_log_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUSpeakerProtectionV3::GetParameterInfo", &v43, 0x12u);
        }
      }
    }
  }

  a4->flags = 0;
  a4->unitName = 0;
  if (a2 == 4)
  {
    switch(a3)
    {
      case 0:
        v10 = @"temperature limit";
LABEL_32:
        a4->cfNameString = v10;
        a4->flags = 0x8000000;
        CFStringGetCString(v10, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v25 = 0x4316000000000000;
        goto LABEL_109;
      case 1:
        a4->cfNameString = @"hard temp limit headroom";
        a4->flags = 0x8000000;
        CFStringGetCString(@"hard temp limit headroom", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x41A0000000000000;
        v18 = 10.0;
        goto LABEL_126;
      case 2:
        v37 = @"T_sett_vc";
        goto LABEL_108;
      case 3:
        a4->cfNameString = @"T_sett_mg";
        a4->flags = 0x8000000;
        CFStringGetCString(@"T_sett_mg", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v38 = 0x4348000000000000;
        goto LABEL_69;
      case 4:
        a4->cfNameString = @"tau_Tvc";
        a4->flags = 0x8000000;
        CFStringGetCString(@"tau_Tvc", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x42C800003DCCCCCDLL;
        v34 = 3.0;
        goto LABEL_113;
      case 5:
        a4->cfNameString = @"tau_Tmg";
        a4->flags = 0x8000000;
        CFStringGetCString(@"tau_Tmg", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x43FA00003DCCCCCDLL;
        v34 = 180.0;
        goto LABEL_113;
      case 6:
        a4->cfNameString = @"ThermalFFSpeedupFactor";
        a4->flags = 0x8000000;
        CFStringGetCString(@"ThermalFFSpeedupFactor", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x3F80000000000000;
        v18 = 0.25;
        goto LABEL_126;
      case 7:
        v39 = @"temperature";
        goto LABEL_90;
      case 8:
        v39 = @"OL temperature";
LABEL_90:
        a4->cfNameString = v39;
        a4->flags = 0x8000000;
        CFStringGetCString(v39, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x4302000041200000;
        v13 = 50.0;
        goto LABEL_123;
      case 9:
        a4->cfNameString = @"Reb_ref";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Reb_ref", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v36 = 0x4120000000000000;
        goto LABEL_66;
      case 10:
        a4->cfNameString = @"Rshunt";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Rshunt", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x4000000000000000;
        v34 = 0.1;
        goto LABEL_113;
      case 11:
        a4->cfNameString = @"Rampout";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Rampout", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x3FC0000000000000;
        v34 = 0.4;
        goto LABEL_113;
      case 12:
        a4->cfNameString = @"mt";
        a4->flags = 0x8000000;
        CFStringGetCString(@"mt", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x3A83126F00000000;
        v34 = 0.000059;
        goto LABEL_113;
      case 13:
        a4->cfNameString = @"ct";
        a4->flags = 0x8000000;
        CFStringGetCString(@"ct", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x412000003A83126FLL;
        v34 = 0.31552;
        goto LABEL_113;
      case 14:
        a4->cfNameString = @"kt";
        a4->flags = 0x8000000;
        CFStringGetCString(@"kt", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x45DAC00042C80000;
        v34 = 1876.2;
        goto LABEL_113;
      case 15:
        a4->cfNameString = @"ag";
        a4->flags = 0x8000000;
        CFStringGetCString(@"ag", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v36 = 0x4170000040A00000;
LABEL_66:
        *&a4->minValue = v36;
        v18 = 8.0;
        goto LABEL_126;
      case 16:
        a4->cfNameString = @"g_bw";
        a4->flags = 0x8000000;
        CFStringGetCString(@"g_bw", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v16 = 0x400000003E800000;
        goto LABEL_96;
      case 17:
        a4->cfNameString = @"Q_d";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Q_d", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v40 = 0x404000003F000000;
        goto LABEL_112;
      case 18:
        a4->cfNameString = @"phi";
        a4->flags = 0x8000000;
        CFStringGetCString(@"phi", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x412000003DCCCCCDLL;
        v34 = 1.09;
        goto LABEL_113;
      case 19:
        a4->cfNameString = @"x_lim";
        a4->flags = 0x8000000;
        CFStringGetCString(@"x_lim", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x3F800000358637BDLL;
        v34 = 0.3;
        goto LABEL_113;
      case 20:
        a4->cfNameString = @"ThermalMeasurementMethod";
        a4->flags = 0x8000000;
        CFStringGetCString(@"ThermalMeasurementMethod", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Indexed;
        *&a4->minValue = 0x4000000000000000;
        v30 = 1.0;
        goto LABEL_79;
      case 21:
        v9 = @"pilot tone enabled";
        goto LABEL_95;
      case 22:
        v9 = @"CL thermal feedback enabled";
LABEL_95:
        a4->cfNameString = v9;
        a4->flags = 0x8000000;
        CFStringGetCString(v9, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Boolean;
        v16 = 0x3F80000000000000;
        goto LABEL_96;
      case 23:
        v23 = @"TlimErrDecayTime";
LABEL_104:
        a4->cfNameString = v23;
        a4->flags = 0x8000000;
        CFStringGetCString(v23, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Seconds;
        *&a4->minValue = 0x4496000038D1B717;
        v26 = 1.0;
        goto LABEL_130;
      case 24:
        a4->cfNameString = @"TempSenseWindowTime";
        a4->flags = 0x8000000;
        CFStringGetCString(@"TempSenseWindowTime", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Seconds;
        *&a4->minValue = 0x40A0000000000000;
        a4->defaultValue = 0.18;
        v20 = a4->flags - 1069547520;
        goto LABEL_133;
      case 25:
        a4->cfNameString = @"TempSenseSmoothingTau";
        a4->flags = 0x8000000;
        CFStringGetCString(@"TempSenseSmoothingTau", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Seconds;
        *&a4->minValue = 0x4120000000000000;
        a4->defaultValue = 0.0;
        goto LABEL_131;
      case 26:
        a4->cfNameString = @"a_t_inv";
        a4->flags = 0x8000000;
        CFStringGetCString(@"a_t_inv", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x43E1000000000000;
        v34 = 300.0;
        goto LABEL_113;
      case 27:
        v32 = @"PilotAmplHi_dB";
        goto LABEL_106;
      case 28:
        v32 = @"PilotAmplLo_dB";
LABEL_106:
        a4->cfNameString = v32;
        a4->flags = 0x8000000;
        CFStringGetCString(v32, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Decibels;
        *&a4->minValue = 0xC1200000C2A00000;
        v18 = -40.0;
        goto LABEL_126;
      case 29:
        v37 = @"PilotUpperThres";
        goto LABEL_108;
      case 30:
        v37 = @"PilotLowerThres";
LABEL_108:
        a4->cfNameString = v37;
        a4->flags = 0x8000000;
        CFStringGetCString(v37, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v25 = 0x4348000000000000;
LABEL_109:
        *&a4->minValue = v25;
        v18 = 100.0;
        goto LABEL_126;
      case 31:
        a4->cfNameString = @"PilotDecayTime";
        a4->flags = 0x8000000;
        CFStringGetCString(@"PilotDecayTime", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Seconds;
        v22 = 0x427000003A83126FLL;
LABEL_73:
        *&a4->minValue = v22;
        v26 = 0.5;
        goto LABEL_130;
      case 32:
        a4->cfNameString = @"PilotFreq";
        a4->flags = 0x8000000;
        CFStringGetCString(@"PilotFreq", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Hertz;
        *&a4->minValue = 0x461C40003F800000;
        v26 = 43.066;
        goto LABEL_130;
      case 33:
        v33 = @"LPMLSPreGain";
        goto LABEL_52;
      case 34:
        v33 = @"LPMLSPostGain";
LABEL_52:
        a4->cfNameString = v33;
        a4->flags = 0x8000000;
        CFStringGetCString(v33, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_LinearGain;
        v16 = 0x4120000000000000;
        goto LABEL_96;
      case 35:
        a4->cfNameString = @"LPMLSLowerCorner";
        a4->flags = 0x8000000;
        CFStringGetCString(@"LPMLSLowerCorner", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Hertz;
        v21 = 0x42C8000038D1B717;
        goto LABEL_47;
      case 36:
        a4->cfNameString = @"LPMLS pre clip level";
        a4->flags = 0x8000000;
        CFStringGetCString(@"LPMLS pre clip level", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        goto LABEL_122;
      case 37:
        v28 = @"mu_Re";
        goto LABEL_111;
      case 38:
        v28 = @"mu_Le";
        goto LABEL_111;
      case 39:
        v28 = @"mu mechanical (PU)";
LABEL_111:
        a4->cfNameString = v28;
        a4->flags = 0x8000000;
        CFStringGetCString(v28, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v40 = 0x4120000000000000;
LABEL_112:
        *&a4->minValue = v40;
        v34 = 1.0;
LABEL_113:
        a4->defaultValue = v34;
        v20 = a4->flags - 1065353216;
        goto LABEL_133;
      case 40:
        v35 = @"Max relative displacement";
        goto LABEL_76;
      case 41:
        v35 = @"abs(Min relative displacement)";
LABEL_76:
        a4->cfNameString = v35;
        a4->flags = 0x8000000;
        CFStringGetCString(v35, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v12 = 0x3FAA9FBE00000000;
        goto LABEL_77;
      case 42:
        a4->cfNameString = @"DisplacementProtectionType";
        a4->flags = 0x8000000;
        CFStringGetCString(@"DisplacementProtectionType", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Indexed;
        *&a4->minValue = 0x4080000000000000;
        a4->defaultValue = 0.0;
        goto LABEL_101;
      case 43:
        v27 = @"Convoy Dirty Buffer Sticky Flag";
        goto LABEL_49;
      case 44:
        v27 = @"Convoy Block Flag";
LABEL_49:
        a4->cfNameString = v27;
        a4->flags = 0x8000000;
        CFStringGetCString(v27, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v12 = 0x3F80000000000000;
        goto LABEL_77;
      case 45:
        a4->cfNameString = @"Convoy X Limit Relative (%)";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy X Limit Relative (%)", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Percent;
        *&a4->minValue = 0x42C8000042700000;
        v13 = 70.0;
        goto LABEL_123;
      case 46:
        a4->cfNameString = @"Convoy Norm Factor";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Norm Factor", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Ratio;
LABEL_122:
        *&a4->minValue = 0x4000000000000000;
        v13 = 1.0;
        goto LABEL_123;
      case 47:
        a4->cfNameString = @"Convoy PeakFinder Threshold Upper";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy PeakFinder Threshold Upper", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x3F80000000000000;
        v30 = 0.6;
LABEL_79:
        a4->defaultValue = v30;
LABEL_101:
        v20 = a4->flags | 0xC0000000;
        goto LABEL_133;
      case 48:
        a4->cfNameString = @"Convoy PeakFinder Threshold Lower";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy PeakFinder Threshold Lower", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x3F80000000000000;
        v18 = 0.6;
        goto LABEL_126;
      case 49:
        a4->cfNameString = @"Convoy Peak Detector Attack Time";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Peak Detector Attack Time", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Seconds;
        v17 = 0x42C8000000000000;
        goto LABEL_117;
      case 50:
        a4->cfNameString = @"Convoy Peak Detector Release Time";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Peak Detector Release Time", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Seconds;
        *&a4->minValue = 0x42C8000000000000;
        v26 = 4.0;
        goto LABEL_130;
      case 51:
        a4->cfNameString = @"Convoy Norm Factor Cap Upper";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Norm Factor Cap Upper", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Ratio;
        *&a4->minValue = 0x40A000003F800000;
        v18 = 2.0;
        goto LABEL_126;
      case 52:
        a4->cfNameString = @"Convoy Norm Factor Cap Lower";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Norm Factor Cap Lower", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Ratio;
        *&a4->minValue = 0x3F80000000000000;
        v18 = 0.2;
        goto LABEL_126;
      case 53:
        v29 = @"Convoy Norm Factor Attack";
        goto LABEL_116;
      case 54:
        v29 = @"Convoy Norm Factor Release";
LABEL_116:
        a4->cfNameString = v29;
        a4->flags = 0x8000000;
        CFStringGetCString(v29, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Seconds;
        v17 = 0x3F80000000000000;
LABEL_117:
        *&a4->minValue = v17;
        v26 = 0.0001;
        goto LABEL_130;
      case 55:
        v31 = @"Convoy Peak Ratio Positive Block Threshold";
        goto LABEL_119;
      case 56:
        v31 = @"Convoy Peak Ratio Negative Block Threshold";
        goto LABEL_119;
      case 57:
        a4->cfNameString = @"Convoy Min Excursion";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Min Excursion", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 3212836864;
        v18 = -0.5;
        goto LABEL_126;
      case 58:
        v31 = @"Convoy Max Excursion";
LABEL_119:
        a4->cfNameString = v31;
        a4->flags = 0x8000000;
        CFStringGetCString(v31, a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x3F80000000000000;
        v18 = 0.5;
        goto LABEL_126;
      case 59:
        a4->cfNameString = @"Convoy Relative X Limit Upper";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Relative X Limit Upper", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x3F8000003F333333;
        v18 = 0.9;
        goto LABEL_126;
      case 60:
        a4->cfNameString = @"Convoy Relative X Limit Lower";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Relative X Limit Lower", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        *&a4->minValue = 0x3F33333300000000;
        v18 = 0.7;
        goto LABEL_126;
      case 61:
        a4->cfNameString = @"Convoy Peak Ratios InWindow Count Threshold";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Peak Ratios InWindow Count Threshold", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v19 = 0x4348000000000000;
LABEL_81:
        *&a4->minValue = v19;
        v18 = 50.0;
        goto LABEL_126;
      case 62:
        a4->cfNameString = @"Convoy Norm Factor Threshold in %";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Norm Factor Threshold in %", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Percent;
        v16 = 0x40A0000000000000;
LABEL_96:
        *&a4->minValue = v16;
        v18 = 1.0;
        goto LABEL_126;
      case 63:
        a4->cfNameString = @"Convoy Buffer Dirty Count Threshold";
        a4->flags = 0x8000000;
        CFStringGetCString(@"Convoy Buffer Dirty Count Threshold", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v38 = 0x42C8000000000000;
LABEL_69:
        *&a4->minValue = v38;
        v18 = 20.0;
LABEL_126:
        a4->defaultValue = v18;
LABEL_127:
        flags = a4->flags;
        v42 = -1073741824;
        goto LABEL_132;
      case 64:
LABEL_14:
        a4->cfNameString = @"thermal gain";
        a4->flags = 0x8000000;
        CFStringGetCString(@"thermal gain", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Decibels;
        v12 = 0x40600000C1A00000;
        goto LABEL_77;
      case 65:
LABEL_15:
        a4->cfNameString = @"displacement gain";
        a4->flags = 0x8000000;
        CFStringGetCString(@"displacement gain", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Decibels;
        *&a4->minValue = 0x40800000C1400000;
        v13 = -12.0;
LABEL_123:
        a4->defaultValue = v13;
        goto LABEL_124;
      case 66:
LABEL_13:
        a4->cfNameString = @"power control gain";
        a4->flags = 0x8000000;
        CFStringGetCString(@"power control gain", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Decibels;
        v12 = 3248488448;
LABEL_77:
        *&a4->minValue = v12;
        a4->defaultValue = 0.0;
LABEL_124:
        flags = a4->flags;
        v42 = 1073782784;
        goto LABEL_132;
      case 67:
        a4->cfNameString = @"PilotDecayTimeStage2";
        a4->flags = 0x8000000;
        CFStringGetCString(@"PilotDecayTimeStage2", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Seconds;
        v21 = 0x3F8000003A83126FLL;
LABEL_47:
        *&a4->minValue = v21;
        v26 = 0.01;
        goto LABEL_130;
      case 68:
        a4->cfNameString = @"PilotEnableThres";
        a4->flags = 0x8000000;
        CFStringGetCString(@"PilotEnableThres", a4->name, 52, 0x8000100u);
        a4->unit = kAudioUnitParameterUnit_Generic;
        v15 = 0x3F80000033D6BF95;
LABEL_129:
        *&a4->minValue = v15;
        v26 = 0.00001;
LABEL_130:
        a4->defaultValue = v26;
LABEL_131:
        flags = a4->flags;
        v42 = -1061158912;
LABEL_132:
        v20 = flags + v42;
LABEL_133:
        result = 0;
        a4->flags = v20;
        break;
      default:
        return 4294956418;
    }
  }

  else
  {
    if (!a2)
    {
      switch(a3)
      {
        case 0:
          v9 = @"thermal protection enabled";
          goto LABEL_95;
        case 1:
          v9 = @"displacement protection enabled";
          goto LABEL_95;
        case 2:
          a4->cfNameString = @"thermal/power control gain attack time";
          a4->flags = 0x8000000;
          CFStringGetCString(@"thermal/power control gain attack time", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Seconds;
          v21 = 0x4496000038D1B717;
          goto LABEL_47;
        case 3:
          v23 = @"thermal/power control gain release time";
          goto LABEL_104;
        case 4:
          a4->cfNameString = @"ambient temperature";
          a4->flags = 0x8000000;
          CFStringGetCString(@"ambient temperature", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Generic;
          v19 = 0x42C8000000000000;
          goto LABEL_81;
        case 5:
          v10 = @"SafeTlim";
          goto LABEL_32;
        case 6:
          a4->cfNameString = @"SafeTlimTimeMin";
          a4->flags = 0x8000000;
          CFStringGetCString(@"SafeTlimTimeMin", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Generic;
          *&a4->minValue = 0x4416000000000000;
          v18 = 600.0;
          goto LABEL_126;
        case 7:
          a4->cfNameString = @"SafeTlimOffset";
          a4->flags = 0x8000000;
          CFStringGetCString(@"SafeTlimOffset", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Generic;
          v24 = 3267887104;
          goto LABEL_34;
        case 8:
          a4->cfNameString = @"LookaheadDelay_ms";
          a4->flags = 0x8000000;
          CFStringGetCString(@"LookaheadDelay_ms", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Generic;
          v16 = 0x4000000000000000;
          goto LABEL_96;
        case 9:
          a4->cfNameString = @"peak attack time";
          a4->flags = 0x8000000;
          CFStringGetCString(@"peak attack time", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Seconds;
          v17 = 0x3F000000358637BDLL;
          goto LABEL_117;
        case 10:
          a4->cfNameString = @"peak decay time";
          a4->flags = 0x8000000;
          CFStringGetCString(@"peak decay time", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Seconds;
          v22 = 0x43B4000038D1B717;
          goto LABEL_73;
        case 11:
          a4->cfNameString = @"feedback integration time";
          a4->flags = 0x8000000;
          CFStringGetCString(@"feedback integration time", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Seconds;
          v15 = 0x43B40000358637BDLL;
          goto LABEL_129;
        case 12:
          goto LABEL_14;
        case 13:
          goto LABEL_15;
        case 14:
          a4->cfNameString = @"spk pwr averaging window time";
          a4->flags = 0x8000000;
          CFStringGetCString(@"spk pwr averaging window time", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Seconds;
          *&a4->minValue = 0x41F000003DCCCCCDLL;
          v18 = 5.0;
          goto LABEL_126;
        case 15:
          v14 = @"modeled speaker power";
          goto LABEL_25;
        case 16:
          v14 = @"measured speaker power";
LABEL_25:
          a4->cfNameString = v14;
          a4->flags = 0x8000000;
          CFStringGetCString(v14, a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Generic;
          *&a4->minValue = 0x41A0000000000000;
          a4->defaultValue = 0.0;
          v20 = a4->flags + 1077977088;
          goto LABEL_133;
        case 17:
          goto LABEL_13;
        case 18:
          v9 = @"CPMS power control enabled";
          goto LABEL_95;
        case 19:
          a4->cfNameString = @"CPMS power control closed loop";
          a4->flags = 0x8000000;
          CFStringGetCString(@"CPMS power control closed loop", a4->name, 52, 0x8000100u);
          a4->unit = kAudioUnitParameterUnit_Boolean;
          v24 = 0x3F80000000000000;
LABEL_34:
          *&a4->minValue = v24;
          a4->defaultValue = 0.0;
          goto LABEL_127;
        default:
          return 4294956418;
      }
    }

    return 4294956418;
  }

  return result;
}

uint64_t AUSpeakerProtectionV3::GetParameterList(AUSpeakerProtectionV3 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 4)
  {
    if (!a3)
    {
      v30 = 48;
      goto LABEL_10;
    }

    *a3 = xmmword_1DE09E0C0;
    *(a3 + 1) = xmmword_1DE09E0D0;
    v30 = 48;
    v43 = 65;
    v42 = 66;
    v29 = 64;
    v39 = 40;
    v40 = 41;
    v41 = 38;
    *(a3 + 2) = xmmword_1DE09E0E0;
    *(a3 + 3) = xmmword_1DE09E0F0;
    v37 = 37;
    v38 = 39;
    v28 = 42;
    v36 = 36;
    v27 = 35;
    v34 = 33;
    v35 = 34;
    v32 = 20;
    v33 = 32;
    *(a3 + 4) = xmmword_1DE09DF20;
    *(a3 + 5) = xmmword_1DE09E100;
    v9 = 68;
    v10 = 67;
    v11 = 31;
    v12 = 30;
    *(a3 + 6) = xmmword_1DE09E110;
    v13 = 47;
    v14 = 46;
    a3[28] = 29;
    v15 = 45;
    v16 = 44;
    v17 = 43;
    v18 = 42;
    v19 = 41;
    v20 = 40;
    v21 = 39;
    v22 = 38;
    v23 = 37;
    v24 = 36;
    v25 = 35;
    v26 = 34;
    v5 = 33;
    v7 = 32;
    v6 = 31;
    v8 = 30;
    v4 = 29;
    goto LABEL_7;
  }

  if (!a2)
  {
    if (!a3)
    {
      v30 = 20;
      goto LABEL_10;
    }

    v4 = 1;
    *a3 = 4;
    v5 = 5;
    v43 = 13;
    v41 = 0;
    v42 = 17;
    v6 = 3;
    v39 = 19;
    v40 = 1;
    v37 = 15;
    v38 = 18;
    v7 = 4;
    v8 = 2;
    v35 = 11;
    v36 = 14;
    v33 = 9;
    v34 = 10;
    v32 = 3;
    v9 = 2;
    v10 = 7;
    v11 = 6;
    v12 = 5;
    v13 = 19;
    v14 = 18;
    v15 = 17;
    v16 = 16;
    v17 = 15;
    v18 = 14;
    v19 = 13;
    v20 = 12;
    v21 = 11;
    v22 = 10;
    v23 = 9;
    v24 = 8;
    v25 = 7;
    v26 = 6;
    v27 = 8;
    v28 = 16;
    v29 = 12;
    v30 = 20;
LABEL_7:
    a3[v4] = v12;
    a3[v8] = v11;
    a3[v6] = v10;
    a3[v7] = v9;
    a3[v5] = v32;
    a3[v26] = v33;
    a3[v25] = v34;
    a3[v24] = v35;
    a3[v23] = v27;
    a3[v22] = v36;
    a3[v21] = v28;
    a3[v20] = v37;
    a3[v19] = v41;
    a3[v18] = v38;
    a3[v17] = v39;
    a3[v16] = v40;
    a3[v15] = v29;
    a3[v14] = v42;
    a3[v13] = v43;
LABEL_10:
    *a4 = v30;
  }

  return 0;
}

uint64_t AUSpeakerProtectionV3::SetBusCount(AUSpeakerProtectionV3 *this, int a2, unsigned int a3)
{
  if (a2 == 2)
  {
    if (a3 == 1)
    {
      v3 = 128;
      goto LABEL_7;
    }

    return 4294956445;
  }

  if (a2 == 1)
  {
    if (a3 - 1 < 2)
    {
      v3 = 80;
LABEL_7:
      ausdk::AUScope::SetNumberOfElements((this + v3), a3);
      return 0;
    }

    return 4294956445;
  }

  return 4294956430;
}

uint64_t AUSpeakerProtectionV3::Render(AUSpeakerProtectionV3 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_21;
  }

  v9 = Element;
  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v12 || !*(v12 + 172))
  {
    return 4294956420;
  }

  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v14)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144))
    {
      goto LABEL_24;
    }

    v15 = *(v9 + 152);
    v16 = ausdk::AUScope::GetElement((this + 80), 1u);
    if (!v16 || !*(v16 + 172))
    {
      v19 = 0;
      goto LABEL_19;
    }

    result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 1u);
    if (v17)
    {
      result = ausdk::AUInputElement::PullInput(result, a2, a3, 1, a4);
      if (!result)
      {
        goto LABEL_13;
      }
    }

    else if (!result)
    {
LABEL_13:
      v18 = ausdk::AUScope::GetElement((this + 80), 1u);
      if (v18)
      {
        if (!*(v18 + 144))
        {
          goto LABEL_24;
        }

        v19 = *(v18 + 152) + 48;
LABEL_19:
        if (*(v11 + 144))
        {
          v20 = *(v11 + 152) + 48;
          v22[0] = v15 + 48;
          v22[1] = v19;
          v21 = v20;
          return (*(*this + 184))(this, a2, a4, 2, v22, 1, &v21);
        }

LABEL_24:
        ausdk::Throw(0xFFFFFFFFLL);
      }

LABEL_21:
      ausdk::Throw(0xFFFFD583);
    }
  }

  return result;
}

uint64_t AUSpeakerProtectionV3::ProcessMultipleBufferLists(AUSpeakerProtectionV3 *this, unsigned int *a2, unsigned int a3, unsigned int a4, const AudioBufferList **a5, unsigned int a6, AudioBufferList **a7)
{
  v348 = *MEMORY[0x1E69E9840];
  shouldTraceRender();
  v12 = *(this + 137);
  if (v12)
  {
    v13 = ExtAudioFileWriteAsync(v12, a3, *a5);
    (*(*(this + 136) + 16))(this + 1088, v13, "ExtAudioFileWriteAsync");
  }

  if (a4 >= 2)
  {
    v14 = *(this + 139);
    if (v14)
    {
      v15 = a5[1];
      if (v15)
      {
        v16 = ExtAudioFileWriteAsync(v14, a3, v15);
        (*(*(this + 138) + 16))(this + 1104, v16, "ExtAudioFileWriteAsync");
      }
    }
  }

  v17 = SimpleMeters::ProcessInputBufferList((this + 1192), a3, *a5);
  if (v17)
  {
    v19 = v17;
    if (!*(this + 295))
    {
      v20 = 6;
      if (*(this + 17))
      {
        v20 = 2;
      }

      v21 = 9;
      if (*(this + 528))
      {
        v21 = 5;
      }

      v22 = v20 + v21;
      v23 = _os_log_pack_size() + 88;
      message = caulk::deferred_logger::create_message(*(this + 170), v22 + v23, 16);
      if (message)
      {
        v25 = message;
        v26 = (message + v23);
        v27 = _os_log_pack_fill();
        if (*(this + 528))
        {
          v28 = "was";
        }

        else
        {
          v28 = "was not";
        }

        v29 = stpcpy(v26, v28);
        v30 = v29 + 1;
        if (*(this + 17))
        {
          v31 = "is";
        }

        else
        {
          v31 = "is not";
        }

        stpcpy(v29 + 1, v31);
        *v27 = 136315394;
        *(v27 + 4) = v26;
        *(v27 + 12) = 2080;
        *(v27 + 14) = v30;
        caulk::concurrent::messenger::enqueue(*(*(this + 170) + 16), v25);
      }
    }

    AUSpeakerProtectionV3::AttenuateInputToOutput(this, a3, a5, a7, v18);
    return v19;
  }

  if ((*(*this + 576))(this))
  {
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (Element)
    {
      v34 = *a7;
      mNumberBuffers = (*a7)->mNumberBuffers;
      if (mNumberBuffers)
      {
        v36 = 0;
        v37 = *(Element + 104) * a3;
        v38 = 16;
        do
        {
          v39 = *(&(*a5)->mNumberBuffers + v38);
          v40 = *(&v34->mNumberBuffers + v38);
          if (v39 != v40)
          {
            memcpy(v40, v39, v37);
            v34 = *a7;
            mNumberBuffers = (*a7)->mNumberBuffers;
          }

          ++v36;
          v38 += 16;
        }

        while (v36 < mNumberBuffers);
      }

      *(this + 531) = 1;
      if (shouldTraceRender())
      {
        v41 = spp3SubsystemAsync();
        if (v41)
        {
          if (*(v41 + 8))
          {
            v42 = *v41;
            if (*v41)
            {
              if (os_log_type_enabled(*v41, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "AUSpeakerProtectionV3.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4277;
                _os_log_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d AUSpeakerProtectionV3 bypassed!", buf, 0x12u);
              }
            }
          }
        }
      }

      goto LABEL_271;
    }

LABEL_297:
    ausdk::Throw(0xFFFFD583);
  }

  if (*(this + 531) == 1)
  {
    (*(*this + 72))(this, 0, 0);
    *(this + 531) = 0;
  }

  if ((*(this + 528) & 1) == 0)
  {
    if (*(this + 1184) == 1)
    {
      if (*(this + 17))
      {
        v61 = 3;
      }

      else
      {
        v61 = 7;
      }

      v62 = _os_log_pack_size() + 88;
      v63 = caulk::deferred_logger::create_message(*(this + 170), v62 + v61, 16);
      if (v63)
      {
        v64 = v63;
        v65 = (v63 + v62);
        v66 = _os_log_pack_fill();
        if (*(this + 17))
        {
          v67 = "is";
        }

        else
        {
          v67 = "is not";
        }

        stpcpy(v65, v67);
        *v66 = 136315138;
        *(v66 + 4) = v65;
        caulk::concurrent::messenger::enqueue(*(*(this + 170) + 16), v64);
      }

      *(this + 1184) = 0;
    }

    goto LABEL_68;
  }

  v43 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v43)
  {
    goto LABEL_297;
  }

  v44 = *(v43 + 108);
  if (v44 != (*(this + 106) - *(this + 105)) >> 4 || v44 != *(this + 158))
  {
    if (!*(this + 295))
    {
      v68 = _os_log_pack_size();
      v69 = caulk::deferred_logger::create_message(*(this + 170), v68 + 88, 16);
      if (v69)
      {
        v70 = v69;
        v71 = _os_log_pack_fill();
        v72 = (*(this + 106) - *(this + 105)) >> 4;
        v73 = *(this + 158);
        *v71 = 134218496;
        *(v71 + 4) = v72;
        *(v71 + 12) = 1024;
        *(v71 + 14) = v73;
        *(v71 + 18) = 1024;
        *(v71 + 20) = v44;
        caulk::concurrent::messenger::enqueue(*(*(this + 170) + 16), v70);
      }
    }

LABEL_68:
    AUSpeakerProtectionV3::AttenuateInputToOutput(this, a3, a5, a7, v32);
    SimpleMeters::ProcessOutputBufferList((this + 1192), a3, *a7);
    return 0;
  }

  v45 = (this + 840);
  AUSpeakerProtectionV3::ApplyParameters(this);
  if (*(this + 533) != 1 || *(this + 529) != 1 || !AUSpeakerProtectionV3::ClosedLoopInputsOK(this, a3, a4, a5))
  {
    v74 = *(this + 106);
    v75 = *(this + 105);
    if (v74 != v75)
    {
      v76 = 0;
      v77 = 0;
      while (2)
      {
        v78 = (v74 - v75) >> 4;
        while (v77)
        {
          ++v76;
          v77 = 1;
          if (v78 <= v76)
          {
            goto LABEL_77;
          }
        }

        v79 = ausdk::AUScope::GetElement((this + 792), v76);
        Parameter = ausdk::AUElement::GetParameter(v79, 0x16u);
        v77 = Parameter != 0.0;
        v74 = *(this + 106);
        v75 = *(this + 105);
        if (++v76 < (v74 - v75) >> 4)
        {
          continue;
        }

        break;
      }

      if (Parameter != 0.0)
      {
LABEL_77:
        if (!*(this + 295))
        {
          v81 = _os_log_pack_size();
          v82 = caulk::deferred_logger::create_message(*(this + 170), v81 + 88, 16);
          if (v82)
          {
            v83 = v82;
            *_os_log_pack_fill() = 0;
            caulk::concurrent::messenger::enqueue(*(*(this + 170) + 16), v83);
          }
        }

        v74 = *(this + 106);
        v75 = *(this + 105);
        if (v74 != v75)
        {
          v84 = 0;
          v85 = 0;
          do
          {
            v86 = ausdk::AUScope::GetElement((this + 792), v85);
            ausdk::AUElement::SetParameter(v86, 0x16u, 0.0);
            v87 = ausdk::AUScope::GetElement((this + 792), v85);
            ausdk::AUElement::SetParameter(v87, 0x15u, 0.0);
            v75 = *(this + 105);
            v88 = *(v75 + v84);
            *(v88 + 992) = 257;
            *(v88 + 994) = 1;
            ++v85;
            v74 = *(this + 106);
            v84 += 16;
          }

          while (v85 < (v74 - v75) >> 4);
        }

        goto LABEL_150;
      }
    }

    goto LABEL_150;
  }

  v46 = ausdk::AUBase::Input(this, 1u);
  v47 = *(v46 + 96);
  *buf = *(v46 + 80);
  *&buf[16] = v47;
  *&buf[32] = *(v46 + 112);
  v334 = 0.0;
  if (CAStreamBasicDescription::IdentifyCommonPCMFormat(buf, &v334, 0) && LODWORD(v334) == 2)
  {
    v48 = *(this + 105);
    if (*(this + 106) != v48)
    {
      v49 = 0;
      v50 = 0;
      __IA = (2 * v44);
      v51 = 2;
      do
      {
        v52 = *(this + 84);
        if (v50 >= (*(this + 85) - v52) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v53 = *(v52 + 8 * v50);
        v54 = *v53 * 0.000030518;
        v333 = v53[1] * 0.000030518;
        v334 = v54;
        v55 = (a5[1]->mBuffers[0].mData + v51);
        vDSP_vflt16(v55 - 1, __IA, *(*(v48 + v49) + 848), 1, a3);
        vDSP_vflt16(v55, __IA, *(*(*(this + 105) + v49) + 872), 1, a3);
        v56 = *(*(*(this + 105) + v49) + 848);
        MEMORY[0x1E12BE940](v56, 1, &v334, v56, 1, a3);
        v57 = *(*(*(this + 105) + v49) + 872);
        MEMORY[0x1E12BE940](v57, 1, &v333, v57, 1, a3);
        v58 = *(*(this + 142) + v49);
        v59 = *(v58 + 112);
        if (v59)
        {
          clsp::CLSP_Log::LogCLSPData(v59, *(*(*(this + 105) + v49) + 872), a3);
          v58 = *(*(this + 142) + v49);
        }

        v60 = *(v58 + 128);
        if (v60)
        {
          clsp::CLSP_Log::LogCLSPData(v60, *(*(*v45 + v49) + 848), a3);
        }

        ++v50;
        v48 = *(this + 105);
        v51 += 4;
        v49 += 16;
      }

      while (v50 < (*(this + 106) - v48) >> 4);
    }

LABEL_101:
    v100 = a3;
    v101 = *(this + 106);
    v102 = *(this + 105);
    if (a3 / *(this + 78) <= 0.093)
    {
      if (v101 != v102)
      {
        v106 = 0;
        do
        {
          v107 = ausdk::AUScope::GetElement((this + 792), v106);
          ausdk::AUElement::SetParameter(v107, 0x16u, 1.0);
          v108 = ausdk::AUScope::GetElement((this + 792), v106);
          ausdk::AUElement::SetParameter(v108, 0x15u, 1.0);
          ++v106;
          v101 = *(this + 106);
          v102 = *(this + 105);
        }

        while (v106 < (v101 - v102) >> 4);
      }
    }

    else if (v101 != v102)
    {
      v103 = 0;
      do
      {
        v104 = ausdk::AUScope::GetElement((this + 792), v103);
        ausdk::AUElement::SetParameter(v104, 0x16u, 0.0);
        v105 = ausdk::AUScope::GetElement((this + 792), v103);
        ausdk::AUElement::SetParameter(v105, 0x15u, 0.0);
        ++v103;
        v101 = *(this + 106);
        v102 = *(this + 105);
      }

      while (v103 < (v101 - v102) >> 4);
    }

    v109 = *(this + 78);
    if (v100 / v109 < 0.005 || v100 / v109 > 0.093)
    {
      v110 = v109 == 16000.0 && a3 == 192;
      if (!v110 && v101 != v102)
      {
        v112 = (v101 - v102) >> 4;
        if (v112 <= 1)
        {
          v112 = 1;
        }

        v113 = v102;
        do
        {
          v114 = *v113;
          v113 += 16;
          *(v114 + 992) = 257;
          *(v114 + 994) = 1;
          --v112;
        }

        while (v112);
      }
    }

    if (*(this + 162) == a3)
    {
      v115 = *(this + 161) > 0;
    }

    else
    {
      *(this + 161) = 2;
      v115 = 1;
    }

    if (v101 != v102)
    {
      v116 = 0;
      v117 = 0;
      do
      {
        (*(**(*&v102[v116] + 424) + 208))(*(*&v102[v116] + 424), v115);
        ++v117;
        v101 = *(this + 106);
        v102 = *(this + 105);
        v116 += 16;
      }

      while (v117 < (v101 - v102) >> 4);
    }

    *(this + 162) = a3;
    if (v115)
    {
      --*(this + 161);
    }

    if (v101 != v102)
    {
      v118 = 0;
      v119 = 0;
      do
      {
        if ((*(*(this + 67) + ((v119 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v119))
        {
          v120 = ausdk::AUScope::GetElement((this + 792), v119);
          ausdk::AUElement::SetParameter(v120, 0x16u, 0.0);
          v121 = *(*v45 + v118);
          *(v121 + 992) = 257;
          *(v121 + 994) = 1;
          v122 = *(v121 + 424);
          if (v122)
          {
            v123 = *(v122 + 8);
            if (v123 == 1)
            {
              *(v122 + 416) = 0;
              *(v122 + 424) = 0;
              *(v122 + 456) = 1065353216;
              *(v122 + 736) = 1065353216;
              v124 = *(v122 + 396);
              v125 = fabsf(*(v122 + 380));
              v126 = fabsf(*(v122 + 384));
              if (v126 < v125)
              {
                v125 = v126;
              }

              v127 = v124 * v125;
              *(v122 + 76) = v127;
              *(v122 + 80) = 1.0 / v127;
              *(v122 + 412) = v127;
              *(v122 + 776) = v127;
              *(v122 + 408) = v124;
              v122 = *(v121 + 424);
              if (!v122)
              {
                goto LABEL_144;
              }

              v123 = *(v122 + 8);
            }

            if (v123 == 4)
            {
              *(v122 + 440) = 0;
              *(v122 + 448) = 0;
              *(v122 + 480) = 1065353216;
              *(v122 + 824) = 1065353216;
              v128 = *(v122 + 420);
              v129 = fabsf(*(v122 + 376));
              v130 = fabsf(*(v122 + 380));
              if (v130 < v129)
              {
                v129 = v130;
              }

              v131 = v128 * v129;
              *(v122 + 96) = v131;
              *(v122 + 100) = 1.0 / v131;
              *(v122 + 436) = v131;
              *(v122 + 864) = v131;
              *(v122 + 432) = v128;
              *(v122 + 748) = *(v122 + 744);
              *(v122 + 788) = *(v122 + 784);
            }
          }
        }

        else
        {
          clsp::ClosedLoopThermalModule::pilotTempSense((*&v102[v118] + 152), *(*&v102[v118] + 848), *(*&v102[v118] + 872), a3);
          clsp::CLSPKernel_v5::ProcessConvoyTelemetry(*(*v45 + v118), a3);
          clsp::SpeakerPowerMeasurement::accumulateAvgSpkPwr(*(*(*v45 + v118) + 792), *(*(*v45 + v118) + 848), *(*(*v45 + v118) + 872), a3);
        }

LABEL_144:
        ++v119;
        v101 = *(this + 106);
        v102 = *(this + 105);
        v118 += 16;
      }

      while (v119 < (v101 - v102) >> 4);
    }

    v132 = 0.0;
    while (v102 != v101)
    {
      v133 = *v102;
      v102 += 16;
      v132 = v132 + *(*(v133 + 792) + 12);
    }

    v134 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v135 & 1) == 0)
    {
      goto LABEL_296;
    }

    ausdk::AUElement::SetParameter(v134, 0x10u, v132);
    v74 = *(this + 106);
    v75 = *(this + 105);
LABEL_150:
    if (v74 != v75)
    {
      v136 = 0;
      v137 = 0;
      do
      {
        v138 = *(v75 + v136);
        v139 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v140 & 1) == 0)
        {
          goto LABEL_296;
        }

        *(v138 + 744) = ausdk::AUElement::GetParameter(v139, 0) != 0.0;
        v141 = *(*v45 + v136);
        v142 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v143 & 1) == 0)
        {
          goto LABEL_296;
        }

        *(v141 + 745) = ausdk::AUElement::GetParameter(v142, 0x13u) != 0.0;
        v144 = *(*v45 + v136);
        v145 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v146 & 1) == 0)
        {
          goto LABEL_296;
        }

        v147 = ausdk::AUElement::GetParameter(v145, 1u) != 0.0;
        (*(**(v144 + 424) + 136))(*(v144 + 424), v147);
        v148 = *(*(this + 105) + v136);
        v149 = ausdk::AUScope::GetElement((this + 792), v137);
        *(v148 + 264) = ausdk::AUElement::GetParameter(v149, 0x15u) != 0.0;
        v150 = *(*(this + 105) + v136);
        v151 = ausdk::AUScope::GetElement((this + 792), v137);
        *(v150 + 265) = ausdk::AUElement::GetParameter(v151, 0x16u) != 0.0;
        ++v137;
        v75 = *(this + 105);
        v136 += 16;
      }

      while (v137 < (*(this + 106) - v75) >> 4);
    }

    v152 = *(this + 111);
    if (v152)
    {
      v153 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v154 & 1) == 0)
      {
        goto LABEL_296;
      }

      *(v152 + 8) = ausdk::AUElement::GetParameter(v153, 0x12u) != 0.0;
    }

    v155 = *(this + 34);
    v156 = *(this + 35);
    if (*(this + 1329) == 1)
    {
      clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance();
      v157 = &clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst;
    }

    else
    {
      clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance();
      v157 = &clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst;
    }

    v158 = v156 * 0.0000000416666667;
    v159 = v158 - *(v157 + 4);
    if (shouldTraceRender())
    {
      v160 = spp3SubsystemAsync();
      if (v160)
      {
        if (*(v160 + 8))
        {
          v161 = *v160;
          if (*v160)
          {
            if (os_log_type_enabled(*v160, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136316162;
              *&buf[4] = "AUSpeakerProtectionV3.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4578;
              *&buf[18] = 1024;
              *&buf[20] = v155;
              *&buf[24] = 2048;
              *&buf[26] = v159;
              *&buf[34] = 2048;
              *&buf[36] = v158;
              _os_log_impl(&dword_1DDB85000, v161, OS_LOG_TYPE_DEBUG, "%25s:%-5d RenderTime %d, RenderTimeDelta %f, HostTime %f", buf, 0x2Cu);
            }
          }
        }
      }
    }

    v162 = *(this + 78);
    if (*(this + 1329) == 1)
    {
      clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance();
      v163 = &clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst;
    }

    else
    {
      clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance();
      v163 = &clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst;
    }

    *(v163 + 4) = v158 + a3 / v162;
    if (*(this + 1329) == 1)
    {
      if (*(this + 532) && (v164 = *(this + 106), v165 = *(this + 105), clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(), (v164 - v165) >> 4 != 0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B68 - clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst) >> 3)))
      {
        clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance();
        v182 = clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst;
        clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance();
        if (v182 != qword_1ECDA9B68)
        {
          for (i = v182 + 24; i != qword_1ECDA9B68; i += 24)
          {
            if ((*(v182 + 12) + *(v182 + 8)) < (*(i + 12) + *(i + 8)))
            {
              v182 = i;
            }
          }
        }

        v186 = *(this + 105);
        v187 = *(this + 106);
        if (v186 != v187)
        {
          v188 = v159;
          do
          {
            clsp::ThermalController::restoreThermalState(*v186 + 432, v182);
            v189 = *v186;
            shouldTraceRender();
            clsp::ThermalController::updateThermalState((v189 + 432), v188);
            v186 += 2;
          }

          while (v186 != v187);
        }
      }

      else
      {
        v166 = *(this + 105);
        if (*(this + 106) != v166)
        {
          v167 = 0;
          v168 = 0;
          v169 = v159;
          do
          {
            v170 = *(v166 + v167);
            v171 = clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalState(v168);
            clsp::ThermalController::restoreThermalState(v170 + 432, v171);
            v172 = *(*(this + 105) + v167);
            shouldTraceRender();
            clsp::ThermalController::updateThermalState((v172 + 432), v169);
            ++v168;
            v166 = *(this + 105);
            v167 += 16;
          }

          while (v168 < (*(this + 106) - v166) >> 4);
        }
      }
    }

    else if (*(this + 532) && (v173 = *(this + 106), v174 = *(this + 105), clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(), (v173 - v174) >> 4 != 0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B98 - clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst) >> 3)))
    {
      clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance();
      v184 = clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst;
      clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance();
      if (v184 != qword_1ECDA9B98)
      {
        for (j = v184 + 24; j != qword_1ECDA9B98; j += 24)
        {
          if ((*(v184 + 12) + *(v184 + 8)) < (*(j + 12) + *(j + 8)))
          {
            v184 = j;
          }
        }
      }

      v190 = *(this + 105);
      v191 = *(this + 106);
      if (v190 != v191)
      {
        v192 = v159;
        do
        {
          clsp::ThermalController::restoreThermalState(*v190 + 432, v184);
          v193 = *v190;
          shouldTraceRender();
          clsp::ThermalController::updateThermalState((v193 + 432), v192);
          v190 += 2;
        }

        while (v190 != v191);
      }
    }

    else
    {
      v175 = *(this + 105);
      if (*(this + 106) != v175)
      {
        v176 = 0;
        v177 = 0;
        v178 = v159;
        do
        {
          v179 = *(v175 + v176);
          v180 = clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalState(v177);
          clsp::ThermalController::restoreThermalState(v179 + 432, v180);
          v181 = *(*(this + 105) + v176);
          shouldTraceRender();
          clsp::ThermalController::updateThermalState((v181 + 432), v178);
          ++v177;
          v175 = *(this + 105);
          v176 += 16;
        }

        while (v177 < (*(this + 106) - v175) >> 4);
      }
    }

    clsp::CLSPKernel_v5::ProcessByThermalBlock(this + 105, this + 108, this + 111, a5, a7, *(this + 532), a3);
    if (*(this + 1329) == 1)
    {
      if (*(this + 532) && (v194 = *(this + 106), v195 = *(this + 105), clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(), (v194 - v195) >> 4 != 0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B68 - clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst) >> 3)))
      {
        v304 = *(this + 105);
        v305 = *(this + 106);
        if (v304 != v305)
        {
          v306 = v304 + 2;
          if (v304 + 2 != v305)
          {
            v307 = *v304;
            v308 = v304 + 2;
            do
            {
              v310 = *v308;
              v308 += 2;
              v309 = v310;
              if ((v307[110] + (v307[146] + v307[151])) < (v310[110] + (v310[146] + v310[151])))
              {
                v307 = v309;
                v304 = v306;
              }

              v306 = v308;
            }

            while (v308 != v305);
          }
        }

        for (k = 0; ; ++k)
        {
          clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance();
          if (k >= 0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B68 - clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst) >> 3))
          {
            break;
          }

          v312 = *v304;
          v313 = clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalState(k);
          shouldTraceRender();
          v314 = *(v312 + 146);
          v315 = *(v312 + 151);
          v316 = *(v312 + 166);
          v317 = *(v312 + 139);
          *(v313 + 1) = v312[156];
          *(v313 + 2) = v314;
          *(v313 + 3) = v315;
          *(v313 + 4) = v316;
          *(v313 + 5) = v317;
          *v313 = 1;
        }
      }

      else
      {
        v196 = *(this + 105);
        if (*(this + 106) != v196)
        {
          v197 = 0;
          v198 = 0;
          do
          {
            v199 = *(v196 + v197);
            v200 = clsp::ThermalStateVector_v3_separate<clsp::CL>::ThermalState(v198);
            shouldTraceRender();
            v201 = v199[146];
            v202 = v199[151];
            v203 = v199[166];
            v204 = v199[139];
            *(v200 + 1) = v199[156];
            *(v200 + 2) = v201;
            *(v200 + 3) = v202;
            *(v200 + 4) = v203;
            *(v200 + 5) = v204;
            *v200 = 1;
            ++v198;
            v196 = *(this + 105);
            v197 += 16;
          }

          while (v198 < (*(this + 106) - v196) >> 4);
        }
      }
    }

    else if (*(this + 532) && (v205 = *(this + 106), v206 = *(this + 105), clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(), (v205 - v206) >> 4 != 0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B98 - clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst) >> 3)))
    {
      v318 = *(this + 105);
      v319 = *(this + 106);
      if (v318 != v319)
      {
        v320 = v318 + 2;
        if (v318 + 2 != v319)
        {
          v321 = *v318;
          v322 = v318 + 2;
          do
          {
            v324 = *v322;
            v322 += 2;
            v323 = v324;
            if ((v321[110] + (v321[146] + v321[151])) < (v324[110] + (v324[146] + v324[151])))
            {
              v321 = v323;
              v318 = v320;
            }

            v320 = v322;
          }

          while (v322 != v319);
        }
      }

      for (m = 0; ; ++m)
      {
        clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance();
        if (m >= 0xAAAAAAAAAAAAAAABLL * ((qword_1ECDA9B98 - clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst) >> 3))
        {
          break;
        }

        v326 = *v318;
        v327 = clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalState(m);
        shouldTraceRender();
        v328 = *(v326 + 146);
        v329 = *(v326 + 151);
        v330 = *(v326 + 166);
        v331 = *(v326 + 139);
        *(v327 + 1) = v326[156];
        *(v327 + 2) = v328;
        *(v327 + 3) = v329;
        *(v327 + 4) = v330;
        *(v327 + 5) = v331;
        *v327 = 1;
      }
    }

    else
    {
      v207 = *(this + 105);
      if (*(this + 106) != v207)
      {
        v208 = 0;
        v209 = 0;
        do
        {
          v210 = *(v207 + v208);
          v211 = clsp::ThermalStateVector_v3_separate<clsp::OL>::ThermalState(v209);
          shouldTraceRender();
          v212 = v210[146];
          v213 = v210[151];
          v214 = v210[166];
          v215 = v210[139];
          *(v211 + 1) = v210[156];
          *(v211 + 2) = v212;
          *(v211 + 3) = v213;
          *(v211 + 4) = v214;
          *(v211 + 5) = v215;
          *v211 = 1;
          ++v209;
          v207 = *(this + 105);
          v208 += 16;
        }

        while (v209 < (*(this + 106) - v207) >> 4);
      }
    }

    if (*(this + 106) != *(this + 105))
    {
      v216 = 0;
      v217 = 0;
      v218 = 0.0;
      v219 = 1.3333;
      v220 = 0.0;
      while (1)
      {
        if (!shouldTraceRender())
        {
          goto LABEL_224;
        }

        v221 = spp3SubsystemAsync();
        if (v221)
        {
          v222 = *v221;
          if (!*v221)
          {
            goto LABEL_224;
          }
        }

        else
        {
          v222 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v222, OS_LOG_TYPE_DEBUG))
        {
          Temperature = clsp::ClosedLoopThermalModule::getTemperature((*(*v45 + v216) + 152));
          v224 = *(*v45 + v216);
          v225 = *(v224 + 584);
          v226 = *(v224 + 604);
          v227 = *(v224 + 440);
          v228 = *(v224 + 292);
          DisplacementFilterGain = clsp::CLSPKernel_v5::GetDisplacementFilterGain(*(v224 + 424));
          v230 = *(*v45 + v216);
          v231 = v230[177];
          v232 = v230[166];
          v233 = v230[140];
          v234 = v230[89];
          *buf = 136317698;
          *&buf[4] = "AUSpeakerProtectionV3.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4461;
          *&buf[18] = 1024;
          *&buf[20] = v217;
          *&buf[24] = 2048;
          *&buf[26] = Temperature;
          *&buf[34] = 2048;
          *&buf[36] = (v227 + (v225 + v226));
          v336 = 2048;
          v337 = v228;
          v338 = 2048;
          v339 = DisplacementFilterGain;
          v340 = 2048;
          v341 = v231;
          v342 = 2048;
          v343 = v232;
          v344 = 2048;
          v345 = v233;
          v346 = 2048;
          v347 = v234;
          _os_log_impl(&dword_1DDB85000, v222, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ch %d; T_CL=%6.2f; T_OL=%6.2f; TlimAdj=%6.2f; DGain=%5.2f; TGain=%6.4f; tgtgain=%4.2f, hlimgain=%f, sReb=%f", buf, 0x68u);
        }

LABEL_224:
        v235 = ausdk::AUScope::GetElement((this + 792), v217);
        v236 = clsp::ClosedLoopThermalModule::getTemperature((*(*v45 + v216) + 152));
        ausdk::AUElement::SetParameter(v235, 7u, v236);
        v237 = ausdk::AUScope::GetElement((this + 792), v217);
        ausdk::AUElement::SetParameter(v237, 8u, *(*(*v45 + v216) + 440) + (*(*(*v45 + v216) + 584) + *(*(*v45 + v216) + 604)));
        v238 = ausdk::AUScope::GetElement((this + 792), v217);
        v239 = *(*(*v45 + v216) + 256);
        if (v239)
        {
          (*(*v239 + 72))(v239);
        }

        else
        {
          v240 = 0.0;
        }

        ausdk::AUElement::SetParameter(v238, 0x24u, v240);
        v241 = ausdk::AUScope::GetElement((this + 792), v217);
        ausdk::AUElement::SetParameter(v241, 0x28u, *(*(*v45 + v216) + 1028));
        v242 = ausdk::AUScope::GetElement((this + 792), v217);
        ausdk::AUElement::SetParameter(v242, 0x29u, *(*(*v45 + v216) + 1032));
        v243 = ausdk::AUScope::GetElement((this + 792), v217);
        v244 = *(*(*v45 + v216) + 424);
        v245 = -1.0;
        if (v244)
        {
          v246 = *(v244 + 8);
          if (v246 == 1)
          {
            v247 = 504;
          }

          else
          {
            if (v246 != 4)
            {
              goto LABEL_233;
            }

            v247 = 552;
          }

          v245 = *(v244 + v247);
        }

LABEL_233:
        ausdk::AUElement::SetParameter(v243, 0x2Bu, v245);
        v248 = ausdk::AUScope::GetElement((this + 792), v217);
        v249 = *(*(*v45 + v216) + 424);
        v250 = -1.0;
        if (v249)
        {
          v251 = *(v249 + 2);
          if (v251 == 4)
          {
            v250 = v249[128];
          }

          else if (v251 == 1)
          {
            v250 = v249[119];
          }
        }

        ausdk::AUElement::SetParameter(v248, 0x2Cu, v250);
        v252 = ausdk::AUScope::GetElement((this + 792), v217);
        v253 = *(*(*v45 + v216) + 424);
        v254 = -1.0;
        if (v253)
        {
          v255 = *(v253 + 8);
          if (v255 == 1)
          {
            v256 = 412;
            v257 = 384;
            v258 = 380;
          }

          else
          {
            if (v255 != 4)
            {
              goto LABEL_246;
            }

            v256 = 436;
            v257 = 380;
            v258 = 376;
          }

          v259 = -*(v253 + v258);
          if (*(v253 + v257) <= v259)
          {
            v259 = *(v253 + v257);
          }

          v254 = (*(v253 + v256) / v259) * 100.0;
        }

LABEL_246:
        ausdk::AUElement::SetParameter(v252, 0x2Du, v254);
        v260 = ausdk::AUScope::GetElement((this + 792), v217);
        v261 = *(*(*v45 + v216) + 424);
        v262 = -1.0;
        if (v261)
        {
          v263 = *(v261 + 8);
          if (v263 == 1)
          {
            v264 = 736;
            goto LABEL_251;
          }

          if (v263 == 4)
          {
            v264 = 824;
LABEL_251:
            v262 = *(v261 + v264);
          }
        }

        ausdk::AUElement::SetParameter(v260, 0x2Eu, v262);
        v265 = ausdk::AUScope::GetElement((this + 792), v217);
        v266 = log10f(*(*(*(this + 105) + v216) + 708));
        ausdk::AUElement::SetParameter(v265, 0x40u, v266 * 20.0);
        v267 = ausdk::AUScope::GetElement((this + 792), v217);
        v268 = log10f(*(*(*(this + 105) + v216) + 740));
        ausdk::AUElement::SetParameter(v267, 0x42u, v268 * 20.0);
        v269 = ausdk::AUScope::GetElement((this + 792), v217);
        v270 = clsp::CLSPKernel_v5::GetDisplacementFilterGain(*(*(*(this + 105) + v216) + 424));
        ausdk::AUElement::SetParameter(v269, 0x41u, v270);
        v271 = *(*(this + 105) + v216);
        v272 = *(*(v271 + 784) + 16);
        v273 = *(*(*(this + 142) + v216) + 96);
        if (v273)
        {
          *buf = a3;
          clsp::CLSP_Log::LogCLSPData(v273, buf, 1);
          v274 = *(*(*(this + 142) + v216) + 96);
          if (*(this + 1329) == 1)
          {
            clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance();
            v275 = &clsp::ThermalStateVector_v3_separate<clsp::CL>::TheInstance(void)::inst;
          }

          else
          {
            clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance();
            v275 = &clsp::ThermalStateVector_v3_separate<clsp::OL>::TheInstance(void)::inst;
          }

          v276 = *(v275 + 4);
          *buf = v276;
          clsp::CLSP_Log::LogCLSPData(v274, buf, 1);
          v277 = *(*(*(this + 142) + v216) + 96);
          *buf = *(*(*(this + 105) + v216) + 440) + (*(*(*(this + 105) + v216) + 584) + *(*(*(this + 105) + v216) + 604));
          clsp::CLSP_Log::LogCLSPData(v277, buf, 1);
          v278 = *(*(*(this + 142) + v216) + 96);
          *buf = *(*(*(this + 105) + v216) + 96);
          clsp::CLSP_Log::LogCLSPData(v278, buf, 1);
          v279 = *(*(*(this + 142) + v216) + 96);
          *buf = log10f(*(*(*(this + 105) + v216) + 708)) * 20.0;
          clsp::CLSP_Log::LogCLSPData(v279, buf, 1);
          v280 = *(*(*(this + 142) + v216) + 96);
          *buf = clsp::ClosedLoopThermalModule::getTemperature((*(*(this + 105) + v216) + 152));
          clsp::CLSP_Log::LogCLSPData(v280, buf, 1);
          v281 = *(*(*(this + 142) + v216) + 96);
          *buf = *(*(*(this + 105) + v216) + 232);
          clsp::CLSP_Log::LogCLSPData(v281, buf, 1);
          v282 = *(*(*(this + 142) + v216) + 96);
          *buf = *(*(*(this + 105) + v216) + 356);
          clsp::CLSP_Log::LogCLSPData(v282, buf, 1);
          v283 = *(*(*(this + 142) + v216) + 96);
          *buf = *(*(*(this + 105) + v216) + 292);
          clsp::CLSP_Log::LogCLSPData(v283, buf, 1);
          v284 = *(*(*(this + 142) + v216) + 96);
          v285 = *(*(this + 105) + v216);
          v286 = *(v285 + 708);
          if (*(v285 + 740) < v286)
          {
            v286 = *(v285 + 740);
          }

          *buf = log10f(v286) * 20.0;
          clsp::CLSP_Log::LogCLSPData(v284, buf, 1);
          v271 = *(*(this + 105) + v216);
        }

        if (*(v271 + 708) < v219)
        {
          v219 = *(v271 + 708);
        }

        v287 = *(v271 + 740);
        v288 = clsp::CLSPKernel_v5::GetDisplacementFilterGain(*(v271 + 424));
        v218 = v218 + v272;
        if (v288 < v220)
        {
          v220 = v288;
        }

        ++v217;
        v216 += 16;
        if (v217 >= (*(this + 106) - *(this + 105)) >> 4)
        {
          goto LABEL_266;
        }
      }
    }

    v287 = 1.0;
    v220 = 0.0;
    v219 = 1.3333;
    v218 = 0.0;
LABEL_266:
    v289 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if (v290)
    {
      ausdk::AUElement::SetParameter(v289, 0xFu, v218);
      v291 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v292)
      {
        v293 = v291;
        v294 = log10f(v219);
        ausdk::AUElement::SetParameter(v293, 0xCu, v294 * 20.0);
        v295 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v296)
        {
          v297 = v295;
          v298 = log10f(v287);
          ausdk::AUElement::SetParameter(v297, 0x11u, v298 * 20.0);
          v299 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if (v300)
          {
            ausdk::AUElement::SetParameter(v299, 0xDu, v220);
LABEL_271:
            v301 = *(this + 141);
            if (v301)
            {
              v302 = ExtAudioFileWrite(v301, a3, *a7);
              if ((v302 + 66560) >= 2)
              {
                if (v302)
                {
                  (*(*(this + 140) + 16))();
                }
              }
            }

            v19 = SimpleMeters::ProcessOutputBufferList((this + 1192), a3, *a7);
            if (!v19)
            {
              *(this + 295) = (*(this + 295) + 1);
            }

            return v19;
          }
        }
      }
    }

LABEL_296:
    abort();
  }

  v334 = 0.0;
  if (CAStreamBasicDescription::IdentifyCommonPCMFormat(buf, &v334, 0) && LODWORD(v334) == 1 && (buf[12] & 0x20) == 0)
  {
    v89 = *(this + 92);
    v90 = *(this + 91);
    if (v89 != v90)
    {
      v91 = 0;
      v92 = 0;
      do
      {
        AUSpeakerProtectionV3::ParseSpeakerTelemetryBuffer(this, *(v90 + v91), *(v90 + v91 + 4), v92++, ((v89 - v90) >> 3), a5[1]->mBuffers[0].mData, a3);
        v89 = *(this + 92);
        v90 = *(this + 91);
        v91 += 8;
      }

      while (v92 < (v89 - v90) >> 3);
    }

    goto LABEL_101;
  }

  v334 = 0.0;
  if (CAStreamBasicDescription::IdentifyCommonPCMFormat(buf, &v334, 0) && LODWORD(v334) == 1 && (buf[12] & 0x20) != 0)
  {
    v96 = *(this + 91);
    if (*(this + 92) != v96)
    {
      v97 = 0;
      v98 = 0;
      v99 = 16;
      do
      {
        AUSpeakerProtectionV3::ParseSpeakerTelemetryBuffer(this, *(v96 + v97), *(v96 + v97 + 4), 0, 1, *(&a5[1]->mNumberBuffers + v99), a3);
        ++v98;
        v96 = *(this + 91);
        v97 += 8;
        v99 += 16;
      }

      while (v98 < (*(this + 92) - v96) >> 3);
    }

    goto LABEL_101;
  }

  if (!*(this + 295))
  {
    v93 = _os_log_pack_size();
    v94 = caulk::deferred_logger::create_message(*(this + 170), v93 + 88, 16);
    if (v94)
    {
      v95 = v94;
      *_os_log_pack_fill() = 0;
      caulk::concurrent::messenger::enqueue(*(*(this + 170) + 16), v95);
    }
  }

  return 4294956428;
}