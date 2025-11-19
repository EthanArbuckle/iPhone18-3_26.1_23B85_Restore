float32_t sub_19B6D6034(float32x2_t *a1, float32x2_t *a2)
{
  if ((*(*a1 + 72))(a1))
  {
    v5 = (a1[13].f32[0] + 1.0) * a2[2].f32[0];
    a2[2].f32[0] = v5;
    result = v5 - a1[10].f32[0];
    __asm { FMOV            V2.2D, #1.0 }

    v11 = vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(a1[12]), _Q2), vcvtq_f64_f32(a2[1])));
    a2[1] = v11;
    a2[1] = vsub_f32(v11, a1[9]);
    a2[2].f32[0] = result;
  }

  return result;
}

float32_t sub_19B6D60E0(float32x2_t *a1, float *a2, float32x2_t *a3, double *a4)
{
  sub_19B6CD760(a1 + 42, a4);
  v7 = a1[48].f32[0];
  v8 = a1[47].f32[0];
  v9 = a1[47].f32[1];
  v10 = 16;
  if (a1[23].i8[0])
  {
    v10 = 26;
  }

  v11 = 15;
  if (a1[23].i8[0])
  {
    v11 = 25;
  }

  v12 = 31;
  if (a1[23].i8[0])
  {
    v12 = 51;
  }

  v13 = a1[v10].f32[0];
  v14 = a1[v11].f32[0];
  v15 = a1->f32[v12];
  v16 = ((v15 * a1[50].f32[1]) + (v14 * a1[50].f32[0])) + (v13 * a1[51].f32[0]);
  a2[2] = ((v15 * a1[44].f32[1]) + (v14 * a1[44].f32[0])) + (v13 * a1[45].f32[0]);
  a2[3] = ((v15 * v9) + (v14 * v8)) + (v13 * v7);
  a2[4] = v16;

  return sub_19B6D6034(a1, a3);
}

float32_t sub_19B6D61BC(float32x2_t *a1, float32x2_t *a2, double *a3)
{
  if (a1[23].i8[0] == 1)
  {
    sub_19B6CD760(a1 + 42, a3);
    v6 = a1[25].f32[1];
    v5 = a1[26].f32[0];
    v7 = a1[25].f32[0];
    v8 = ((v6 * a1[50].f32[1]) + (v7 * a1[50].f32[0])) + (v5 * a1[51].f32[0]);
    v9 = ((v6 * a1[47].f32[1]) + (v7 * a1[47].f32[0])) + (v5 * a1[48].f32[0]);
    result = ((v6 * a1[44].f32[1]) + (v7 * a1[44].f32[0])) + (v5 * a1[45].f32[0]);
    a2[1].f32[0] = result;
    a2[1].f32[1] = v9;
    a2[2].f32[0] = v8;
  }

  else
  {

    return sub_19B6D6034(a1, a2);
  }

  return result;
}

float sub_19B6D6274(uint64_t a1, double *a2)
{
  v2 = *a2;
  *(a1 + 8) = *a2;
  result = 1.0 / v2;
  *(a1 + 16) = result;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 23) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

float sub_19B6D62A4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a2 = *(a1 + 72);
  result = *(a1 + 80);
  *(a2 + 8) = result;
  *a3 = *(a1 + 20);
  return result;
}

uint64_t sub_19B6D6344()
{
  if (qword_1ED71D428 != -1)
  {
    dispatch_once(&qword_1ED71D428, &unk_1F0E29A80);
  }

  return qword_1ED71D420;
}

void sub_19B6D64A0(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 280);
    v4 = *(v1 + 96);
    if (v4 > 3)
    {
      v5 = @"?";
    }

    else
    {
      v5 = off_1E75345E8[v4];
    }

    *buf = 134349314;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to %{public}f. State=%{public}@", buf, 0x16u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v7 = *(v1 + 96);
    if (v7 <= 3)
    {
      v8 = off_1E75345E8[v7];
    }

    v12 = *(v1 + 280);
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::enable(const T *) [T = CLAccessoryDeviceMotion::ETempestMode]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = sub_19B420D84();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B6DC004;
  v14 = &unk_1E75327D8;
  v15 = v1;
  sub_19B420C9C(v10, buf);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6D6728(uint64_t a1)
{
  v1 = a1 - 80;
  if (!a1)
  {
    v1 = 0;
  }

  if (*(v1 + 320) == 1)
  {
    v2 = *(v1 + 308);
    v3 = v2 > 5;
    v4 = 0x34u >> v2;
    if (v3)
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

void sub_19B6D6764(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 280);
    v4 = *(v1 + 96);
    if (v4 > 3)
    {
      v5 = @"?";
    }

    else
    {
      v5 = off_1E75345E8[v4];
    }

    *buf = 134349314;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to %{public}f. State=%{public}@", buf, 0x16u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v7 = *(v1 + 96);
    if (v7 <= 3)
    {
      v8 = off_1E75345E8[v7];
    }

    v12 = *(v1 + 280);
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::enable(const T *) [T = CLAccessoryDeviceMotion::EMotionAPIMode]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = sub_19B420D84();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B6DC030;
  v14 = &unk_1E75327D8;
  v15 = v1;
  sub_19B420C9C(v10, buf);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6D69EC(uint64_t a1)
{
  v1 = a1 - 80;
  if (!a1)
  {
    v1 = 0;
  }

  if (*(v1 + 320) == 1)
  {
    v2 = *(v1 + 308);
    v3 = v2 > 5;
    v4 = 0xBu >> v2;
    if (v3)
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void sub_19B6D6A2C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 96);
    if (v3 > 3)
    {
      v4 = @"?";
    }

    else
    {
      v4 = off_1E75345E8[v3];
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to 0.0. State=%{public}@", &buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v6 = *(v1 + 96);
    if (v6 <= 3)
    {
      v7 = off_1E75345E8[v6];
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::disable(const T *) [T = CLAccessoryDeviceMotion::EDisable]", "CoreLocation: %s\n", v8);
    if (v8 != &buf)
    {
      free(v8);
    }
  }

  v9 = sub_19B420D84();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v12 = sub_19B6DC05C;
  v13 = &unk_1E75327D8;
  v14 = v1;
  sub_19B420C9C(v9, &buf);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B6D6C94(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 96);
    if (v3 > 3)
    {
      v4 = @"?";
    }

    else
    {
      v4 = off_1E75345E8[v3];
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to 0.0. State=%{public}@", &buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v6 = *(v1 + 96);
    if (v6 <= 3)
    {
      v7 = off_1E75345E8[v6];
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::disable(const T *) [T = CLAccessoryDeviceMotion::EMotionAPIMode]", "CoreLocation: %s\n", v8);
    if (v8 != &buf)
    {
      free(v8);
    }
  }

  v9 = sub_19B420D84();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v12 = sub_19B6DC074;
  v13 = &unk_1E75327D8;
  v14 = v1;
  sub_19B420C9C(v9, &buf);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B6D6EFC(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 280);
    v4 = *(v1 + 96);
    if (v4 > 3)
    {
      v5 = @"?";
    }

    else
    {
      v5 = off_1E75345E8[v4];
    }

    *buf = 134349314;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to %{public}f. State=%{public}@", buf, 0x16u);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v7 = *(v1 + 96);
    if (v7 <= 3)
    {
      v8 = off_1E75345E8[v7];
    }

    v12 = *(v1 + 280);
    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::enable(const T *) [T = CLAccessoryDeviceMotion::EInEar]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = sub_19B420D84();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = sub_19B6DC08C;
  v14 = &unk_1E75327D8;
  v15 = v1;
  sub_19B420C9C(v10, buf);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6D7184(uint64_t a1)
{
  v1 = a1 - 80;
  if (!a1)
  {
    v1 = 0;
  }

  if (*(v1 + 320) == 1)
  {
    v2 = *(v1 + 308);
    v3 = v2 > 5;
    v4 = 0xBu >> v2;
    if (v3)
    {
      LOBYTE(v4) = 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void sub_19B6D71C0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1 - 80;
  }

  else
  {
    v1 = 0;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v2 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 96);
    if (v3 > 3)
    {
      v4 = @"?";
    }

    else
    {
      v4 = off_1E75345E8[v3];
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Setting update interval to 0.0. State=%{public}@", &buf, 0xCu);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(&buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v6 = *(v1 + 96);
    if (v6 <= 3)
    {
      v7 = off_1E75345E8[v6];
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::disable(const T *) [T = CLAccessoryDeviceMotion::EOutOfEar]", "CoreLocation: %s\n", v8);
    if (v8 != &buf)
    {
      free(v8);
    }
  }

  v9 = sub_19B420D84();
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v12 = sub_19B6DC0B8;
  v13 = &unk_1E75327D8;
  v14 = v1;
  sub_19B420C9C(v9, &buf);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_19B6D742C(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6D7464(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  sub_19B750AC4(a1);
  *(a1 + 308) = sub_19B74FC3C();
  v3 = *(a1 + 296);
  if (v3 <= 0.00001)
  {
    v3 = *(a1 + 288);
    v4 = (a1 + 280);
    if (v3 <= 0.00001)
    {
      *v4 = 0.0;
      goto LABEL_10;
    }

    *v4 = v3;
  }

  else
  {
    *(a1 + 280) = v3;
  }

  v4 = (a1 + 280);
  if (v3 > 0.00001)
  {
    *(a1 + 29) = 0;
    *(a1 + 204) = 0;
    *(a1 + 160) = 0;
    *(a1 + 212) = 0;
    v5 = *(a1 + 32);
    if (*(a1 + 28) == 1)
    {
      (*(*v5 + 16))(*(a1 + 32), @"MaxFIFOEvents", &unk_1F0E6A660);
      v6 = *(a1 + 296);
      v7 = sub_19B7851B0();
      if (v6 > 0.00001)
      {
        sub_19B787D50(v7, a1, 1);
        v8 = 2;
        goto LABEL_23;
      }
    }

    else
    {
      v14 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v2, *(a1 + 316));
      (*(*v5 + 16))(v5, @"MaxFIFOEvents", v14);
      v7 = sub_19B7851B0();
    }

    sub_19B787D50(v7, a1, 0);
    v8 = 1;
LABEL_23:
    *(a1 + 272) = v8;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v15 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 28))
      {
        v16 = "YES";
      }

      else
      {
        v16 = "NO";
      }

      v17 = *(a1 + 272);
      *buf = 136446466;
      v45 = v16;
      v46 = 1026;
      v47 = v17;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Low latency mode: %{public}s. TimeSync type: %{public}d", buf, 0x12u);
    }

    v18 = sub_19B420058();
    if (*(v18 + 160) > 1 || *(v18 + 164) > 1 || *(v18 + 168) > 1 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      if (*(a1 + 28))
      {
        v19 = "YES";
      }

      else
      {
        v19 = "NO";
      }

      v20 = *(a1 + 272);
      v40 = 136446466;
      v41 = v19;
      v42 = 1026;
      v43 = v20;
LABEL_40:
      v21 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::updateReportInterval()", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }

      goto LABEL_42;
    }

    goto LABEL_42;
  }

LABEL_10:
  v9 = *(a1 + 32);
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v2, *(a1 + 316));
  (*(*v9 + 16))(v9, @"MaxFIFOEvents", v10);
  v11 = sub_19B7851B0();
  sub_19B787E50(v11, a1);
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v12 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Low latency mode and time sync reset", buf, 2u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    LOWORD(v40) = 0;
    goto LABEL_40;
  }

LABEL_42:
  if (*v4 >= 0.00001)
  {
    v25 = a1 + 80;
    if (*(a1 + 296) <= 0.00001)
    {
      sub_19B79A0E8(v25, 2, &v39);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v33 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
      {
        v34 = *v4;
        *buf = 134349056;
        v45 = *&v34;
        _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Entering Motion API mode with rate: %{public}f", buf, 0xCu);
      }

      v35 = sub_19B420058();
      if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
        }

        v36 = *v4;
        v40 = 134349056;
        v41 = *&v36;
        v37 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::updateReportInterval()", "CoreLocation: %s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      v29 = *(a1 + 280);
      v30 = *(a1 + 48);
      v31 = a1 + 328;
      v32 = 1;
    }

    else
    {
      sub_19B79A0E8(v25, 1, &v39);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v26 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Entering Tempest Mode", buf, 2u);
      }

      v27 = sub_19B420058();
      if (*(v27 + 160) > 1 || *(v27 + 164) > 1 || *(v27 + 168) > 1 || *(v27 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
        }

        LOWORD(v40) = 0;
        v28 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::updateReportInterval()", "CoreLocation: %s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      v29 = *(a1 + 280);
      v30 = *(a1 + 48);
      v31 = a1 + 328;
      v32 = 2;
    }

    sub_19B6D7E9C(v31, v30, v32, v29);
  }

  else
  {
    sub_19B79A0E8(a1 + 80, 3, &v39);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v22 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Disabling", buf, 2u);
    }

    v23 = sub_19B420058();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      LOWORD(v40) = 0;
      v24 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::updateReportInterval()", "CoreLocation: %s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }

    sub_19B6D7D4C(a1 + 328);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void sub_19B6D7D4C(uint64_t a1)
{
  sub_19B6DB848(a1);
  v2 = *(a1 + 192);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(a1 + 192));
    *(a1 + 192) = 0;
  }

  v3 = mach_absolute_time();
  v4 = sub_19B41E070(v3) - *a1;
  if (*(a1 + 80) >= 0.00001 && v4 >= 5.0)
  {
    v6 = *(a1 + 100);
    if (v6)
    {
      v7 = *(a1 + 24) / v6;
    }

    v8 = *(a1 + 16);
    *(a1 + 8);
    v9 = 68;
    if (*(a1 + 96))
    {
      v9 = 64;
    }

    sub_19B74FB58(*(a1 + v9));
    AnalyticsSendEventLazy();
  }

  *(a1 + 80) = 0;
}

void sub_19B6D7E9C(uint64_t a1, int a2, int a3, double a4)
{
  v8 = *(a1 + 80);
  if (v8 != a4 && v8 > 0.00001)
  {
    sub_19B6D7D4C(a1);
  }

  *(a1 + 80) = a4;
  *(a1 + 88) = a3;
  v9 = mach_absolute_time();
  *a1 = sub_19B41E070(v9);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  v10 = *(a1 + 80);
  *(a1 + 48) = v10;
  *(a1 + 56) = v10;
  *(a1 + 108) = 0;
  *(a1 + 100) = 0;
  *(a1 + 116) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = a2;
  *(a1 + 98) = 0;
  if (qword_1ED71D428 != -1)
  {
    dispatch_once(&qword_1ED71D428, &unk_1F0E29A80);
  }

  *(a1 + 96) = !sub_19B74FBF4(qword_1ED71D420);
  if (qword_1ED71D428 != -1)
  {
    dispatch_once(&qword_1ED71D428, &unk_1F0E29A80);
  }

  *(a1 + 97) = (sub_19B74FC3C() & 6) == 4;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = xmmword_19B7BC360;
  *(a1 + 168) = 0;
  if (!*(a1 + 192))
  {
    context.version = 0;
    context.info = a1;
    memset(&context.retain, 0, 24);
    *(a1 + 192) = CFRunLoopTimerCreate(*MEMORY[0x1E695E480], 1.79769313e308, 1.79769313e308, 0, 0, sub_19B6DB7C4, &context);
    sub_19B420D84();
    CFRunLoopAddTimer(*qword_1ED71C908, *(a1 + 192), *MEMORY[0x1E695E8D0]);
  }

  *(a1 + 184) = 0x3FF0000000000000;
  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 176) = Current;
  CFRunLoopTimerSetNextFireDate(*(a1 + 192), Current + *(a1 + 184));
}

void sub_19B6D8074(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    *(a1 + 296) = *a3;
    goto LABEL_5;
  }

  if (!a2)
  {
    *(a1 + 288) = *a3;
LABEL_5:
    sub_19B6D7464(a1);
    v5 = *a3;
    goto LABEL_17;
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v6 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v11 = a2;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "[AccessoryDeviceMotion] Unrecognized interval notification %{public}d", buf, 8u);
  }

  v7 = sub_19B420058();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryDeviceMotion::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
}

BOOL sub_19B6D8268(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    sub_19B750AC4(result);
    result = sub_19B74FBF4(v3);
    *(v3 + 304) = result;
  }

  return result;
}

uint64_t sub_19B6D82A0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = sub_19B74FBF4(a1);
  v3 = *(a1 + 304);
  result = sub_19B74FBF4(a1);
  if (v3 != result)
  {
    v5 = (a1 + 304);
    *(a1 + 304) = v2;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v6 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_19B74FBA4(*v5);
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] sending accessory status to clients: %{public}@", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if (*(v8 + 160) > 1 || *(v8 + 164) > 1 || *(v8 + 168) > 1 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      sub_19B74FBA4(*v5);
      v9 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::sendAccessoryStatus()", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = mach_absolute_time();
    sub_19B41E070(v10);
    result = sub_19B41DF08(a1, 3, a1 + 304, 4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6D84C4(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x1E69E9840];
  sub_19B750848(a1, a2);
  if (!a2)
  {
LABEL_4:
    *(a1 + 308) = sub_19B74FC3C();
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v4 = (a1 + 308);
    v5 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_19B74FB80(*v4);
      *buf = 138543362;
      v36 = v6;
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Received InEar status update from AudioAccessoryInterface - %{public}@", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      sub_19B74FB80(*v4);
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onAudioAccessoryInterfaceCallback(CLAudioAccessoryInterface::Event)", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    (*(*a1 + 48))(a1);
    v9 = *(a1 + 308);
    if (v9 <= 5 && ((1 << v9) & 0x34) != 0)
    {
      v10 = a1 + 80;
      v11 = 4;
    }

    else
    {
      v10 = a1 + 80;
      v11 = 5;
    }

    sub_19B79A0E8(v10, v11, buf);
    v20 = mach_absolute_time();
    sub_19B41E070(v20);
    sub_19B41DF08(a1, 4, a1 + 308, 4);
    if (!*(a1 + 48))
    {
      *(a1 + 29) = 0;
    }

    goto LABEL_67;
  }

  if (a2 != 3)
  {
    if (a2 != 2)
    {
      goto LABEL_67;
    }

    goto LABEL_4;
  }

  v12 = sub_19B7851B0();
  sub_19B787E50(v12, a1);
  sub_19B4238F4(*(a1 + 32), rint(0.0));
  v13 = *(a1 + 96);
  if (v13 == 2)
  {
    v21 = sub_19B7851B0();
    sub_19B787D50(v21, a1, 0);
    (*(**(a1 + 32) + 16))(*(a1 + 32), @"MaxFIFOEvents", &unk_1F0E6A660);
    v22 = *(a1 + 280);
    v23 = rint(v22 * 1000000.0);
    if (v22 < 0.0)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    sub_19B4238F4(*(a1 + 32), v24);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v25 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] USB Mode change during Streaming. Resetting...", buf, 2u);
    }

    v26 = sub_19B420058();
    if (*(v26 + 160) > 1 || *(v26 + 164) > 1 || *(v26 + 168) > 1 || *(v26 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 == -1)
      {
LABEL_65:
        v33 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onAudioAccessoryInterfaceCallback(CLAudioAccessoryInterface::Event)", "CoreLocation: %s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }

        goto LABEL_67;
      }

LABEL_68:
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      goto LABEL_65;
    }
  }

  else if (v13 == 1)
  {
    v14 = sub_19B7851B0();
    sub_19B787D50(v14, a1, 1);
    (*(**(a1 + 32) + 16))(*(a1 + 32), @"MaxFIFOEvents", &unk_1F0E6A660);
    v15 = *(a1 + 280);
    v16 = rint(v15 * 1000000.0);
    if (v15 < 0.0)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    sub_19B4238F4(*(a1 + 32), v17);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v18 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] USB Mode change during Spatial Audio. Resetting...", buf, 2u);
    }

    v19 = sub_19B420058();
    if (*(v19 + 160) > 1 || *(v19 + 164) > 1 || *(v19 + 168) > 1 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 == -1)
      {
        goto LABEL_65;
      }

      goto LABEL_68;
    }
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v27 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a1 + 96);
      if (v28 > 3)
      {
        v29 = @"?";
      }

      else
      {
        v29 = off_1E75345E8[v28];
      }

      *buf = 138543362;
      v36 = v29;
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] USB Mode change during %{public}@. Skipping...", buf, 0xCu);
    }

    v30 = sub_19B420058();
    if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v31 = *(a1 + 96);
      if (v31 <= 3)
      {
        v32 = off_1E75345E8[v31];
      }

      goto LABEL_65;
    }
  }

LABEL_67:
  v34 = *MEMORY[0x1E69E9840];
}

void sub_19B6D8C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v202 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v8 = IntegerValue == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_219;
  }

  v9 = IntegerValue;
  v10 = (*(**(a1 + 32) + 24))(*(a1 + 32), @"Transport");
  isEqualToString = objc_msgSend_isEqualToString_(v10, v11, @"Virtual");

  if (isEqualToString)
  {
    goto LABEL_219;
  }

  *&v146 = 0;
  *(&v146 + 1) = 0x3F80000000000000;
  WORD2(v149) = 0;
  *(&v149 + 1) = 0;
  *&v150 = 0;
  TimeStamp = IOHIDEventGetTimeStamp();
  *(&v150 + 1) = sub_19B41E070(TimeStamp);
  memset(&v151[12], 0, 70);
  v145 = 0;
  v14 = sub_19B7953F8(a4, &v145);
  v15 = v14;
  *&v151[32] = v14;
  v16.i32[1] = HIDWORD(v150);
  *&v150 = *(&v150 + 1);
  if (v145 == 1 && v14)
  {
    if (*(a1 + 336) < 0.00001)
    {
      *(a1 + 336) = *(&v150 + 1);
    }

    v17 = sub_19B7851B0();
    v19 = sub_19B787F84(v17, v15, v18);
    v20 = v19;
    if (v19)
    {
      v21 = sub_19B41E070(v19);
      if (vabdd_f64(*(&v150 + 1), v21) < 3600.0)
      {
        *&v151[40] = *(&v150 + 1) - v21;
        *&v150 = v21;
        *&v151[28] = *(a1 + 272);
        if (*(&v150 + 1) - v21 <= 0.100000001)
        {
          if (*(&v150 + 1) - v21 > 0.0)
          {
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
            }

            v33 = qword_1ED71C7C8;
            if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
            {
              v34 = *&v151[32];
              v35 = IOHIDEventGetTimeStamp();
              *buf = 134349824;
              *&buf[4] = v34;
              *&buf[12] = 2050;
              *&buf[14] = v35;
              *&buf[22] = 2050;
              *&buf[24] = v20;
              *&buf[32] = 2050;
              *&buf[34] = (*&v151[40] * 1000000000.0);
              _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_DEBUG, "[AccessoryDeviceMotion] W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", buf, 0x2Au);
            }

            v36 = sub_19B420058();
            if (*(v36 + 160) <= 1 && *(v36 + 164) <= 1 && *(v36 + 168) <= 1 && !*(v36 + 152))
            {
              goto LABEL_60;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
            }

            v37 = *&v151[32];
            v38 = IOHIDEventGetTimeStamp();
            v153 = 134349824;
            *&v154[0] = v37;
            WORD4(v154[0]) = 2050;
            *(v154 + 10) = v38;
            WORD1(v154[1]) = 2050;
            *(&v154[1] + 4) = v20;
            WORD6(v154[1]) = 2050;
            *(&v154[1] + 14) = (*&v151[40] * 1000000000.0);
            v39 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v39);
            goto LABEL_58;
          }

          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
          }

          v40 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
          {
            v41 = *&v151[32];
            v42 = IOHIDEventGetTimeStamp();
            *buf = 134349824;
            *&buf[4] = v41;
            *&buf[12] = 2050;
            *&buf[14] = v42;
            *&buf[22] = 2050;
            *&buf[24] = v20;
            *&buf[32] = 2050;
            *&buf[34] = (*&v151[40] * 1000000000.0);
            _os_log_impl(&dword_19B41C000, v40, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Zero or Negative TimeSync Latency! W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", buf, 0x2Au);
          }

          v43 = sub_19B420058();
          if ((*(v43 + 160) & 0x80000000) != 0 && (*(v43 + 164) & 0x80000000) != 0 && (*(v43 + 168) & 0x80000000) != 0 && !*(v43 + 152))
          {
            goto LABEL_60;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 == -1)
          {
LABEL_57:
            v44 = *&v151[32];
            v45 = IOHIDEventGetTimeStamp();
            v153 = 134349824;
            *&v154[0] = v44;
            WORD4(v154[0]) = 2050;
            *(v154 + 10) = v45;
            WORD1(v154[1]) = 2050;
            *(&v154[1] + 4) = v20;
            WORD6(v154[1]) = 2050;
            *(&v154[1] + 14) = (*&v151[40] * 1000000000.0);
            v39 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v39);
LABEL_58:
            if (v39 != buf)
            {
              free(v39);
            }

LABEL_60:
            v46 = *(&v150 + 1);
            v16.i64[0] = *&v151[40];
            ++*(a1 + 428);
            if (*(a1 + 344) < 0.00001)
            {
              *(a1 + 344) = v46;
            }

            v47 = *(a1 + 352);
            if (v47 >= 0.00001)
            {
              v48 = *(a1 + 360);
              v49 = *(a1 + 368);
              if (v48 > *v16.i64)
              {
                v48 = *v16.i64;
              }

              if (v49 < *v16.i64)
              {
                v49 = *v16.i64;
              }

              *(a1 + 360) = v48;
              *(a1 + 368) = v49;
            }

            else
            {
              *(a1 + 360) = v16.i64[0];
              *(a1 + 368) = v16.i64[0];
            }

            *(a1 + 352) = *v16.i64 + v47;
            if (*v16.i64 > 0.100000001)
            {
              ++*(a1 + 436);
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
          }

          v22 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
          {
            v144 = *&v151[32];
            v23 = IOHIDEventGetTimeStamp();
            *buf = 134349824;
            *&buf[4] = v144;
            *&buf[12] = 2050;
            *&buf[14] = v23;
            *&buf[22] = 2050;
            *&buf[24] = v20;
            *&buf[32] = 2050;
            *&buf[34] = (*&v151[40] * 1000000000.0);
            _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] High TimeSync Latency! W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", buf, 0x2Au);
          }

          v24 = sub_19B420058();
          if ((*(v24 + 160) & 0x80000000) != 0 && (*(v24 + 164) & 0x80000000) != 0 && (*(v24 + 168) & 0x80000000) != 0 && !*(v24 + 152))
          {
            goto LABEL_60;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1ED71C7B8 == -1)
          {
            goto LABEL_57;
          }
        }

        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
        goto LABEL_57;
      }

      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v26 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        v27 = *&v151[32];
        v28 = IOHIDEventGetTimeStamp();
        *buf = 134349824;
        *&buf[4] = v27;
        *&buf[12] = 2050;
        *&buf[14] = v28;
        *&buf[22] = 2050;
        *&buf[24] = v20;
        *&buf[32] = 2050;
        *&buf[34] = (*&v151[40] * 1000000000.0);
        _os_log_impl(&dword_19B41C000, v26, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Abnormal TimeSync Latency! W2 btclk(ns):%{public}llu local abs:%{public}llu Synced ts:%{public}llu remote->local latency(ns):%{public}lld", buf, 0x2Au);
      }

      v29 = sub_19B420058();
      if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED71C7B8 != -1)
        {
          dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
        }

        v30 = *&v151[32];
        v31 = IOHIDEventGetTimeStamp();
        v153 = 134349824;
        *&v154[0] = v30;
        WORD4(v154[0]) = 2050;
        *(v154 + 10) = v31;
        WORD1(v154[1]) = 2050;
        *(&v154[1] + 4) = v20;
        WORD6(v154[1]) = 2050;
        *(&v154[1] + 14) = (*&v151[40] * 1000000000.0);
        v32 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    else
    {
      v16.i64[0] = *(a1 + 344);
      if (*v16.i64 > 0.00001)
      {
        ++*(a1 + 432);
      }
    }
  }

  else if ((v145 & 1) == 0)
  {
    *&v151[28] = *(a1 + 272);
    v25 = mach_absolute_time();
    *v16.i64 = sub_19B41E070(v25);
    *(&v150 + 1) = v16.i64[0];
  }

LABEL_71:
  v50 = *DataValue;
  if ((v50 < 4 || v9 != 47) && (v50 != 3 || v9 != 49))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v60 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      *&buf[4] = v9;
      *&buf[12] = 1026;
      *&buf[14] = v50;
      _os_log_impl(&dword_19B41C000, v60, OS_LOG_TYPE_FAULT, "[AccessoryDeviceMotion] Invalid accessory device motion packet size %{public}ld and version %{public}d", buf, 0x12u);
    }

    v61 = sub_19B420058();
    if ((*(v61 + 160) & 0x80000000) != 0 && (*(v61 + 164) & 0x80000000) != 0 && (*(v61 + 168) & 0x80000000) != 0 && !*(v61 + 152))
    {
      goto LABEL_219;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v153 = 134349312;
    *&v154[0] = v9;
    WORD4(v154[0]) = 1026;
    *(v154 + 10) = v50;
    v62 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v62);
LABEL_217:
    if (v62 != buf)
    {
      free(v62);
    }

    goto LABEL_219;
  }

  *&v151[20] = *(DataValue + 45);
  if ((*(DataValue + 1) & 0x80) != 0)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v57 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v57, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Invalid IMU error on accessory", buf, 2u);
    }

    v58 = sub_19B420058();
    if ((*(v58 + 160) & 0x80000000) == 0 || (*(v58 + 164) & 0x80000000) == 0 || (*(v58 + 168) & 0x80000000) == 0 || *(v58 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      LOWORD(v153) = 0;
      v59 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v59);
      if (v59 != buf)
      {
        free(v59);
      }
    }

    *(a1 + 427) = 1;
    goto LABEL_219;
  }

  *(&v149 + 1) = *(DataValue + 3);
  v51 = *(DataValue + 13) / 32767.0;
  v52 = *(DataValue + 15) / 32767.0;
  *buf = *(DataValue + 11) / 32767.0;
  *&buf[4] = v51;
  v16.f32[0] = sqrtf(fmaxf(((1.0 - (*buf * *buf)) - (v51 * v51)) - (v52 * v52), 0.0));
  *&buf[8] = v52;
  *&buf[12] = v16.i32[0];
  sub_19B41E130(buf, v16);
  v146 = *buf;
  v53 = vcvts_n_f32_s32(*(DataValue + 33), 0xAuLL);
  *(&v148 + 1) = __PAIR64__(COERCE_UNSIGNED_INT(vcvts_n_f32_s32(*(DataValue + 31), 0xAuLL)), COERCE_UNSIGNED_INT(vcvts_n_f32_s32(*(DataValue + 29), 0xAuLL)));
  *&v149 = v53;
  v54 = vcvts_n_f32_s32(*(DataValue + 21), 9uLL);
  *&v147 = __PAIR64__(COERCE_UNSIGNED_INT(vcvts_n_f32_s32(*(DataValue + 19), 9uLL)), COERCE_UNSIGNED_INT(vcvts_n_f32_s32(*(DataValue + 17), 9uLL)));
  *(&v147 + 2) = v54;
  if (v50 < 5)
  {
    *&v151[61] = 0;
    *&v63 = vcvts_n_f32_u32(*(DataValue + 25), 0x17uLL);
    *&v64 = vcvts_n_f32_u32(*(DataValue + 27), 0x17uLL);
    HIDWORD(v147) = vcvts_n_f32_u32(*(DataValue + 23), 0x17uLL);
    *&v148 = __PAIR64__(v64, v63);
  }

  else
  {
    HIDWORD(v147) = vcvts_n_f32_u32(*(DataValue + 23), 0x17uLL);
    LODWORD(v148) = HIDWORD(v147);
    DWORD1(v148) = HIDWORD(v147);
    if (v50 == 5)
    {
      v55 = 0;
      v56 = 0;
    }

    else
    {
      v56 = DataValue[25];
      v55 = 1;
    }

    v151[62] = v55;
    v151[61] = v56;
    if (DataValue[26] || DataValue[27] || (LOBYTE(v65) = DataValue[28], v65))
    {
      v65 = (*(DataValue + 1) >> 9) & 1;
    }

    v151[60] = v65;
    *&v151[48] = DataValue[26] / 127.0;
    *&v151[52] = DataValue[27] / 127.0;
    *&v151[56] = DataValue[28] / 127.0;
  }

  v66 = vcvts_n_f32_s32(*(DataValue + 37), 0xAuLL);
  v67 = vcvts_n_f32_s32(*(DataValue + 39), 0xAuLL);
  *v151 = vcvts_n_f32_s32(*(DataValue + 35), 0xAuLL);
  *&v151[4] = v66;
  *&v151[8] = v67;
  *&v151[12] = *(DataValue + 41);
  v68 = *(DataValue + 1);
  v69 = (v68 >> 14) & 2;
  if ((v68 & 0x4000) != 0)
  {
    v69 = 1;
  }

  *&v151[16] = v69;
  WORD2(v149) = v68 & 0x3FFF;
  v151[63] = (*(a1 + 308) < 6u) & (0x34u >> *(a1 + 308));
  *v166 = 0;
  v152 = 0.0;
  v173 = 0.0;
  if (sub_19B5E44E4(v166, &v152, &v173))
  {
    *&v151[64] = v152 - (*v166 - *&v150);
    *&v151[72] = v173 - (*v166 - *&v150);
  }

  else
  {
    *&v151[64] = 0;
    *&v151[72] = 0;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v70 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = *(&v149 + 1);
      _os_log_impl(&dword_19B41C000, v70, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] CLCommonSyncGetTimes failed for currSensorTime,%{public}.llu", buf, 0xCu);
    }

    v71 = sub_19B420058();
    if ((*(v71 + 160) & 0x80000000) == 0 || (*(v71 + 164) & 0x80000000) == 0 || (*(v71 + 168) & 0x80000000) == 0 || *(v71 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v153 = 134349056;
      *&v154[0] = *(&v149 + 1);
      v72 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v72);
      if (v72 != buf)
      {
        free(v72);
      }
    }
  }

  v151[80] = *(a1 + 308) != 5;
  v151[81] = 0;
  v73 = *(&v149 + 1);
  v74 = *&v151[20];
  v75 = *&v151[28];
  v76 = WORD2(v149);
  v77 = *&v151[40];
  *(a1 + 460) = *&v151[20];
  *(a1 + 464) = v73;
  *(a1 + 456) = v75;
  *(a1 + 462) = v76;
  *(a1 + 472) = v50;
  ++*(a1 + 448);
  if (v75)
  {
    ++*(a1 + 452);
    v78 = *(a1 + 488);
    if (v78 > v77)
    {
      v78 = v77;
    }

    *(a1 + 480) = v77 + *(a1 + 480);
    *(a1 + 488) = v78;
    if (*(a1 + 496) >= v77)
    {
      v77 = *(a1 + 496);
    }

    *(a1 + 496) = v77;
  }

  v79 = *(a1 + 212);
  v80 = *(a1 + 204);
  if (v75 && v75 == v79 && v74 > v80)
  {
    v81.f64[1] = *(a1 + 384);
    v81.f64[0] = (*&v150 - *(a1 + 168)) / (v74 - v80);
    v82.f64[0] = *(a1 + 376);
    v82.f64[1] = v81.f64[0];
    *(a1 + 376) = vbslq_s8(vcgtq_f64(v82, v81), vdupq_lane_s64(*&v81.f64[0], 0), *(a1 + 376));
  }

  if (!v74 || v74 != v80)
  {
    if (v74 < 3 || v74 >= v80)
    {
      if (v73 < 0xC351 || v73 >= *(a1 + 160))
      {
        if (v75 && v79 && *&v150 < *(a1 + 168))
        {
          ++*(a1 + 440);
          if (qword_1ED71C7B8 != -1)
          {
            dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
          }

          v117 = qword_1ED71C7C8;
          if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
          {
            v118 = *(a1 + 204);
            v119 = *(a1 + 168);
            *buf = 67240960;
            *&buf[4] = v118;
            *&buf[8] = 2050;
            *&buf[10] = v119;
            *&buf[18] = 1026;
            *&buf[20] = *&v151[20];
            *&buf[24] = 2050;
            *&buf[26] = v150;
            _os_log_impl(&dword_19B41C000, v117, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] TimeSynced timestamp went backward: lastSeq,%{public}d,lastTimestamp,%{public}.3f,currSeq,%{public}d,currTimestamp,%{public}.3f", buf, 0x22u);
          }

          v120 = sub_19B420058();
          if ((*(v120 + 160) & 0x80000000) == 0 || (*(v120 + 164) & 0x80000000) == 0 || (*(v120 + 168) & 0x80000000) == 0 || *(v120 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED71C7B8 != -1)
            {
              dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
            }

            v121 = *(a1 + 204);
            v122 = *(a1 + 168);
            v153 = 67240960;
            LODWORD(v154[0]) = v121;
            WORD2(v154[0]) = 2050;
            *(v154 + 6) = v122;
            HIWORD(v154[0]) = 1026;
            LODWORD(v154[1]) = *&v151[20];
            WORD2(v154[1]) = 2050;
            *(&v154[1] + 6) = v150;
            v97 = _os_log_send_and_compose_impl();
            sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v97);
            goto LABEL_166;
          }
        }

        goto LABEL_168;
      }

      ++*(a1 + 440);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v91 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        v92 = *(a1 + 204);
        v93 = *(a1 + 160);
        *buf = 67240960;
        *&buf[4] = v92;
        *&buf[8] = 2050;
        *&buf[10] = v93;
        *&buf[18] = 1026;
        *&buf[20] = *&v151[20];
        *&buf[24] = 2050;
        *&buf[26] = *(&v149 + 1);
        _os_log_impl(&dword_19B41C000, v91, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Received backward W2 GTB timestamp: lastSeq,%{public}d,lastSensorTime,%{public}llu,currSeq,%{public}d,currSensorTime,%{public}llu", buf, 0x22u);
      }

      v94 = sub_19B420058();
      if ((*(v94 + 160) & 0x80000000) != 0 && (*(v94 + 164) & 0x80000000) != 0 && (*(v94 + 168) & 0x80000000) != 0 && !*(v94 + 152))
      {
        goto LABEL_168;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 == -1)
      {
LABEL_165:
        v95 = *(a1 + 204);
        v96 = *(a1 + 160);
        v153 = 67240960;
        LODWORD(v154[0]) = v95;
        WORD2(v154[0]) = 2050;
        *(v154 + 6) = v96;
        HIWORD(v154[0]) = 1026;
        LODWORD(v154[1]) = *&v151[20];
        WORD2(v154[1]) = 2050;
        *(&v154[1] + 6) = *(&v149 + 1);
        v97 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v97);
LABEL_166:
        if (v97 != buf)
        {
          free(v97);
        }

        goto LABEL_168;
      }
    }

    else
    {
      ++*(a1 + 440);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      v87 = qword_1ED71C7C8;
      if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
      {
        v88 = *(a1 + 204);
        v89 = *(a1 + 160);
        *buf = 67240960;
        *&buf[4] = v88;
        *&buf[8] = 2050;
        *&buf[10] = v89;
        *&buf[18] = 1026;
        *&buf[20] = *&v151[20];
        *&buf[24] = 2050;
        *&buf[26] = *(&v149 + 1);
        _os_log_impl(&dword_19B41C000, v87, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Received backward sequence number: lastSeq,%{public}d,lastSensorTime,%{public}llu,currSeq,%{public}d,currSensorTime,%{public}llu", buf, 0x22u);
      }

      v90 = sub_19B420058();
      if ((*(v90 + 160) & 0x80000000) != 0 && (*(v90 + 164) & 0x80000000) != 0 && (*(v90 + 168) & 0x80000000) != 0 && !*(v90 + 152))
      {
        goto LABEL_168;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 == -1)
      {
        goto LABEL_165;
      }
    }

LABEL_332:
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    goto LABEL_165;
  }

  ++*(a1 + 444);
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v83 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
  {
    v84 = *(a1 + 204);
    v85 = *(a1 + 160);
    *buf = 67240960;
    *&buf[4] = v84;
    *&buf[8] = 2050;
    *&buf[10] = v85;
    *&buf[18] = 1026;
    *&buf[20] = *&v151[20];
    *&buf[24] = 2050;
    *&buf[26] = *(&v149 + 1);
    _os_log_impl(&dword_19B41C000, v83, OS_LOG_TYPE_ERROR, "[AccessoryDeviceMotion] Received duplicate packets: lastSeq,%{public}d,lastSensorTime,%{public}llu,currSeq,%{public}d,currSensorTime,%{public}llu", buf, 0x22u);
  }

  v86 = sub_19B420058();
  if ((*(v86 + 160) & 0x80000000) == 0 || (*(v86 + 164) & 0x80000000) == 0 || (*(v86 + 168) & 0x80000000) == 0 || *(v86 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 == -1)
    {
      goto LABEL_165;
    }

    goto LABEL_332;
  }

LABEL_168:
  v98 = *&v151[16];
  *(a1 + 216) = *&v151[32];
  v99 = *&v151[64];
  *(a1 + 232) = *&v151[48];
  *(a1 + 248) = v99;
  v100 = v148;
  *(a1 + 152) = v149;
  v101 = *v151;
  *(a1 + 168) = v150;
  *(a1 + 184) = v101;
  *(a1 + 200) = v98;
  v102 = v147;
  *(a1 + 104) = v146;
  *(a1 + 120) = v102;
  *(a1 + 264) = *&v151[80];
  *(a1 + 136) = v100;
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v103 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
  {
    *buf = 67241216;
    *&buf[4] = *&v151[20];
    *&buf[8] = 2050;
    *&buf[10] = *(&v149 + 1);
    *&buf[18] = 2050;
    *&buf[20] = v150;
    *&buf[28] = 1026;
    *&buf[30] = *&v151[28];
    *&buf[34] = 2050;
    *&buf[36] = *&v151[40];
    _os_log_impl(&dword_19B41C000, v103, OS_LOG_TYPE_INFO, "[AccessoryDeviceMotion] seq,%{public}d,sensorTime,%{public}llu,timestamp,%{public}20.20f,TimeSyncStatus,%{public}u,latency,%{public}20.20f", buf, 0x2Cu);
  }

  v104 = sub_19B420058();
  if (*(v104 + 160) > 1 || *(v104 + 164) > 1 || *(v104 + 168) > 1 || *(v104 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v153 = 67241216;
    LODWORD(v154[0]) = *&v151[20];
    WORD2(v154[0]) = 2050;
    *(v154 + 6) = *(&v149 + 1);
    HIWORD(v154[0]) = 2050;
    *&v154[1] = v150;
    WORD4(v154[1]) = 1026;
    *(&v154[1] + 10) = *&v151[28];
    HIWORD(v154[1]) = 2050;
    *&v154[2] = *&v151[40];
    v105 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v105);
    if (v105 != buf)
    {
      free(v105);
    }
  }

  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v106 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134353664;
    *&buf[4] = *&v146;
    *&buf[12] = 2050;
    *&buf[14] = *(&v146 + 1);
    *&buf[22] = 2050;
    *&buf[24] = *(&v146 + 2);
    *&buf[32] = 2050;
    *&buf[34] = *(&v146 + 3);
    *&buf[42] = 2050;
    *&buf[44] = *&v147;
    *&buf[52] = 2050;
    v175 = *(&v147 + 1);
    v176 = 2050;
    v177 = *(&v147 + 2);
    v178 = 2050;
    v179 = *(&v147 + 3);
    v180 = 2050;
    v181 = *&v148;
    v182 = 2050;
    v183 = *(&v148 + 1);
    v184 = 2050;
    v185 = *(&v148 + 2);
    v186 = 2050;
    v187 = *(&v148 + 3);
    v188 = 2050;
    v189 = *&v149;
    v190 = 2050;
    v191 = *v151;
    v192 = 2050;
    v193 = *&v151[4];
    v194 = 2050;
    v195 = *&v151[8];
    v196 = 1026;
    v197 = WORD2(v149);
    v198 = 2050;
    v199 = *&v151[12];
    v200 = 1026;
    v201 = *&v151[16];
    _os_log_impl(&dword_19B41C000, v106, OS_LOG_TYPE_DEBUG, "[AccessoryDeviceMotion] q.x,%{public}20.20f,q.y,%{public}20.20f,q.z,%{public}20.20f,q.w,%{public}20.20f,rotationRate.x,%{public}20.20f,rotationRate.y,%{public}20.20f,rotationRate.z,%{public}20.20f,variance.x,%{public}20.20f,variance.y,%{public}20.20f,variance.z,%{public}20.20f,userAccel.x,%{public}20.20f,userAccel.y,%{public}20.20f,userAccel.z,%{public}20.20f,filteredAccel.x,%{public}20.20f,filteredAccel.y,%{public}20.20f,filteredAccel.z,%{public}20.20f,status,%{public}04x,quiescentNoise,%{public}20.20f,quiescentMode,%{public}d", buf, 0xB8u);
  }

  v107 = sub_19B420058();
  if (*(v107 + 160) > 1 || *(v107 + 164) > 1 || *(v107 + 168) > 1 || *(v107 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v153 = 134353664;
    *v154 = *&v146;
    WORD4(v154[0]) = 2050;
    *(v154 + 10) = *(&v146 + 1);
    WORD1(v154[1]) = 2050;
    *(&v154[1] + 4) = *(&v146 + 2);
    WORD6(v154[1]) = 2050;
    *(&v154[1] + 14) = *(&v146 + 3);
    WORD3(v154[2]) = 2050;
    *(&v154[2] + 1) = *&v147;
    LOWORD(v155[0]) = 2050;
    *(v155 + 2) = *(&v147 + 1);
    HIWORD(v155[2]) = 2050;
    *&v155[3] = *(&v147 + 2);
    LOWORD(v155[5]) = 2050;
    *(&v155[5] + 2) = *(&v147 + 3);
    HIWORD(v155[7]) = 2050;
    *&v155[8] = *&v148;
    LOWORD(v155[10]) = 2050;
    *(&v155[10] + 2) = *(&v148 + 1);
    HIWORD(v155[12]) = 2050;
    *v156 = *(&v148 + 2);
    *&v156[8] = 2050;
    *&v156[10] = *(&v148 + 3);
    *&v156[18] = 2050;
    *v157 = *&v149;
    LOWORD(v157[2]) = 2050;
    *(&v157[2] + 2) = *v151;
    HIWORD(v157[4]) = 2050;
    *&v157[5] = *&v151[4];
    v158 = 2050;
    v159 = *&v151[8];
    v160 = 1026;
    v161 = WORD2(v149);
    v162 = 2050;
    v163 = *&v151[12];
    v164 = 1026;
    v165 = *&v151[16];
    v108 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryDeviceMotion::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v108);
    if (v108 != buf)
    {
      free(v108);
    }
  }

  v152 = *&v150;
  if (*(a1 + 29))
  {
    goto LABEL_193;
  }

  v154[0] = xmmword_19B7BC41E;
  memset(&v154[1], 0, 32);
  *v155 = unk_19B7BC44E;
  *&v155[4] = xmmword_19B7BC45E;
  *(a1 + 29) = 1;
  v153 = 0;
  memset(&v155[8], 0, 20);
  v156[0] = 0;
  *&v156[4] = 0;
  *&v156[12] = 0x3F80000000000000;
  *&v157[1] = 0;
  v157[3] = 0;
  v157[4] = 1065353216;
  if (!sub_19B74FCD0(a1, &v153))
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v114 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v114, OS_LOG_TYPE_FAULT, "[AccessoryDeviceMotion] Service not found!", buf, 2u);
    }

    v115 = sub_19B420058();
    if ((*(v115 + 160) & 0x80000000) != 0 && (*(v115 + 164) & 0x80000000) != 0 && (*(v115 + 168) & 0x80000000) != 0 && !*(v115 + 152))
    {
      goto LABEL_219;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    *v166 = 0;
    v62 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v62);
    goto LABEL_217;
  }

  v109 = sub_19B43EE18(*(a1 + 32));
  if (sub_19B7960E8(&v173, v109, @"H2HTransformation", 8uLL))
  {
    LOBYTE(v157[0]) = 1;
    *buf = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*&v173)), vdupq_n_s32(0x38000100u));
    sub_19B41E130(buf, *buf);
    *&v157[1] = *buf;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v110 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349824;
      *&buf[4] = *&v157[1];
      *&buf[12] = 2050;
      *&buf[14] = *&v157[2];
      *&buf[22] = 2050;
      *&buf[24] = *&v157[3];
      *&buf[32] = 2050;
      *&buf[34] = *&v157[4];
      _os_log_impl(&dword_19B41C000, v110, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Received headset to head transformation {%{public}f, %{public}f, %{public}f, %{public}f} from IORegistry", buf, 0x2Au);
    }

    v111 = sub_19B420058();
    if (*(v111 + 160) > 1 || *(v111 + 164) > 1 || *(v111 + 168) > 1 || *(v111 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      *v166 = 134349824;
      *&v166[4] = *&v157[1];
      v167 = 2050;
      v168 = *&v157[2];
      v169 = 2050;
      v170[0] = *&v157[3];
      LOWORD(v170[1]) = 2050;
      *(&v170[1] + 2) = *&v157[4];
      v113 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v113);
LABEL_244:
      if (v113 != buf)
      {
        free(v113);
      }
    }
  }

  else
  {
    LOBYTE(v157[0]) = 0;
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v123 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v123, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Warning! Headset to Head transformation is not available from the accessory.", buf, 2u);
    }

    v124 = sub_19B420058();
    if (*(v124 + 160) > 1 || *(v124 + 164) > 1 || *(v124 + 168) > 1 || *(v124 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
      }

      *v166 = 0;
      v113 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v113);
      goto LABEL_244;
    }
  }

  if (LOBYTE(v157[0]) != 1)
  {
    v131 = v155[12];
    v132 = v153;
    if ((atomic_load_explicit(&qword_1ED71D430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D430))
    {
      xmmword_1ED71D490 = xmmword_19B7B7E30;
      sub_19B41E130(&xmmword_1ED71D490, xmmword_19B7B7E30);
      __cxa_guard_release(&qword_1ED71D430);
    }

    if ((atomic_load_explicit(&qword_1ED71D438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D438))
    {
      xmmword_1ED71D4A0 = xmmword_19B7BC370;
      sub_19B41E130(&xmmword_1ED71D4A0, xmmword_19B7BC370);
      __cxa_guard_release(&qword_1ED71D438);
    }

    if ((atomic_load_explicit(&qword_1ED71D440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D440))
    {
      xmmword_1ED71D4B0 = xmmword_19B7BC380;
      sub_19B41E130(&xmmword_1ED71D4B0, xmmword_19B7BC380);
      __cxa_guard_release(&qword_1ED71D440);
    }

    if ((atomic_load_explicit(&qword_1ED71D448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D448))
    {
      xmmword_1ED71D4C0 = xmmword_19B7BC390;
      sub_19B41E130(&xmmword_1ED71D4C0, xmmword_19B7BC390);
      __cxa_guard_release(&qword_1ED71D448);
    }

    if ((atomic_load_explicit(&qword_1ED71D450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D450))
    {
      xmmword_1ED71D4D0 = xmmword_19B7BC3A0;
      sub_19B41E130(&xmmword_1ED71D4D0, xmmword_19B7BC3A0);
      __cxa_guard_release(&qword_1ED71D450);
    }

    if ((atomic_load_explicit(&qword_1ED71D458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D458))
    {
      xmmword_1ED71D4E0 = xmmword_19B7BC3B0;
      sub_19B41E130(&xmmword_1ED71D4E0, xmmword_19B7BC3B0);
      __cxa_guard_release(&qword_1ED71D458);
    }

    if ((atomic_load_explicit(&qword_1ED71D460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D460))
    {
      xmmword_1ED71D4F0 = xmmword_19B7BC3C0;
      sub_19B41E130(&xmmword_1ED71D4F0, xmmword_19B7BC3C0);
      __cxa_guard_release(&qword_1ED71D460);
    }

    if ((atomic_load_explicit(&qword_1ED71D468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D468))
    {
      xmmword_1ED71D500 = xmmword_19B7BC3D0;
      sub_19B41E130(&xmmword_1ED71D500, xmmword_19B7BC3D0);
      __cxa_guard_release(&qword_1ED71D468);
    }

    if ((atomic_load_explicit(&qword_1ED71D470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D470))
    {
      xmmword_1ED71D510 = xmmword_19B7BC370;
      sub_19B41E130(&xmmword_1ED71D510, xmmword_19B7BC370);
      __cxa_guard_release(&qword_1ED71D470);
    }

    if ((atomic_load_explicit(&qword_1ED71D478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D478))
    {
      xmmword_1ED71D520 = xmmword_19B7BC380;
      sub_19B41E130(&xmmword_1ED71D520, xmmword_19B7BC380);
      __cxa_guard_release(&qword_1ED71D478);
    }

    if ((atomic_load_explicit(&qword_1ED71D480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D480))
    {
      xmmword_1ED71D530 = xmmword_19B7BC3E0;
      sub_19B41E130(&xmmword_1ED71D530, xmmword_19B7BC3E0);
      __cxa_guard_release(&qword_1ED71D480);
    }

    v133 = &xmmword_1ED71D490;
    if (v131 > 3)
    {
      if (v131 == 4)
      {
        v133 = &xmmword_1ED71D4F0;
      }

      else
      {
        if (v131 != 5)
        {
          if (v131 == 6)
          {
            v133 = &xmmword_1ED71D530;
          }

          goto LABEL_296;
        }

        v133 = &xmmword_1ED71D510;
      }

      goto LABEL_294;
    }

    if (v131 != 1)
    {
      if (v131 == 2)
      {
        v133 = &xmmword_1ED71D4C0;
      }

      else if (v131 == 3)
      {
        v133 = &xmmword_1ED71D4D0;
        goto LABEL_294;
      }

LABEL_296:
      *&v156[4] = *v133;
      goto LABEL_297;
    }

    v133 = &xmmword_1ED71D4A0;
LABEL_294:
    if (v132 != 2)
    {
      ++v133;
    }

    goto LABEL_296;
  }

  if ((atomic_load_explicit(&qword_1ED71D488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED71D488))
  {
    xmmword_1ED71D540 = xmmword_19B7BC3F0;
    sub_19B41E130(&xmmword_1ED71D540, xmmword_19B7BC3F0);
    __cxa_guard_release(&qword_1ED71D488);
  }

  *&v156[4] = sub_19B66BF70(&v157[1], &xmmword_1ED71D540, v112);
  *&v156[8] = v125;
  *&v156[12] = v126;
  *&v156[16] = v127;
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v128 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349824;
    *&buf[4] = *&v156[4];
    *&buf[12] = 2050;
    *&buf[14] = *&v156[8];
    *&buf[22] = 2050;
    *&buf[24] = *&v156[12];
    *&buf[32] = 2050;
    *&buf[34] = *&v156[16];
    _os_log_impl(&dword_19B41C000, v128, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Derived device frame orientation {%{public}f, %{public}f, %{public}f, %{public}f} from IORegistry", buf, 0x2Au);
  }

  v129 = sub_19B420058();
  if (*(v129 + 160) > 1 || *(v129 + 164) > 1 || *(v129 + 168) > 1 || *(v129 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    *v166 = 134349824;
    *&v166[4] = *&v156[4];
    v167 = 2050;
    v168 = *&v156[8];
    v169 = 2050;
    v170[0] = *&v156[12];
    LOWORD(v170[1]) = 2050;
    *(&v170[1] + 2) = *&v156[16];
    v130 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v130);
    if (v130 != buf)
    {
      free(v130);
    }
  }

LABEL_297:
  v134 = v155[12];
  v135 = v153;
  if (v155[12] > 0xAu)
  {
    v136 = 0;
  }

  else
  {
    v136 = 1;
    if (((1 << SLOBYTE(v155[12])) & 0x7BB) != 0)
    {
      if (v153 == 2)
      {
        v136 = 1;
      }

      else
      {
        v136 = 2;
      }
    }
  }

  *(a1 + 312) = v136;
  *(a1 + 392) = v134;
  *(a1 + 400) = v135;
  *(a1 + 426) = 1;
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v137 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v138 = sub_19B74FB58(v155[12]);
    v139 = sub_19B74FBD0(*(a1 + 312));
    *buf = 138479107;
    *&buf[4] = v138;
    *&buf[12] = 2114;
    *&buf[14] = v139;
    *&buf[22] = 1026;
    *&buf[24] = v153;
    *&buf[28] = 2081;
    *&buf[30] = v154;
    *&buf[38] = 2081;
    *&buf[40] = &v155[4];
    *&buf[48] = 1026;
    *&buf[50] = v155[12];
    _os_log_impl(&dword_19B41C000, v137, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] config,%{private}@,location,%{public}@,side,%{public}d,configuration,%{private}s,serialNumber,%{private}s,hardwareModel,%{public}d", buf, 0x36u);
  }

  v140 = sub_19B420058();
  if (*(v140 + 160) > 1 || *(v140 + 164) > 1 || *(v140 + 168) > 1 || *(v140 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v141 = sub_19B74FB58(v155[12]);
    *&v142 = COERCE_DOUBLE(sub_19B74FBD0(*(a1 + 312)));
    *v166 = 138479107;
    *&v166[4] = v141;
    v167 = 2114;
    v168 = *&v142;
    v169 = 1026;
    LODWORD(v170[0]) = v153;
    WORD2(v170[0]) = 2081;
    *(v170 + 6) = v154;
    HIWORD(v170[1]) = 2081;
    *&v170[2] = &v155[4];
    v171 = 1026;
    v172 = v155[12];
    v143 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::onDeviceMotionData(AudioAccessorySample &, CLMotionTypeTimestamp)", "CoreLocation: %s\n", v143);
    if (v143 != buf)
    {
      free(v143);
    }
  }

  sub_19B41DF08(a1, 2, &v153, 144);
  if (*(a1 + 29))
  {
LABEL_193:
    *&v151[24] = *(a1 + 312);
    sub_19B41DF08(a1, 0, &v146, 168);
    sub_19B41DF08(a1, 1, &v146, 168);
  }

LABEL_219:
  v116 = *MEMORY[0x1E69E9840];
}

void sub_19B6DB7C4(uint64_t a1, uint64_t a2)
{
  sub_19B6DB848(a2);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 144) = 0;
  *(a2 + 136) = 0;
  *(a2 + 152) = xmmword_19B7BC360;
  *(a2 + 168) = 0;
  v3 = *(a2 + 184);
  if (v3 < 5.0)
  {
    *(a2 + 184) = v3 + 1.0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(a2 + 176) = Current;
  v5 = *(a2 + 192);
  v6 = Current + *(a2 + 184);

  CFRunLoopTimerSetNextFireDate(v5, v6);
}

void sub_19B6DB848(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 124);
  if (v3)
  {
    v4 = *(a1 + 152) / v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(a1 + 176);
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v6 = Current - v5;
  v7 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 120);
    v9 = *(a1 + 124);
    v10 = *(a1 + 160);
    v11 = *(a1 + 168);
    v12 = *(a1 + 128);
    v13 = *(a1 + 132);
    v14 = *(a1 + 136);
    v15 = *(a1 + 134);
    v16 = *(a1 + 144);
    *buf = 134351616;
    v30 = v6;
    v31 = 1026;
    v32 = v8;
    v33 = 1026;
    v34 = v9;
    v35 = 2050;
    v36 = v4;
    v37 = 2050;
    v38 = v10;
    v39 = 2050;
    v40 = v11;
    v41 = 1026;
    v42 = v12;
    v43 = 1026;
    v44 = v13;
    v45 = 2050;
    v46 = v14;
    v47 = 1026;
    v48 = v15;
    v49 = 1026;
    v50 = v16;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Duration,%{public}.3f,Samples,%{public}u,TimeSyncedSamples,%{public}u,MeanLatency,%{public}.6f,MinLatency,%{public}.6f,MaxLatency,%{public}.6f,TimeSyncStatus,%{public}u,Seq,%{public}u,SensorTime,%{public}llu,Status,0x%{public}04x,Version,%{public}d", buf, 0x58u);
  }

  v17 = sub_19B420058();
  if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v20 = *(a1 + 120);
    v21 = *(a1 + 124);
    v22 = *(a1 + 160);
    v23 = *(a1 + 168);
    v24 = *(a1 + 128);
    v25 = *(a1 + 132);
    v26 = *(a1 + 136);
    v27 = *(a1 + 134);
    v28 = *(a1 + 144);
    v18 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::Tracker::logSensorStatistics() const", "CoreLocation: %s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6DBB34(uint64_t a1, const char *a2)
{
  v47[21] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v46[0] = @"precisionType";
  v4 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *(v3 + 88));
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = @"unknown";
  }

  v47[0] = v4;
  v47[1] = v6;
  v46[1] = @"accessoryHardwareModel";
  v46[2] = @"accessoryBudLocation";
  v47[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, *(v3 + 72));
  v46[3] = @"headTrackingClientMode";
  v47[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(v3 + 92));
  v46[4] = @"sessionDuration";
  v47[4] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v8, v9, *(a1 + 48));
  v46[5] = @"delayBTClock";
  v47[5] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v10, v11, *(a1 + 56));
  v46[6] = @"delayTimeSync";
  v47[6] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v12, v13, *(a1 + 64));
  v46[7] = @"timeSyncedSamplesPerSecond";
  v47[7] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v14, v15, *(v3 + 100) / *(a1 + 48));
  v46[8] = @"timeSyncInvalidated";
  v47[8] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v16, *(v3 + 104) != 0);
  v46[9] = @"highLatencySamplesPerMinute";
  v47[9] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, (*(v3 + 108) * 60.0) / *(a1 + 48));
  v46[10] = @"backwardSamplesPerMinute";
  v47[10] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v19, v20, (*(v3 + 112) * 60.0) / *(a1 + 48));
  v46[11] = @"repeatedSamplesPerMinute";
  v47[11] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v21, v22, (*(v3 + 116) * 60.0) / *(a1 + 48));
  v46[12] = @"minLatency";
  v47[12] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v23, v24, *(v3 + 32));
  v46[13] = @"maxLatency";
  v47[13] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v25, v26, *(v3 + 40));
  v46[14] = @"averageLatency";
  v47[14] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v27, v28, *(a1 + 72));
  v46[15] = @"minInterval";
  v47[15] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v29, v30, *(v3 + 48));
  v46[16] = @"maxInterval";
  v47[16] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v31, v32, *(v3 + 56));
  v46[17] = @"isAccessoryServiceValid";
  v47[17] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v33, *(v3 + 96));
  v46[18] = @"hasValidConfig";
  v47[18] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v34, *(v3 + 98));
  v46[19] = @"isBothBudsInEar";
  v47[19] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v35, *(v3 + 97));
  v46[20] = @"isIMUInvalid";
  v47[20] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v36, *(v3 + 99));
  v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, v47, v46, 21);
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
  }

  v39 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v45 = v38;
    _os_log_impl(&dword_19B41C000, v39, OS_LOG_TYPE_DEFAULT, "[AccessoryDeviceMotion] Sending analytics: \n%{private}@", buf, 0xCu);
  }

  v40 = sub_19B420058();
  if (*(v40 + 160) > 1 || *(v40 + 164) > 1 || *(v40 + 168) > 1 || *(v40 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E28A20);
    }

    v41 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLAccessoryDeviceMotion::Tracker::stop()_block_invoke", "CoreLocation: %s\n", v41);
    if (v41 != buf)
    {
      free(v41);
    }
  }

  v42 = *MEMORY[0x1E69E9840];
  return v38;
}

os_log_t sub_19B6DBFD4()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B6DC004(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 280);
  v3 = rint(v2 * 1000000.0);
  if (v2 < 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return sub_19B4238F4(*(v1 + 32), v4);
}

uint64_t sub_19B6DC030(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 280);
  v3 = rint(v2 * 1000000.0);
  if (v2 < 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return sub_19B4238F4(*(v1 + 32), v4);
}

uint64_t sub_19B6DC08C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 280);
  v3 = rint(v2 * 1000000.0);
  if (v2 < 0.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return sub_19B4238F4(*(v1 + 32), v4);
}

os_log_t sub_19B6DC484()
{
  result = os_log_create("com.apple.locationd.Motion", "Calorimetry");
  qword_1EAFE2830 = result;
  return result;
}

uint64_t sub_19B6DC4B4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_19B4C50B4(result, a4);
  }

  return result;
}

void sub_19B6DC514(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_19B6DD30C(void *a1)
{
  a1[32] = &unk_1F0E32728;
  sub_19B42A568(a1 + 35);
  a1[22] = &unk_1F0E32728;
  sub_19B42A568(a1 + 25);
  a1[11] = &unk_1F0E32728;
  sub_19B42A568(a1 + 14);
  a1[2] = &unk_1F0E32728;
  sub_19B42A568(a1 + 5);
  return a1;
}

void sub_19B6DD3D0(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, unsigned int a5, unsigned int a6, unsigned int a7, _DWORD *a8, char a9)
{
  v39 = *MEMORY[0x1E69E9840];
  *a1 = *a2;
  *(a1 + 4) = *a3;
  *(a1 + 12) = *a4;
  *(a1 + 8) = 0;
  *(a1 + 24) = a5;
  sub_19B43FA98((a1 + 16));
  *(a1 + 96) = a6;
  sub_19B43FA98((a1 + 88));
  *(a1 + 160) = a7 / a5;
  *(a1 + 168) = *a8;
  *(a1 + 184) = a6;
  sub_19B43FA98((a1 + 176));
  *(a1 + 248) = a9;
  if (a9)
  {
    v14 = vcvtad_u64_f64(*a1 * 0.25);
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 264) = v14;
  sub_19B43FA98((a1 + 256));
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29AC0);
  }

  v15 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v16 = *a1;
    v17 = *(a1 + 4);
    v18 = *(a1 + 12);
    v19 = *(a1 + 160);
    v20 = *(a1 + 168);
    *buf = 134219008;
    v30 = v16;
    v31 = 2048;
    v32 = v17;
    v33 = 2048;
    v34 = v18;
    v35 = 1024;
    v36 = v19;
    v37 = 2048;
    v38 = v20;
    _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_DEBUG, "sample rate (%.3f) observation rate (%.3f) observation threshold (%.3f) deviation count threshold (%d) standard deviation threshold (%.3f)", buf, 0x30u);
  }

  v21 = sub_19B420058();
  if (*(v21 + 160) > 1 || *(v21 + 164) > 1 || *(v21 + 168) > 1 || *(v21 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29AC0);
    }

    v24 = *a1;
    v25 = *(a1 + 4);
    v26 = *(a1 + 12);
    v27 = *(a1 + 160);
    v28 = *(a1 + 168);
    v22 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLThreshold::init(const float &, const float &, const float &, const unsigned int, const unsigned int, const unsigned int, const float &, const BOOL)", "CoreLocation: %s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6DD6C8(uint64_t a1, float *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  ++*(a1 + 8);
  if (*(a1 + 248) == 1 && *(a1 + 320) < *(a1 + 264))
  {
    sub_19B4200DC(a1 + 256, a2);
  }

  sub_19B4200DC(a1 + 16, a2);
  if (*(a1 + 8) % *(a1 + 24))
  {
    goto LABEL_10;
  }

  v4 = *(a1 + 80);
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = *(a1 + 32) / v4;
  }

  *buf = v6;
  sub_19B4200DC(a1 + 88, buf);
  v7 = *(a1 + 152);
  if (v7)
  {
    v5 = *(a1 + 104) / v7;
  }

  v37[0] = (*a2 - v5) * (*a2 - v5);
  sub_19B4200DC(a1 + 176, v37);
  if (*(a1 + 8) % (*a1 / *(a1 + 4)))
  {
    goto LABEL_10;
  }

  v10 = *(a1 + 152);
  v11 = 0.0;
  v12 = 0.0;
  if (v10)
  {
    v12 = *(a1 + 104) / v10;
  }

  v13 = *(a1 + 320);
  if (v13)
  {
    v11 = *(a1 + 272) / v13;
  }

  v14 = vabds_f32(v12, v11);
  v15 = *(a1 + 240);
  if (v15)
  {
    v16 = *(a1 + 192) / v15;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = *(a1 + 164);
  if (v14 <= *(a1 + 12))
  {
    if (!v17)
    {
LABEL_10:
      result = 0;
      goto LABEL_11;
    }

    v18 = -1;
  }

  else
  {
    v18 = 1;
  }

  result = 0;
  v19 = v18 + v17;
  *(a1 + 164) = v19;
  if (v19 > *(a1 + 160) && sqrtf(v16) != 0.0)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29AC0);
    }

    v20 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 320);
      if (v21)
      {
        v22 = (*(a1 + 272) / v21);
      }

      else
      {
        v22 = 0.0;
      }

      v23 = *(a1 + 12);
      v24 = *a2;
      v25 = *(a1 + 240);
      if (v25)
      {
        v26 = *(a1 + 192) / v25;
      }

      else
      {
        v26 = 0.0;
      }

      v27 = *(a1 + 164);
      *buf = 134219008;
      v48 = v23;
      v49 = 2048;
      v50 = v24;
      v51 = 2048;
      v52 = v22;
      v53 = 2048;
      v54 = sqrtf(fabsf(v26));
      v55 = 1024;
      v56 = v27;
      _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_DEBUG, "threshold (%f) was exceeded with observed value (%f) and base value (%f) and standard deviation (%f) and count of (%d)", buf, 0x30u);
    }

    v28 = sub_19B420058();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29AC0);
      }

      v29 = *(a1 + 320);
      if (v29)
      {
        v30 = (*(a1 + 272) / v29);
      }

      else
      {
        v30 = 0.0;
      }

      v31 = *(a1 + 12);
      v32 = *a2;
      v33 = *(a1 + 240);
      if (v33)
      {
        v34 = *(a1 + 192) / v33;
      }

      else
      {
        v34 = 0.0;
      }

      v35 = *(a1 + 164);
      v37[1] = 3.8524e-34;
      v38 = v31;
      v39 = 2048;
      v40 = v32;
      v41 = 2048;
      v42 = v30;
      v43 = 2048;
      v44 = sqrtf(fabsf(v34));
      v45 = 1024;
      v46 = v35;
      v36 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLThreshold::update(const float &)", "CoreLocation: %s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    result = 1;
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B6DDB14(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 320);
    if (v3)
    {
      v4 = *(a1 + 272) / v3;
    }

    else
    {
      v4 = 0.0;
    }

    v6 = v4;
    *(a1 + 8) = 0;
    sub_19B43FA98((a1 + 16));
    sub_19B43FA98((a1 + 88));
    *(a1 + 164) = 0;
    sub_19B43FA98((a1 + 176));
    return sub_19B6DDBD0(a1, &v6);
  }

  else
  {
    *(a1 + 8) = 0;
    sub_19B43FA98((a1 + 16));
    sub_19B43FA98((a1 + 88));
    *(a1 + 164) = 0;
    sub_19B43FA98((a1 + 176));

    sub_19B43FA98((a1 + 256));
  }

  return result;
}

float sub_19B6DDBD0(void *a1, float *a2)
{
  sub_19B43FA98(a1 + 32);
  while (a1[40] < a1[33])
  {
    result = sub_19B4200DC((a1 + 32), a2);
  }

  return result;
}

uint64_t sub_19B6DDEC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5, float a6)
{
  v29 = *MEMORY[0x1E69E9840];
  *a1 = -1082130432;
  *(a1 + 4) = 0;
  *(a1 + 8) = a5;
  *(a1 + 12) = a6;
  *(a1 + 16) = 5;
  *(a1 + 24) = &unk_1F0E32728;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_1F0E32CE8;
  *(a1 + 104) = a3;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = &unk_1F0E32728;
  *(a1 + 192) = a2;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 256) = a4;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29AE0);
  }

  v10 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 12);
    *buf = 134219008;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 2048;
    v24 = a2;
    v25 = 2048;
    v26 = a3;
    v27 = 1024;
    v28 = a4;
    _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "mean (%f) scale (%f) variance sample size (%zd) max sample length (%zd), coverAttached (%d)", buf, 0x30u);
  }

  v13 = sub_19B420058();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29AE0);
    }

    v17 = *(a1 + 8);
    v18 = *(a1 + 12);
    v14 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "CLCompassAccuracy::CLCompassAccuracy(const float, const float, const size_t, const size_t, const BOOL)", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19B6DE1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12[23] = v14;
  sub_19B42A568(v12 + 26);
  v12[12] = a11;
  sub_19B42A568(v13);
  v12[3] = a12;
  sub_19B42A568(v12 + 6);
  _Unwind_Resume(a1);
}

void *sub_19B6DE210(void *a1)
{
  *a1 = &unk_1F0E32CE8;
  sub_19B42A568(a1 + 5);
  return a1;
}

void *sub_19B6DE254(void *a1)
{
  a1[23] = &unk_1F0E32728;
  sub_19B42A568(a1 + 26);
  a1[12] = &unk_1F0E32CE8;
  sub_19B42A568(a1 + 17);
  a1[3] = &unk_1F0E32728;
  sub_19B42A568(a1 + 6);
  return a1;
}

void sub_19B6DE2F0(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v24 = *MEMORY[0x1E69E9840];
  *a1 = -1082130432;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 32) = a2;
  sub_19B43FA98((a1 + 24));
  *(a1 + 104) = a3;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29AE0);
  }

  v8 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 12);
    *buf = 134218752;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_DEBUG, "mean (%f) scale (%f) variance sample size (%zd) max sample length (%zd)", buf, 0x2Au);
  }

  v11 = sub_19B420058();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29AE0);
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 12);
    v12 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompassAccuracy::init(const float, const float, const size_t, const size_t)", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

float sub_19B6DE53C(uint64_t a1, float a2, float a3)
{
  v9 = a3;
  if (*(a1 + 4) == 1)
  {
    v8 = (a2 - *(a1 + 8)) * (a2 - *(a1 + 8));
    sub_19B4200DC(a1 + 24, &v8);
    v4 = *(a1 + 88);
    if (v4)
    {
      v5 = *(a1 + 40) / v4;
    }

    else
    {
      v5 = 0.0;
    }

    v7 = v5;
    sub_19B6DE5C8(a1 + 96, &v7);
  }

  return sub_19B4200DC(a1 + 184, &v9);
}

void sub_19B6DE5C8(uint64_t a1, float *a2)
{
  sub_19B420408(a1 + 40, a2);
  v4 = *(a1 + 80);
  if (v4 > *(a1 + 8))
  {
    ++*(a1 + 72);
    *(a1 + 80) = v4 - 1;
    sub_19B420490(a1 + 40, 1);
  }

  if (*a2 <= *(a1 + 16))
  {
    v5 = *(a1 + 24) + 1;
    *(a1 + 24) = v5;
    if (v5 >= *(a1 + 8))
    {

      sub_19B6DE9DC(a1);
    }
  }

  else
  {
    *(a1 + 16) = *a2;
    *(a1 + 24) = 0;
  }
}

float sub_19B6DE674(uint64_t a1)
{
  sub_19B43FA98((a1 + 24));
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  *(a1 + 176) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 152);
      v2 = (*(a1 + 144) + 8);
      *(a1 + 144) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 1024;
LABEL_7:
    *(a1 + 168) = v6;
  }

  result = *(a1 + 128);
  *(a1 + 112) = result;
  *(a1 + 120) = 0;
  return result;
}

float sub_19B6DE704(uint64_t a1, int a2)
{
  if (a2 < 1)
  {
    return *a1;
  }

  v3 = *(a1 + 16) - a2;
  if (v3 > 4)
  {
    v4 = 40.0;
  }

  else
  {
    v4 = flt_19B7BC498[v3];
  }

  if (*(a1 + 4) == 1)
  {
    v5 = sub_19B6DE818(a1);
    if (*(a1 + 8) >= 70.0)
    {
      v6 = v4 + 10.0;
    }

    else
    {
      v6 = v4;
    }

    if (v5 < v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = v5;
    }
  }

  if (*(a1 + 256) == 1)
  {
    v7 = v4 + sub_19B6DE8CC(a1);
    v4 = -1.0;
    if (v7 > 0.0)
    {
      v4 = 10.0;
      if (v7 > 10.0)
      {
        v4 = 15.0;
        if (v7 > 15.0)
        {
          v4 = 20.0;
          if (v7 > 20.0)
          {
            v4 = 25.0;
            if (v7 > 25.0)
            {
              v4 = 30.0;
              if (v7 > 30.0)
              {
                if (v7 <= 35.0)
                {
                  return 35.0;
                }

                else
                {
                  return 40.0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

float sub_19B6DE818(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = sqrtf(*(a1 + 112)) / sqrt(v1);
  }

  else
  {
    v2 = 0.0;
  }

  v3 = v2 * *(a1 + 12);
  result = 10.0;
  if (v3 >= 15.0)
  {
    result = 15.0;
    if (v3 >= 30.0)
    {
      result = 20.0;
      if (v3 >= 45.0)
      {
        result = 25.0;
        if (v3 >= 60.0)
        {
          result = 30.0;
          if (v3 >= 75.0)
          {
            if (v3 >= 90.0)
            {
              return 40.0;
            }

            else
            {
              return 35.0;
            }
          }
        }
      }
    }
  }

  return result;
}

float sub_19B6DE8CC(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1 && (v2 = *(a1 + 248), v2 >= v1))
  {
    return sub_19B6DE8FC(*(a1 + 200) / v2, 5.0);
  }

  else
  {
    return 0.0;
  }
}

float sub_19B6DE8FC(float a1, float a2)
{
  if (a2 > a1)
  {
    return 180.0;
  }

  v5 = -a2 / a1;
  v6 = acosf(v5);
  v7 = sinf(v6);
  return fabsf(atan2f(v7 * a2, a1 + (a2 * v5))) * 57.2957795;
}

void sub_19B6DE978(void *a1)
{
  *a1 = &unk_1F0E32CE8;
  sub_19B42A568(a1 + 5);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6DE9DC(uint64_t result)
{
  v1 = *(result + 72);
  v2 = *(result + 48);
  v3 = *(result + 56);
  v4 = (v2 + 8 * (v1 >> 10));
  if (v3 == v2)
  {
    v6 = 0;
    v5 = *(result + 72) & 0x3FFLL;
  }

  else
  {
    v5 = *(result + 72) & 0x3FFLL;
    v6 = *v4 + 4 * v5;
  }

  v7 = *(result + 32);
  *(result + 16) = v7;
  v8 = *(result + 80);
  *(result + 24) = v8 - 1;
  v9 = v8 + v1;
  v10 = (v2 + 8 * (v9 >> 10));
  v11 = v9 & 0x3FF;
  v12 = v4;
LABEL_5:
  v13 = v6;
  while (1)
  {
    v14 = v3 == v2 ? 0 : *v10 + 4 * v11;
    v15 = v13 < v14 && v12 == v10;
    if (v12 >= v10 && !v15)
    {
      return result;
    }

    v16 = *v13;
    if (*v13 > v7)
    {
      *(result + 16) = v16;
      if (v3 == v2)
      {
        v17 = 0;
      }

      else
      {
        v17 = *v4 + 4 * v5;
      }

      if (v13 == v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = ((v12 - v4) << 7) + ((v6 - *v12) >> 2) - ((v17 - *v4) >> 2);
      }

      *(result + 24) = v18;
      v7 = v16;
    }

    ++v13;
    v6 += 4;
    if (*v12 + 4096 == v6)
    {
      v19 = *(v12 + 1);
      v12 += 8;
      v6 = v19;
      goto LABEL_5;
    }
  }
}

uint64_t sub_19B6DEAF0(float *a1, float *a2, float *a3)
{
  v4 = a2[4];
  v5 = fabsf(v4);
  v6 = a2[2];
  if (v5 <= fabsf(v6))
  {
    v7 = 1;
    v8 = 0.0;
  }

  else
  {
    v7 = v5 <= fabsf(a2[3]);
    if (v4 <= 0.0)
    {
      v7 = 1;
    }

    v8 = 0.0625;
    if (v7)
    {
      v8 = 0.0;
    }
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = sqrtf(((v10 * v10) + (v9 * v9)) + (v11 * v11));
  if (v12 > 0.0)
  {
    v9 = v9 / v12;
    v10 = v10 / v12;
    v11 = v11 / v12;
  }

  v13 = (v10 + (v9 * 0.0)) + (v11 * 0.0);
  v14 = v10 * 0.0;
  v15 = ((v10 * 0.0) - v9) + (v11 * 0.0);
  v16 = v11 + (v14 + (v9 * 0.0));
  v17 = a2[3];
  v18 = sqrtf(((v17 * v17) + (v6 * v6)) + (v4 * v4));
  if (v18 > 0.0)
  {
    v6 = v6 / v18;
    v17 = v17 / v18;
    v4 = v4 / v18;
  }

  v19 = (v17 + (v6 * 0.0)) + (v4 * 0.0);
  v20 = v17 * 0.0;
  v21 = ((v17 * 0.0) - v6) + (v4 * 0.0);
  v22 = v4 + (v20 + (v6 * 0.0));
  v23 = (v15 * v22) - (v16 * v21);
  v24 = (v16 * v19) - (v13 * v22);
  v25 = (v13 * v21) - (v15 * v19);
  v26 = sqrtf(((v24 * v24) + (v23 * v23)) + (v25 * v25));
  if (v26 > 0.0)
  {
    v23 = v23 / v26;
    v24 = v24 / v26;
    v25 = v25 / v26;
  }

  v27 = -v22;
  v28 = (v21 * v25) - (v22 * v24);
  v29 = (v22 * v23) - (v19 * v25);
  v30 = (v19 * v24) - (v21 * v23);
  v31 = sqrtf(((v29 * v29) + (v28 * v28)) + (v30 * v30));
  if (v31 > 0.0)
  {
    v28 = v28 / v31;
    v29 = v29 / v31;
    v30 = v30 / v31;
  }

  v32 = sqrtf(((v21 * v21) + (v19 * v19)) + (v22 * v22));
  if (v32 <= 0.0)
  {
    v33 = v27;
  }

  else
  {
    v33 = v27 / v32;
  }

  if (!v7)
  {
    v39 = ((v29 * 0.0) + (v28 * v8)) + (v30 * 0.0);
    v40 = ((v24 * 0.0) + (v23 * v8)) + (v25 * 0.0);
    if (v39 != 0.0 || v40 != 0.0)
    {
      v38 = atan2f(-v40, v39) * 57.2957795;
      if (v38 >= 0.0)
      {
          ;
        }

        goto LABEL_43;
      }

        ;
      }

      goto LABEL_37;
    }

    return 0;
  }

  if (v30 != 0.0 || (v34 = 0.0, v25 != 0.0))
  {
    v34 = atan2f(v25, v30);
  }

  v35 = __sincosf_stret(v34);
  if (((v25 * v35.__sinval) + (v35.__cosval * v30)) == 0.0 && v33 == 0.0)
  {
    return 0;
  }

  v36 = (v24 * v35.__cosval) - (v35.__sinval * v29);
  v37 = (v23 * v35.__cosval) - (v35.__sinval * v28);
  if (v36 == 0.0 && v37 == 0.0)
  {
    return 0;
  }

  v38 = (-atan2f(v37, v36) - v34) * 57.2957795;
  if (v38 >= 0.0)
  {
      ;
    }

    goto LABEL_43;
  }

    ;
  }

LABEL_37:
  v38 = v38 + 360.0;
LABEL_43:
  *a3 = v38;
  return 1;
}

uint64_t sub_19B6DEE64()
{
  result = sub_19B421620();
  if ((result & 0x200) != 0)
  {
    operator new();
  }

  return result;
}

void *sub_19B6DEF28(void *a1)
{
  *a1 = &unk_1F0E32C38;
  a1[4] = &unk_1F0E32C98;
  v2 = a1[8];
  if (v2)
  {
    sub_19B41FFEC(v2);
  }

  return sub_19B674784(a1);
}

void sub_19B6DEFB0(void *a1)
{
  sub_19B6DEF28(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6DEFE8(uint64_t a1)
{
  sub_19B6DEF28((a1 - 32));

  JUMPOUT(0x19EAE76F0);
}

double sub_19B6DF024@<D0>(void *a1@<X8>)
{
  v4 = 0;
  v3 = 0.0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (qword_1EAFE3A50 != -1)
  {
    dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
  }

  if (sub_19B6E7800(qword_1EAFE3A60, &v4, &v3))
  {
    result = v3;
    *a1 = v3;
    *(a1 + 8) = v4;
  }

  return result;
}

uint64_t sub_19B6DF0AC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (qword_1EAFE3A50 != -1)
  {
    dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
  }

  v2 = qword_1EAFE3A60;

  return sub_19B6E8350(v2, a1);
}

void sub_19B6DF11C()
{
  if (qword_1EAFE3A50 != -1)
  {
    dispatch_once(&qword_1EAFE3A50, &unk_1F0E29BC0);
  }

  v1 = qword_1EAFE3A60;

  sub_19B6E89E0(v1);
}

void sub_19B6DF170(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
  }

  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
  {
    v4 = *(a2 + 1);
    *buf = 67240192;
    v10 = v4;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_INFO, "pong,%{public}u", buf, 8u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E287A0);
    }

    v8 = *(a2 + 1);
    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLEclipseNotifier::visitPong(const CMEclipseReport::Pong *)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6DF340(uint64_t a1, __int128 *a2)
{
  v8 = 0;
  v4 = *(a1 + 48);
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v7 = a2[2];
  LODWORD(v8) = *(a2 + 12);
  return sub_19B41DF08(a1, 1, &v4, 64);
}

uint64_t sub_19B6DF398(uint64_t a1, __int128 *a2)
{
  v8 = 0;
  v4 = *(a1 + 16);
  v2 = a2[1];
  v5 = *a2;
  v6 = v2;
  v7 = a2[2];
  LODWORD(v8) = *(a2 + 12);
  return sub_19B41DF08(a1 - 32, 1, &v4, 64);
}

uint64_t sub_19B6DF3F8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3 = *(a1 + 48);
  LOWORD(v4) = *(a2 + 1);
  return sub_19B4455DC(a1, 2, &v3, 16);
}

os_log_t sub_19B6DF440()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

void sub_19B6DF494(uint64_t a1, double *a2, char a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  *a1 = *a2;
  *&v5 = 1.0 / v5;
  *(a1 + 8) = LODWORD(v5);
  v6 = (a1 + 8);
  *(a1 + 12) = 0;
  *(a1 + 13) = a3;
  *(a1 + 14) = 0;
  *(a1 + 22) = 0u;
  *(a1 + 38) = 0;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = &unk_1F0E33E90;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_1F0E33E90;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_19B6DDEC0(a1 + 112, 10, 30, a4, 61.056, 2.0);
  *(a1 + 376) = 0xF00000000;
  *(a1 + 384) = 15;
  v7 = *v6;
  v8 = *v6;
  v9 = vcvtad_u64_f64(v8 * 0.125);
  *(a1 + 392) = &unk_1F0E32BF8;
  *(a1 + 400) = v9;
  *(a1 + 408) = &unk_1F0E32728;
  *(a1 + 416) = v9;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_1F0E32728;
  *(a1 + 488) = v9;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 552) = &unk_1F0E32728;
  *(a1 + 560) = v9;
  *(a1 + 612) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 628) = 0xBF8000003F000000;
  *(a1 + 636) = -1082130432;
  *(a1 + 640) = &unk_1F0E33978;
  *(a1 + 648) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 704) = a1 + 712;
  *(a1 + 728) = &unk_1F0E33978;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 792) = a1 + 800;
  v10 = vcvtad_u64_f64(v8 * 0.05);
  *(a1 + 816) = &unk_1F0E32BF8;
  *(a1 + 824) = v10;
  *(a1 + 832) = &unk_1F0E32728;
  *(a1 + 840) = v10;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0;
  *(a1 + 904) = &unk_1F0E32728;
  *(a1 + 912) = v10;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0;
  *(a1 + 976) = &unk_1F0E32728;
  *(a1 + 984) = v10;
  *(a1 + 1040) = 0;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1048) = &unk_1F0E32BF8;
  *(a1 + 1056) = v10;
  *(a1 + 1064) = &unk_1F0E32728;
  *(a1 + 1072) = v10;
  *(a1 + 1128) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1136) = &unk_1F0E32728;
  *(a1 + 1144) = v10;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1208) = &unk_1F0E32728;
  *(a1 + 1216) = v10;
  *(a1 + 1272) = 0;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1224) = 0u;
  *(a1 + 1280) = &unk_1F0E33E90;
  *(a1 + 1288) = 0;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = &unk_1F0E33E90;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = 0;
  *(a1 + 1328) = &unk_1F0E33E90;
  *(a1 + 1336) = 0;
  *(a1 + 1344) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1424) = 0xBFF0000000000000;
  v11 = vcvtad_u64_f64(v8 * 0.5);
  *(a1 + 1432) = &unk_1F0E32728;
  *(a1 + 1440) = v11;
  *(a1 + 1496) = 0;
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1504) = &unk_1F0E32728;
  *(a1 + 1512) = v11;
  *(a1 + 1568) = 0;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1576) = &unk_1F0E32728;
  *(a1 + 1584) = vcvtas_u32_f32(v7);
  *(a1 + 1656) = 0;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1592) = 0u;
  *(a1 + 1608) = 0u;
  *(a1 + 1664) = &unk_1F0E32728;
  *(a1 + 1704) = 0u;
  *(a1 + 1720) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1736) = &unk_1F0E32728;
  *(a1 + 1804) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1824) = &unk_1F0E32728;
  *(a1 + 1896) = 0;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1904) = &unk_1F0E32728;
  *(a1 + 1960) = 0u;
  *(a1 + 1976) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1912) = 0u;
  *(a1 + 1992) = &unk_1F0E32728;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2016) = 0u;
  *(a1 + 2000) = 0u;
  *(a1 + 2064) = &unk_1F0E32728;
  *(a1 + 2132) = 0u;
  *(a1 + 2104) = 0u;
  *(a1 + 2120) = 0u;
  *(a1 + 2072) = 0u;
  *(a1 + 2088) = 0u;
  *(a1 + 2152) = &unk_1F0E32728;
  *(a1 + 2224) = 0;
  *(a1 + 2208) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2232) = &unk_1F0E32728;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2312) = &unk_1F0E32728;
  *(a1 + 2320) = vcvtad_u64_f64(v8 * 0.2);
  *(a1 + 2376) = 0;
  *(a1 + 2344) = 0u;
  *(a1 + 2360) = 0u;
  *(a1 + 2328) = 0u;
  __asm { FMOV            V8.2S, #-1.0 }

  *(a1 + 2384) = -_D8;
  if (*(a1 + 13) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_19B6E0D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v25)
  {
    sub_19B41FFEC(v25);
    if (!v24)
    {
LABEL_3:
      if (!v23)
      {
LABEL_8:
        v22[289] = a11;
        sub_19B42A568(v22 + 292);
        sub_19B6DD30C(v22 + 247);
        sub_19B6DD30C(v22 + 206);
        v22[197] = a12;
        sub_19B42A568(v22 + 200);
        v22[188] = a13;
        sub_19B42A568(v22 + 191);
        v22[179] = a14;
        sub_19B42A568(v22 + 182);
        sub_19B42AC20(a15);
        sub_19B42AC20(a16);
        sub_19B6E0EC4(a22);
        sub_19B42AC20(a17);
        sub_19B6DE254(v22 + 14);
        _Unwind_Resume(a1);
      }

LABEL_7:
      sub_19B41FFEC(v23);
      goto LABEL_8;
    }
  }

  else if (!v24)
  {
    goto LABEL_3;
  }

  sub_19B41FFEC(v24);
  if (!v23)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_19B6E0EC4(uint64_t a1)
{
  *(a1 + 104) = &unk_1F0E33978;
  sub_19B654634(a1 + 168, *(a1 + 176));
  sub_19B6E3228(a1 + 120);
  *(a1 + 16) = &unk_1F0E33978;
  sub_19B654634(a1 + 80, *(a1 + 88));
  sub_19B6E3228(a1 + 32);
  return a1;
}

void *sub_19B6E0F50(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    (*(*v2 + 8))(v2);
    a1[13] = 0;
  }

  a1[289] = &unk_1F0E32728;
  sub_19B42A568(a1 + 292);
  sub_19B6DD30C(a1 + 247);
  sub_19B6DD30C(a1 + 206);
  a1[197] = &unk_1F0E32728;
  sub_19B42A568(a1 + 200);
  a1[188] = &unk_1F0E32728;
  sub_19B42A568(a1 + 191);
  a1[179] = &unk_1F0E32728;
  sub_19B42A568(a1 + 182);
  sub_19B42AC20(a1 + 131);
  sub_19B42AC20(a1 + 102);
  sub_19B6E0EC4((a1 + 78));
  sub_19B42AC20(a1 + 49);
  sub_19B6DE254(a1 + 14);
  return a1;
}

BOOL sub_19B6E107C(float32x2_t *a1, uint64_t *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v55 = &unk_1F0E33E90;
  v56 = *a2;
  v57 = *(a2 + 2);
  v3 = a1[48].i32[0];
  if (v3)
  {
    a1[48].i32[0] = v3 - 1;
    if (v3 == 1)
    {
      a1[47].i32[0] = 0;
    }

    goto LABEL_72;
  }

  sub_19B4200DC(&a1[51], &v56);
  sub_19B4200DC(&a1[60], &v56 + 1);
  sub_19B4200DC(&a1[69], &v57);
  v4 = a1[59];
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = a1[53].f32[0] / v4;
  }

  v7 = a1[68];
  if (v7)
  {
    v5 = a1[62].f32[0] / v7;
  }

  v8 = a1[77];
  if (v8)
  {
    v9 = a1[71].f32[0] / v8;
  }

  else
  {
    v9 = 0.0;
  }

  a1[161].f32[0] = v6;
  a1[161].f32[1] = v5;
  a1[162].f32[0] = v9;
  a1[164].f32[0] = v6;
  a1[164].f32[1] = v5;
  a1[165].f32[0] = v9;
  a1[167].f32[0] = v6;
  a1[167].f32[1] = v5;
  a1[168].f32[0] = v9;
  if (a1[1].i8[5] == 1)
  {
    *buf = sqrtf(((a1[7].f32[1] * a1[7].f32[1]) + (a1[7].f32[0] * a1[7].f32[0])) + (a1[8].f32[0] * a1[8].f32[0]));
    sub_19B4200DC(&a1[197], buf);
    v10.n128_f32[0] = sub_19B4200DC(&a1[289], buf);
  }

  else
  {
    *buf = sqrtf(((a1[10].f32[1] * a1[10].f32[1]) + (a1[10].f32[0] * a1[10].f32[0])) + (a1[11].f32[0] * a1[11].f32[0]));
    sub_19B4200DC(&a1[179], buf);
    v11 = a1[187];
    if (v11)
    {
      v12 = a1[181].f32[0] / v11;
    }

    else
    {
      v12 = 0.0;
    }

    v58 = (*buf - v12) * (*buf - v12);
    v10.n128_f32[0] = sub_19B4200DC(&a1[188], &v58);
  }

  if (a1[1].i8[6] == 1)
  {
    v13 = a1[169];
    a1[161] = vsub_f32(a1[161], v13);
    v14 = a1[170].f32[0];
    a1[162].f32[0] = a1[162].f32[0] - v14;
    a1[164] = vsub_f32(a1[164], v13);
    a1[165].f32[0] = a1[165].f32[0] - v14;
    goto LABEL_72;
  }

  v16 = a1 + 13;
  v15 = a1[13];
  *buf = 0xBFF0000000000000;
  (*(**&v15 + 32))(v15, &v55, a1 + 2, buf, v10);
  ++a1[47].i32[0];
  (*(**v16 + 48))(*v16, a1 + 169, &a1[170] + 4);
  (*(**v16 + 56))(*v16, a1 + 160, a1 + 163, a1 + 2);
  (*(**v16 + 64))(*v16, a1 + 166, a1 + 2);
  if (!(*(**&a1[13] + 72))())
  {
    goto LABEL_70;
  }

  if (a1[1].i8[5] == 1 && a1[170].i32[1] < 4)
  {
    v17 = sqrtf(((a1[161].f32[1] * a1[161].f32[1]) + (a1[161].f32[0] * a1[161].f32[0])) + (a1[162].f32[0] * a1[162].f32[0]));
    if (v17 > 500.0)
    {
LABEL_51:
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v33 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
      {
        v34 = sqrtf(((a1[161].f32[1] * a1[161].f32[1]) + (a1[161].f32[0] * a1[161].f32[0])) + (a1[162].f32[0] * a1[162].f32[0]));
        *buf = 134217984;
        *&buf[4] = v34;
        _os_log_impl(&dword_19B41C000, v33, OS_LOG_TYPE_INFO, "magnitude max threshold exceeded (%+.3f), resetting calibration", buf, 0xCu);
      }

      v35 = sub_19B420058();
      if (*(v35 + 160) > 1 || *(v35 + 164) > 1 || *(v35 + 168) > 1 || *(v35 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
        }

        v36 = sqrtf(((a1[161].f32[1] * a1[161].f32[1]) + (a1[161].f32[0] * a1[161].f32[0])) + (a1[162].f32[0] * a1[162].f32[0]));
        v58 = 3.852e-34;
        v59 = v36;
        v37 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompassCalculator::updateInterferenceChecks()", "CoreLocation: %s\n", v37);
        if (v37 != buf)
        {
          free(v37);
        }
      }

      (*(**&a1[13] + 24))(*&a1[13]);
      a1[48].i32[0] = a1[47].i32[1];
      v32 = -1065353216;
LABEL_64:
      a1[14].i32[0] = v32;
      goto LABEL_70;
    }

LABEL_65:
    *buf = v17;
    sub_19B6DD6C8(&a1[206], buf);
    if (a1[1].i8[5] == 1)
    {
      if (!sub_19B6E2A48(a1))
      {
        goto LABEL_70;
      }
    }

    else if (!sub_19B6E29D8(a1))
    {
      goto LABEL_70;
    }

    v38 = sub_19B6CFA04(&a1[160], &a1[9]) * -57.2957795 + 90.0;
    *buf = v38;
    sub_19B6DD6C8(&a1[247], buf);
    goto LABEL_70;
  }

  v17 = sqrtf(((a1[161].f32[1] * a1[161].f32[1]) + (a1[161].f32[0] * a1[161].f32[0])) + (a1[162].f32[0] * a1[162].f32[0]));
  if (v17 >= 250.0 || v17 > 500.0)
  {
    goto LABEL_51;
  }

  if (a1[1].i8[5])
  {
    goto LABEL_65;
  }

  *buf = v17;
  if (sub_19B6DD6C8(&a1[206], buf))
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
    }

    v19 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      v20 = a1[225];
      v21 = 0.0;
      v22 = 0.0;
      if (v20)
      {
        v22 = (a1[219].f32[0] / v20);
      }

      v23 = a1[207].f32[1];
      v24 = a1[246];
      if (v24)
      {
        v21 = (a1[240].f32[0] / v24);
      }

      *buf = 134218496;
      *&buf[4] = v23;
      v65 = 2048;
      v66 = v22;
      v67 = 2048;
      v68 = v21;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "magnitude threshold exceeded (%f) with (%f) from base value (%f), resetting calibration", buf, 0x20u);
    }

    v25 = sub_19B420058();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v26 = 0.0;
      v27 = 0.0;
      v28 = a1[225];
      if (v28)
      {
        v27 = (a1[219].f32[0] / v28);
      }

      v29 = a1[207].f32[1];
      v30 = a1[246];
      if (v30)
      {
        v26 = (a1[240].f32[0] / v30);
      }

      v58 = 3.8522e-34;
      v59 = v29;
      v60 = 2048;
      v61 = v27;
      v62 = 2048;
      v63 = v26;
      v31 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompassCalculator::updateInterferenceChecks()", "CoreLocation: %s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    (*(**&a1[13] + 24))(*&a1[13]);
    a1[48].i32[0] = a1[47].i32[1];
    v32 = -1073741824;
    goto LABEL_64;
  }

  if (a1[1].i8[5] == 1)
  {
    if (!sub_19B6E2A48(a1))
    {
      goto LABEL_70;
    }
  }

  else if (!sub_19B6E29D8(a1))
  {
    goto LABEL_70;
  }

  v41 = sub_19B6CFA04(&a1[160], &a1[9]) * -57.2957795 + 90.0;
  *buf = v41;
  if (sub_19B6DD6C8(&a1[247], buf) && (*(**&a1[13] + 80))(*&a1[13]))
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
    }

    v42 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
    {
      v43 = a1[266];
      v44 = 0.0;
      v45 = 0.0;
      if (v43)
      {
        v45 = (a1[260].f32[0] / v43);
      }

      v46 = a1[248].f32[1];
      v47 = a1[287];
      if (v47)
      {
        v44 = (a1[281].f32[0] / v47);
      }

      *buf = 134218496;
      *&buf[4] = v46;
      v65 = 2048;
      v66 = v45;
      v67 = 2048;
      v68 = v44;
      _os_log_impl(&dword_19B41C000, v42, OS_LOG_TYPE_INFO, "inclination threshold exceeded (%f) with (%f) from base value (%f), resetting calibration", buf, 0x20u);
    }

    v48 = sub_19B420058();
    if (*(v48 + 160) > 1 || *(v48 + 164) > 1 || *(v48 + 168) > 1 || *(v48 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v49 = 0.0;
      v50 = 0.0;
      v51 = a1[266];
      if (v51)
      {
        v50 = (a1[260].f32[0] / v51);
      }

      v52 = a1[248].f32[1];
      v53 = a1[287];
      if (v53)
      {
        v49 = (a1[281].f32[0] / v53);
      }

      v58 = 3.8522e-34;
      v59 = v52;
      v60 = 2048;
      v61 = v50;
      v62 = 2048;
      v63 = v49;
      v54 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "void CLCompassCalculator::updateInterferenceChecks()", "CoreLocation: %s\n", v54);
      if (v54 != buf)
      {
        free(v54);
      }
    }

    (*(**&a1[13] + 24))(*&a1[13]);
    a1[48].i32[0] = a1[47].i32[1];
    v32 = -1069547520;
    goto LABEL_64;
  }

LABEL_70:
  if ((*(**&a1[13] + 88))(*&a1[13]))
  {
    sub_19B6DDB14(&a1[206], 0);
    sub_19B6DDB14(&a1[247], 0);
  }

LABEL_72:
  result = v3 == 0;
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

float sub_19B6E1C04(uint64_t a1, double *a2)
{
  v2 = (a1 + 1368);
  if (a2[7] == -1.0)
  {
    *(a1 + 1416) = 0;
    *(a1 + 1384) = 0u;
    *(a1 + 1400) = 0u;
    *v2 = 0u;
    *(a1 + 1424) = 0xBFF0000000000000;
    *(a1 + 116) = 0;
    return sub_19B6DE674(a1 + 112);
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 3);
    *(a1 + 1400) = *(a2 + 2);
    *(a1 + 1416) = v5;
    *v2 = v3;
    *(a1 + 1384) = v4;
    *(a1 + 116) = 1;
    *&v3 = a2[6];
    sub_19B6DE2F0(a1 + 112, 10, 30, *&v3, 2.0);
  }

  return result;
}

BOOL sub_19B6E1C70(float *a1, float *a2, float *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v20[0] = 0x3F8000003F800000;
  v18.i64[0] = 0;
  v18.i64[1] = 0x3F80000000000000;
  v15 = sub_19B66C3CC(v20, &v18, v19, v9, v10, v11, v12, v13, v14, a4, a5, a6, a7, a8, 1065353216, 0);
  if (v15)
  {
    *a3 = sub_19B66D564(v18.f32);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t sub_19B6E1D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v130 = *MEMORY[0x1E69E9840];
  v81 = 0.0;
  v78 = &unk_1F0E33E90;
  v79 = *(a1 + 1312);
  v80 = *(a1 + 1320);
  if (*(a1 + 13) == 1 && a1 + 1328 != &v78)
  {
    v79 = *(a1 + 1336);
    v80 = *(a1 + 1344);
  }

  v11 = sub_19B6E1C70(&v78, (a1 + 72), &v81, a4, a5, a6, a7, a8);
  v12 = v81;
  v14 = v81 >= 0.0 && v81 < 360.0;
  v15 = v11 & v14;
  if (v15 == 1)
  {
    *&v16 = *(a1 + 1288);
    DWORD2(v16) = *(a1 + 1296);
    HIDWORD(v16) = *(a1 + 1312);
    *a2 = v16;
    LODWORD(v16) = *(a1 + 1316);
    v17 = *(a1 + 1320);
    *(a2 + 48) = sqrtf(((*&v16 * *&v16) + (*(&v16 + 3) * *(&v16 + 3))) + (v17 * v17));
    *(a2 + 16) = v16;
    *(a2 + 20) = v17;
    *(a2 + 40) = *(a1 + 1364);
    *(a2 + 44) = 0;
    v18 = sub_19B6CFA04((a1 + 1304), (a1 + 72)) * -57.2957795 + 90.0;
    *(a2 + 52) = v18;
    v19 = *(a2 + 48);
    v20 = v18 * 0.0174532925;
    *(a2 + 56) = v19 * cosf(v20);
    *(a2 + 64) = *(a1 + 40);
    *(a2 + 72) = *(a1 + 16);
    *(a2 + 88) = *(a1 + 32);
    if ((*(a1 + 13) & 1) == 0)
    {
      v28 = v12 * 0.0174532925;
      v29 = __sincosf_stret(v28);
      *buf = v29.__cosval;
      sinval = v29.__sinval;
      sub_19B6E2C3C();
    }

    v77 = v12;
    sub_19B6E1C70((a1 + 1280), (a1 + 72), &v77, v21, v22, v23, v24, v25);
    v26 = v77;
    if (*(a1 + 2304) == 1)
    {
      v27 = *(a1 + 2384);
    }

    else
    {
      *(a1 + 2304) = 1;
      v27 = v26;
    }

    v30 = v12;
    if (vabds_f32(v27, v12) > 270.0)
    {
      v30 = dbl_19B7BC5A0[(v27 - v12) > 0.0] + v12;
    }

    v73 = v27 - v12;
    v31 = v27 - v26;
    v32 = v26;
    if (vabds_f32(v27, v26) > 270.0)
    {
      v26 = dbl_19B7BC5A0[v31 > 0.0] + v32;
    }

    v72 = v31;
    v76 = v32;
    v33 = *(a1 + 2376);
    v34 = 0.0;
    v35 = 0.0;
    if (v33 >= 2)
    {
      v36 = (v33 * *(a1 + 2332)) - (*(a1 + 2328) * *(a1 + 2328));
      v35 = v36 / ((v33 - 1) * v33);
      if (v36 < 0.0)
      {
        v35 = 0.0;
      }
    }

    v37 = *(a1 + 1640);
    if (v37)
    {
      v34 = *(a1 + 1592) / v37;
    }

    v38 = (v34 + -0.06) * 0.55 / 2.94000006 + 0.1;
    v39 = fmaxf(fminf(v38, 0.65), 0.1);
    v75 = v35;
    v74 = v34;
    if (v35 >= 0.0015 || v34 >= 6.28318531)
    {
      v41 = *(a1 + 2388) * 0.15 + 0.734964973;
      *(a1 + 2388) = v41;
    }

    else
    {
      v71 = v26;
      v40 = v30;
      v41 = 1.0 - expf(v34 * -0.2);
      *(a1 + 2388) = v41;
      if (v34 <= 1.0)
      {
        v30 = v40;
        v26 = v71;
        if (v34 < 0.06)
        {
          *(a1 + 2388) = 1011052224;
          v41 = 0.011928;
        }
      }

      else
      {
        v41 = 1.0 - expf(v34 * (v34 * -0.2));
        *(a1 + 2388) = v41;
        v30 = v40;
        v26 = v71;
      }
    }

    v42 = v30;
    v43 = (v26 * v39) + (1.0 - v39) * v30;
    v44 = (v41 * v43) + ((1.0 - v41) * v27);
    if (v44 >= 0.0)
    {
        ;
      }
    }

    else
    {
        ;
      }

      v44 = v44 + 360.0;
    }

    *(a1 + 2384) = v44;
    if (*(a1 + 12) == 1)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v45 = v44 - v27;
      v46 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(a1 + 2384);
        v48 = *(a1 + 2388);
        *buf = 134220800;
        v107 = v12;
        v108 = 2048;
        v109 = v76;
        v110 = 2048;
        v111 = v73;
        v112 = 2048;
        v113 = v72;
        v114 = 2048;
        v115 = v42;
        v116 = 2048;
        v117 = v26;
        v118 = 2048;
        v119 = v47;
        v120 = 2048;
        v121 = v48;
        v122 = 2048;
        v123 = v39;
        v124 = 2048;
        v125 = v75;
        v126 = 2048;
        v127 = v74;
        v128 = 2048;
        v129 = v45;
        _os_log_impl(&dword_19B41C000, v46, OS_LOG_TYPE_DEBUG, "rawHeading, %.3f, gyroHeading, %.3f, deltaRaw, %.3f, deltaGyro, %.3f, rawHeadingU, %.3f, gyroHeadingU, %.3f, filteredHeading, %.3f, alpha, %.3f, gamma, %.3f, rotVar, %.5f, rotMag, %.3f, deltaFiltered, %.3f", buf, 0x7Au);
      }

      v49 = sub_19B420058();
      if (*(v49 + 160) > 1 || *(v49 + 164) > 1 || *(v49 + 168) > 1 || *(v49 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
        }

        v50 = *(a1 + 2384);
        v51 = *(a1 + 2388);
        sinval = 3.8533e-34;
        v83 = v12;
        v84 = 2048;
        v85 = v76;
        v86 = 2048;
        v87 = v73;
        v88 = 2048;
        v89 = v72;
        v90 = 2048;
        v91 = v42;
        v92 = 2048;
        v93 = v26;
        v94 = 2048;
        v95 = v50;
        v96 = 2048;
        v97 = v51;
        v98 = 2048;
        v99 = v39;
        v100 = 2048;
        v101 = v75;
        v102 = 2048;
        v103 = v74;
        v104 = 2048;
        v105 = v45;
        v52 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLCompassCalculator::getCompassData(CLMotionTypeCompass &)", "CoreLocation: %s\n", v52);
        if (v52 != buf)
        {
          free(v52);
        }
      }
    }

    v53 = *(a1 + 2384);
    if ((v53 >= 360.0 || v53 < 0.0) && *(a1 + 12) == 1)
    {
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
      }

      v54 = qword_1EAFE2888;
      if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_INFO))
      {
        v55 = *(a1 + 2384);
        *buf = 134217984;
        v107 = v55;
        _os_log_impl(&dword_19B41C000, v54, OS_LOG_TYPE_INFO, "#Warning Heading  %.2f, is not in bound [0 360]", buf, 0xCu);
      }

      v56 = sub_19B420058();
      if (*(v56 + 160) > 1 || *(v56 + 164) > 1 || *(v56 + 168) > 1 || *(v56 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2880 != -1)
        {
          dispatch_once(&qword_1EAFE2880, &unk_1F0E29B20);
        }

        v57 = *(a1 + 2384);
        sinval = 3.852e-34;
        v83 = v57;
        v58 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLCompassCalculator::getCompassData(CLMotionTypeCompass &)", "CoreLocation: %s\n", v58);
        if (v58 != buf)
        {
          free(v58);
        }
      }
    }

    if (*(a1 + 13) == 1)
    {
      if (!sub_19B6E2A48(a1))
      {
        goto LABEL_73;
      }
    }

    else if (!sub_19B6E29D8(a1))
    {
      goto LABEL_73;
    }

    if (((*(**(a1 + 104) + 72))(*(a1 + 104)) & 1) != 0 || *(a1 + 15) == 1)
    {
      v59 = sub_19B6CFA04((a1 + 1280), (a1 + 72)) * -57.2957795 + 90.0;
      v60 = sqrtf(((*(a1 + 1292) * *(a1 + 1292)) + (*(a1 + 1288) * *(a1 + 1288))) + (*(a1 + 1296) * *(a1 + 1296)));
      v61 = v59 * 3.14159265 / 180.0;
      v62 = cosf(v61);
      sub_19B6DE53C(a1 + 112, v59, v60 * v62);
    }

LABEL_73:
    v63 = *(a1 + 2384);
    *(a2 + 24) = v63;
    if (*(a1 + 1424) == -1.0)
    {
      v66 = -1.0;
LABEL_81:
      *(a2 + 28) = v66;
      v67 = *(a1 + 1364);
      if (v67 || (*(a1 + 15) & 1) == 0)
      {
        v68 = 20.0;
        if (*(a1 + 14))
        {
LABEL_86:
          *(a2 + 32) = v68;
          if (*(a1 + 13) == 1 && *(*(a1 + 104) + 184) == 1)
          {
            *(a2 + 32) = v68 + 1.0;
          }

          goto LABEL_89;
        }
      }

      else
      {
        v67 = 1;
      }

      v68 = sub_19B6DE704(a1 + 112, v67);
      goto LABEL_86;
    }

    v64 = *(a1 + 1408) + v63;
    v65 = 360.0;
    if (v64 >= 360.0)
    {
      v65 = -360.0;
    }

    else if (v64 >= 0.0)
    {
      goto LABEL_80;
    }

    v64 = v64 + v65;
LABEL_80:
    v66 = v64;
    goto LABEL_81;
  }

LABEL_89:
  v69 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL sub_19B6E29D8(uint64_t a1)
{
  result = 0;
  v3 = sqrtf(((*(a1 + 84) * *(a1 + 84)) + (*(a1 + 80) * *(a1 + 80))) + (*(a1 + 88) * *(a1 + 88)));
  if (v3 < 1.2 && v3 > 0.8)
  {
    v4 = *(a1 + 1568);
    return !v4 || (*(a1 + 1520) / v4) < 0.09;
  }

  return result;
}

BOOL sub_19B6E2A48(uint64_t a1)
{
  if (sqrtf(((*(a1 + 60) * *(a1 + 60)) + (*(a1 + 56) * *(a1 + 56))) + (*(a1 + 64) * *(a1 + 64))) > 4.71238911)
  {
    return 0;
  }

  v1 = *(a1 + 1640);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 1592);
  if ((v2 / v1) > 3.1416)
  {
    return 0;
  }

  if (v1 != 1 && (v4 = (v1 * *(a1 + 1596)) - (v2 * v2), v4 >= 0.0))
  {
    return (v4 / ((v1 - 1) * v1)) <= 0.64;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_19B6E2AE4(uint64_t a1)
{
  *a1 = &unk_1F0E33978;
  sub_19B654634(a1 + 64, *(a1 + 72));
  sub_19B6E3228(a1 + 16);
  return a1;
}

void sub_19B6E2B38(uint64_t a1)
{
  *a1 = &unk_1F0E33978;
  sub_19B654634(a1 + 64, *(a1 + 72));
  sub_19B6E3228(a1 + 16);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6E2BAC(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  a1[7] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[4];
      v2 = (a1[3] + 8);
      a1[3] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = 512;
LABEL_7:
    a1[6] = v6;
  }

  v8 = a1[9];
  v7 = a1 + 9;
  sub_19B654634((v7 - 1), v8);
  *v7 = 0;
  v7[1] = 0;
  *(v7 - 1) = v7;
}

void sub_19B6E31FC(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19B6E3228(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

float sub_19B6E32F4(uint64_t a1, float *a2)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = vcvtd_n_f64_u64(v2, 1uLL);
    v4 = vcvtms_s32_f32(v3);
    v5 = *(a1 + 64);
    if (v4 < 1)
    {
      v8 = *(a1 + 64);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = *(v5 + 2);
            v9 = *v8 == v5;
            v5 = v8;
          }

          while (!v9);
        }

        v5 = v8;
      }
    }

    result = v8[7];
    *a2 = result;
  }

  return result;
}

void sub_19B6E3368(_DWORD *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    if (a1[78] >= 1)
    {
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
      }

      v2 = qword_1EAFE2A60;
      if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
      {
        v3 = a1[78];
        *buf = 67240192;
        v12 = v3;
        _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[CMMotionContextSessionAnalyticsTracker] We've already sent analytics for this instance, was this intended? sent: %{public}d", buf, 8u);
      }

      v4 = sub_19B420058();
      if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
        }

        v10 = a1[78];
        v5 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "void CMMotionContextSessionAnalyticsTracker::send()", "CoreLocation: %s\n", v5);
        if (v5 != buf)
        {
          free(v5);
        }
      }
    }

    AnalyticsSendEventLazy();
    ++a1[78];
  }

  else
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
    }

    v6 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[CMMotionContextSessionAnalyticsTracker] Trying to send analytics but there are no recorded DistractedViewing events, not sending.", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CMMotionContextSessionAnalyticsTracker::send()", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void *sub_19B6E36EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v176[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v175[0] = @"trackingClientMode";
  v176[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, *(v3 + 79));
  v175[1] = @"distractedViewingCount";
  v176[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, *v3);
  v175[2] = @"pdrTnbTrackingDisabledViaWalkingCount";
  v176[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v7, *(v3 + 1));
  v175[3] = @"pdrTnbTrackingDisabledViaSitToStandWithWalkingCount";
  v176[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, *(v3 + 2));
  v175[4] = @"pdrTnbTrackingReEnabledViaTouchCount";
  v176[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v9, *(v3 + 3));
  v175[5] = @"pdrTnbTrackingReEnabledViaPickUpCount";
  v176[5] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v10, *(v3 + 4));
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v176, v175, 6);
  objc_msgSend_setDictionary_(v4, v13, v12);
  v16 = v3[3];
  if (v16 != 1.79769313e308)
  {
    *&v16 = v16;
    v17 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v16);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v18, v17, @"minPdrTnbDisplacementMeters");
    v21 = *(v3 + 12);
    if (v21 < 1)
    {
      v23 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v19, v20, 0.0);
    }

    else
    {
      v22 = v3[5] / v21;
      *&v22 = v22;
      v23 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v19, v20, v22);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v24, v23, @"avgPdrTnbDisplacementMeters");
    v25 = v3[4];
    *&v25 = v25;
    v28 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v26, v27, v25);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v29, v28, @"maxPdrTnbDisplacementMeters");
  }

  v30 = v3[7];
  if (v30 != 1.79769313e308)
  {
    *&v30 = v30;
    v31 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v30);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v32, v31, @"minPdrDistanceTravelledMeters");
    v35 = *(v3 + 20);
    if (v35 < 1)
    {
      v37 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v33, v34, 0.0);
    }

    else
    {
      v36 = v3[9] / v35;
      *&v36 = v36;
      v37 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v33, v34, v36);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v38, v37, @"avgPdrDistanceTravelledMeters");
    v39 = v3[8];
    *&v39 = v39;
    v42 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v40, v41, v39);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v43, v42, @"maxPdrDistanceTravelledMeters");
  }

  v44 = v3[11];
  if (v44 != 1.79769313e308)
  {
    *&v44 = v44;
    v45 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v44);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v46, v45, @"minPdrTnbLoopClosure");
    v49 = *(v3 + 28);
    if (v49 < 1)
    {
      v51 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v47, v48, 0.0);
    }

    else
    {
      v50 = v3[13] / v49;
      *&v50 = v50;
      v51 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v47, v48, v50);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v52, v51, @"avgPdrTnbLoopClosure");
    v53 = v3[12];
    *&v53 = v53;
    v56 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v54, v55, v53);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v57, v56, @"maxPdrTnbLoopClosure");
  }

  v58 = v3[15];
  if (v58 != 1.79769313e308)
  {
    *&v58 = v58;
    v59 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v58);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v60, v59, @"minPdrTnbHeadingDiffDegs");
    v63 = *(v3 + 36);
    if (v63 < 1)
    {
      v65 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v61, v62, 0.0);
    }

    else
    {
      v64 = v3[17] / v63;
      *&v64 = v64;
      v65 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v61, v62, v64);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v66, v65, @"avgPdrTnbHeadingDiffDegs");
    v67 = v3[16];
    *&v67 = v67;
    v70 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v68, v69, v67);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v71, v70, @"maxPdrTnbHeadingDiffDegs");
  }

  v72 = v3[19];
  if (v72 != 1.79769313e308)
  {
    *&v72 = v72;
    v73 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v72);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v74, v73, @"minPdrTnbNumSteps");
    v77 = *(v3 + 44);
    if (v77 < 1)
    {
      v79 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v75, v76, 0.0);
    }

    else
    {
      v78 = v3[21] / v77;
      *&v78 = v78;
      v79 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v75, v76, v78);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v80, v79, @"avgPdrTnbNumSteps");
    v81 = v3[20];
    *&v81 = v81;
    v84 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v82, v83, v81);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v85, v84, @"maxPdrTnbNumSteps");
  }

  v86 = v3[23];
  if (v86 != 1.79769313e308)
  {
    *&v86 = v86;
    v87 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v86);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v88, v87, @"minPdrTnbStepCadence");
    v91 = *(v3 + 52);
    if (v91 < 1)
    {
      v93 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v89, v90, 0.0);
    }

    else
    {
      v92 = v3[25] / v91;
      *&v92 = v92;
      v93 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v89, v90, v92);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v94, v93, @"avgPdrTnbStepCadence");
    v95 = v3[24];
    *&v95 = v95;
    v98 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v96, v97, v95);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v99, v98, @"maxPdrTnbStepCadence");
  }

  v100 = v3[27];
  if (v100 != 1.79769313e308)
  {
    *&v100 = v100;
    v101 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v100);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v102, v101, @"minPdrTnbSpeedMetersPerSecond");
    v105 = *(v3 + 60);
    if (v105 < 1)
    {
      v107 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v103, v104, 0.0);
    }

    else
    {
      v106 = v3[29] / v105;
      *&v106 = v106;
      v107 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v103, v104, v106);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v108, v107, @"avgPdrTnbSpeedMetersPerSecond");
    v109 = v3[28];
    *&v109 = v109;
    v112 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v110, v111, v109);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v113, v112, @"maxPdrTnbSpeedMetersPerSecond");
  }

  v114 = v3[31];
  if (v114 != 1.79769313e308)
  {
    *&v114 = v114;
    v115 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v114);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v116, v115, @"minDistractedViewingDurationSeconds");
    v119 = *(v3 + 68);
    if (v119 < 1)
    {
      v121 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v117, v118, 0.0);
    }

    else
    {
      v120 = v3[33] / v119;
      *&v120 = v120;
      v121 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v117, v118, v120);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v122, v121, @"avgDistractedViewingDurationSeconds");
    v123 = v3[32];
    *&v123 = v123;
    v126 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v124, v125, v123);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v127, v126, @"maxDistractedViewingDurationSeconds");
  }

  v128 = v3[35];
  if (v128 != 1.79769313e308)
  {
    *&v128 = v128;
    v129 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v14, v15, v128);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v130, v129, @"minDistractedViewingAuxSampleIntervalSeconds");
    v133 = *(v3 + 76);
    if (v133 < 1)
    {
      v135 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v131, v132, 0.0);
    }

    else
    {
      v134 = v3[37] / v133;
      *&v134 = v134;
      v135 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v131, v132, v134);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v4, v136, v135, @"avgDistractedViewingAuxSampleIntervalSeconds");
    v137 = v3[36];
    *&v137 = v137;
    v140 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v138, v139, v137);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v141, v140, @"maxDistractedViewingAuxSampleIntervalSeconds");
  }

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = objc_msgSend_allKeys(v4, v14, v15);
  v143 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v142, &v162, v174, 16);
  if (v143)
  {
    v144 = v143;
    v145 = *v163;
    do
    {
      v146 = 0;
      do
      {
        if (*v163 != v145)
        {
          objc_enumerationMutation(obj);
        }

        v147 = *(*(&v162 + 1) + 8 * v146);
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
        }

        v148 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
        {
          v150 = objc_msgSend_objectForKey_(v4, v149, v147);
          *buf = 138478083;
          v171 = v147;
          v172 = 2113;
          v173 = v150;
          _os_log_impl(&dword_19B41C000, v148, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSessionAnalyticsTracker] %{private}@ -> %{private}@", buf, 0x16u);
        }

        v151 = sub_19B420058();
        if (*(v151 + 160) > 1 || *(v151 + 164) > 1 || *(v151 + 168) > 1 || *(v151 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
          }

          v154 = objc_msgSend_objectForKey_(v4, v153, v147);
          v166 = 138478083;
          v167 = v147;
          v168 = 2113;
          v169 = v154;
          v155 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMMotionContextSessionAnalyticsTracker::send()_block_invoke", "CoreLocation: %s\n", v155);
          if (v155 != buf)
          {
            free(v155);
          }
        }

        ++v146;
      }

      while (v144 != v146);
      v144 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v152, &v162, v174, 16);
    }

    while (v144);
  }

  if (qword_1EAFE2A58 != -1)
  {
    dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
  }

  v156 = qword_1EAFE2A60;
  if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v156, OS_LOG_TYPE_DEFAULT, "[CMMotionContextSessionAnalyticsTracker] sent payload.", buf, 2u);
  }

  v157 = sub_19B420058();
  if (*(v157 + 160) > 1 || *(v157 + 164) > 1 || *(v157 + 168) > 1 || *(v157 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B40);
    }

    LOWORD(v166) = 0;
    v158 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "void CMMotionContextSessionAnalyticsTracker::send()_block_invoke", "CoreLocation: %s\n", v158);
    if (v158 != buf)
    {
      free(v158);
    }
  }

  v159 = *MEMORY[0x1E69E9840];
  return v4;
}

os_log_t sub_19B6E4104()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

void sub_19B6E4210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x19EAE76F0](v18, v17);
  _Unwind_Resume(a1);
}

void sub_19B6E4240(uint64_t a1, CLConnectionMessage **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a2 && (Dictionary = CLConnectionMessage::getDictionary(*a2)) != 0 && (v4 = objc_msgSend_objectForKeyedSubscript_(Dictionary, v3, @"CMErrorMessage")) != 0)
  {
    v7 = objc_msgSend_intValue(v4, v5, v6);
  }

  else
  {
    v7 = 103;
  }

  if (qword_1EAFE2B28 != -1)
  {
    dispatch_once(&qword_1EAFE2B28, &unk_1F0E3AFF0);
  }

  v8 = qword_1EAFE2B30;
  if (os_log_type_enabled(qword_1EAFE2B30, OS_LOG_TYPE_FAULT))
  {
    *buf = 67240192;
    v13 = v7;
    _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_FAULT, "Failed with CMError code %{public}d", buf, 8u);
  }

  v9 = sub_19B420058();
  if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2B28 != -1)
    {
      dispatch_once(&qword_1EAFE2B28, &unk_1F0E3AFF0);
    }

    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSensorMonitorSimulatorProxy initWithSensorMonitorTests]_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_19B6E45D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15)
  {
    sub_19B41FFEC(a15);
  }

  if (a17)
  {
    sub_19B41FFEC(a17);
  }

  _Unwind_Resume(exception_object);
}

CLConnectionMessage *sub_19B6E4600(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  result = *a2;
  if (!*a2 || (result = CLConnectionMessage::getDictionary(result)) == 0)
  {
LABEL_16:
    v15 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(result, v4, @"CMErrorMessage");
  if (v5)
  {
    v6 = v5;
    if (qword_1EAFE2B28 != -1)
    {
      dispatch_once(&qword_1EAFE2B28, &unk_1F0E3AFF0);
    }

    v7 = qword_1EAFE2B30;
    if (os_log_type_enabled(qword_1EAFE2B30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_ERROR, "Error in simulateMotionSensorData: %@", buf, 0xCu);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2B28 != -1)
      {
        dispatch_once(&qword_1EAFE2B28, &unk_1F0E3AFF0);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSensorMonitorSimulatorProxy _simulateMotionSensorDataForType:payload:withHandler:]_block_invoke", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    v12 = MEMORY[0x1E696ABC0];
    v13 = objc_msgSend_intValue(v6, v9, v10);
    objc_msgSend_errorWithDomain_code_userInfo_(v12, v14, @"CMErrorDomain", v13, 0);
    result = (*(*(a1 + 32) + 16))();
    goto LABEL_16;
  }

  v16 = *(*(a1 + 32) + 16);
  v17 = *MEMORY[0x1E69E9840];

  return v16();
}

uint64_t sub_19B6E4A6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sensorMonitorSimulatorProxy(*(a1 + 32), a2, a3);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a1 + 40);

  return MEMORY[0x1EEE66B58](v4, sel__simulateMotionSensorDataForType_payload_withHandler_, v5);
}

os_log_t sub_19B6E4AB4()
{
  result = os_log_create("com.apple.locationd.Core", "SensorKit");
  qword_1EAFE2B30 = result;
  return result;
}

float sub_19B6E4AE4(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 >= 2)
  {
    if (qword_1ED71C820 != -1)
    {
      dispatch_once(&qword_1ED71C820, &unk_1F0E28920);
    }

    v6 = off_1ED71C828;
    if (os_log_type_enabled(off_1ED71C828, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a2;
      v11 = 2048;
      v12 = 2;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Assertion failed: i < N, file /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Oscar/Math/CMVector.h, line 273,invalid index %zu >= %zu.", buf, 0x16u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C820 != -1)
      {
        dispatch_once(&qword_1ED71C820, &unk_1F0E28920);
      }

      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "T CMVector<float, 2>::operator[](const size_t) const [T = float, N = 2]", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = *(a1 + 4 * a2);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6E4CDC(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3F80000000000000;
  *(a1 + 24) = 0;
  *(a1 + 28) = 2143289344;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  sub_19B73C2F0(a1 + 72);
  *(a1 + 256) = 0x7FF8000000000000;
  *(a1 + 264) = 0;
  *(a1 + 268) = 1;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x600000000;
  *(a1 + 328) = 1;
  *(a1 + 348) = 0;
  *(a1 + 340) = 0;
  *(a1 + 356) = 0x600000000;
  *(a1 + 388) = 1;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0x600000000;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 232) = 0;
  *(a1 + 476) = 0;
  *(a1 + 484) = 0;
  *(a1 + 460) = 0;
  *(a1 + 468) = 0;
  sub_19B73CD04();
}

void sub_19B6E4F30(_Unwind_Exception *exception_object)
{
  v4 = 0;
  v5 = v2 + 480;
  while (1)
  {
    v6 = *(v5 + v4);
    *(v5 + v4) = 0;
    if (v6)
    {
      MEMORY[0x19EAE76F0](v6, v1);
    }

    v4 -= 8;
    if (v4 == -16)
    {
      v7 = *(v2 + 464);
      *(v2 + 464) = 0;
      if (v7)
      {
        MEMORY[0x19EAE76F0](v7, v1);
      }

      v8 = 0;
      v9 = v2 + 248;
      while (1)
      {
        v10 = *(v9 + v8);
        *(v9 + v8) = 0;
        if (v10)
        {
          MEMORY[0x19EAE76F0](v10, v1);
        }

        v8 -= 8;
        if (v8 == -16)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

void sub_19B6E4FB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v134 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    v8 = *(a3 + 8);
    if (*a2 - *(a1 + 216) <= 1.5)
    {
      v9 = *a2 - *(a1 + 216);
    }

    else
    {
      v9 = 1.5;
    }

    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
    }

    v10 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 3.852e-34;
      v124 = v9;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEBUG, "[CMDoTEstimator] Time since last step, %.2f\n", buf, 0xCu);
    }

    v11 = sub_19B420058();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
      }

      v111 = 134217984;
      v112 = v9;
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "Pdr::PdrOutput CMPdrEstimatorOnHead::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse *const, BOOL)", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    *v13.i64 = sub_19B73CB1C(a1 + 72, *(a3 + 8));
    v14.f32[0] = sub_19B66BFF4((a2 + 32), v13);
    *buf = v14.f32[0];
    v124 = COERCE_DOUBLE(__PAIR64__(v16, v15));
    *v125 = v17;
    v110[0] = sub_19B66BF70(buf, (a1 + 8), v14);
    v110[1] = v18;
    v110[2] = v19;
    v110[3] = v20;
    v21 = sub_19B66C1A4(v110, 0.0, 0.0, 1.0);
    v23 = atan2f(v22, v21);
    v24 = __sincosf_stret(v23);
    v25 = 0;
    v109 = __PAIR64__(LODWORD(v24.__sinval), LODWORD(v24.__cosval));
    v26 = 1;
    v27 = 1;
    do
    {
      v28 = v26;
      v29 = *(a1 + 472 + 8 * v25);
      v30 = sub_19B6E4AE4(&v109, v25);
      v31 = sub_19B5BE1A8(v29, v30);
      v26 = 0;
      v27 &= v31;
      v25 = 1;
    }

    while ((v28 & 1) != 0);
    if (v27)
    {
      cosval = *(*(a1 + 472) + 4 * *(*(a1 + 472) + 8) + 16);
      sinval = *(*(a1 + 480) + 4 * *(*(a1 + 480) + 8) + 16);
    }

    else
    {
      sinval = v24.__sinval;
      cosval = v24.__cosval;
    }

    v38 = sqrtf((sinval * sinval) + (cosval * cosval));
    v32.f32[0] = cosval / v38;
    *(a1 + 60) = v32.i32[0];
    *(a1 + 64) = sinval / v38;
    if (a4)
    {
      *buf = sub_19B66BFF4((a2 + 32), v32);
      v124 = COERCE_DOUBLE(__PAIR64__(v40, v39));
      *v125 = v41;
      v42 = sub_19B66C1A4(buf, -*(a2 + 20), -*(a2 + 24), -*(a2 + 28));
      v43 = 0;
      *v108 = v42;
      v108[1] = v44;
      v108[2] = v45;
      v46 = 0.0;
      do
      {
        v46 = v46 + (*&v108[v43] * *&v108[v43]);
        ++v43;
      }

      while (v43 != 3);
      if (sqrtf(v46) > 0.02)
      {
        v47.i32[0] = LODWORD(v24.__cosval);
        *(a1 + 28) = v23;
        *(a1 + 32) = v24.__cosval;
        v48 = 0.0;
        *(a1 + 36) = v24.__sinval;
        if (v9 > 0.0)
        {
          v47.i32[1] = LODWORD(v24.__sinval);
          *(a1 + 40) = vadd_f32(vmul_f32(v47, vdup_n_s32(0x3F49DB23u)), *(a1 + 40));
          *(a1 + 48) = *(a1 + 48) + 0.0;
          v48 = 0.7885 / v9;
        }

        *(a1 + 52) = v48;
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
        }

        v49 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
        {
          v50 = 0;
          v51 = 0.0;
          do
          {
            v51 = v51 + (*&v108[v50] * *&v108[v50]);
            ++v50;
          }

          while (v50 != 3);
          *buf = 3.852e-34;
          v124 = sqrtf(v51);
          _os_log_impl(&dword_19B41C000, v49, OS_LOG_TYPE_DEBUG, "[CMDoTEstimator] DoG: userAccelNorm, %f\n", buf, 0xCu);
        }

        v52 = sub_19B420058();
        if (*(v52 + 160) > 1 || *(v52 + 164) > 1 || *(v52 + 168) > 1 || *(v52 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
          }

          v53 = 0;
          v54 = 0.0;
          do
          {
            v54 = v54 + (*&v108[v53] * *&v108[v53]);
            ++v53;
          }

          while (v53 != 3);
          v111 = 134217984;
          v112 = sqrtf(v54);
          v55 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdrEstimatorOnHead::directionOfGaze(const CMVector3d &, float, double)", "CoreLocation: %s\n", v55);
          if (v55 != buf)
          {
            free(v55);
          }
        }
      }
    }

    else
    {
      v56 = sub_19B73C524(a1 + 72, *a1);
      v58 = v57;
      v59 = *a2;
      v60 = atan2f(*(a1 + 64), *(a1 + 60));
      v61 = *a1;
      v62 = *(*a1 + 68);
      v63 = *(*a1 + 56);
      if (sub_19B5BE1A8(*(a1 + 464), v63))
      {
        v63 = *(*(a1 + 464) + 4 * *(*(a1 + 464) + 8) + 16);
      }

      if (v62)
      {
        v64 = v58;
        if (*(a1 + 264) == 1)
        {
          v65 = *(a1 + 60);
          *(a1 + 32) = v65;
          v66 = v65;
        }

        else
        {
          if (sub_19B73CFB0(a1 + 256))
          {
            *(a1 + 280) = 0;
            *(a1 + 288) = 0;
            *(a1 + 296) = 0;
            *(a1 + 268) = 1;
            *(a1 + 356) = 0;
            *(a1 + 348) = 0;
            *(a1 + 340) = 0;
            *(a1 + 328) = 1;
            *(a1 + 400) = 0;
            *(a1 + 408) = 0;
            *(a1 + 416) = 0;
            *(a1 + 388) = 1;
            *(a1 + 256) = 0x7FF8000000000000;
            *(a1 + 456) = 0;
          }

          if (v58 >= 0.5)
          {
            *buf = v58 * *&v56;
            *&v124 = v58 * *(&v56 + 1);
            v66.f32[0] = sub_19B73CDFC(a1 + 72, buf);
            *(a1 + 32) = v66.i32[0];
            *(a1 + 36) = v74;
            v66.i32[1] = v74;
          }

          else
          {
            v71 = vmul_f32(*(a1 + 60), vdup_n_s32(0x3F19999Au));
            v72.f32[0] = sub_19B73CDFC(a1 + 72, (a1 + 60));
            v72.i32[1] = v73;
            v66 = vadd_f32(v71, vmul_f32(v72, vdup_n_s32(0x3ECCCCCCu)));
            *(a1 + 32) = v66;
          }
        }

        if (*(a1 + 56) == 1)
        {
          v75 = 0.7885;
        }

        else
        {
          v76 = 0;
          v77 = v61[15];
          v78 = v61[16];
          v79 = v77 * v61[11];
          v80 = v61[14];
          *&v81 = ((v77 * v61[12]) + (v78 * v61[6])) * v80;
          *&v82 = ((v77 * v61[13]) + (v78 * v61[7])) * v80;
          *buf = (v79 + (v78 * v61[5])) * v80;
          v124 = COERCE_DOUBLE(__PAIR64__(v82, v81));
          v83 = v63 * 24.896;
          do
          {
            v84 = v76 + 1;
            v85 = flt_19B7BC5F4[v76 + 1];
            v83 = v83 + (v85 * sub_19B5D6144(buf, v76));
            v76 = v84;
          }

          while (v84 != 3);
          *(a1 + 52) = v83;
          v75 = *(*a1 + 80) * (v83 * v64);
          v66 = *(a1 + 32);
        }

        *(a1 + 40) = vadd_f32(vmul_n_f32(v66, v75), *(a1 + 40));
        *(a1 + 48) = *(a1 + 48) + 0.0;
        v86 = atan2f(*(&v56 + 1), *&v56);
        v87 = *(a1 + 28);
        v88 = (v87 - v60) + floor(((v87 - v60) + 3.14159265) / 6.28318531) * -6.28318531;
        v89 = (v86 - v87) + floor(((v86 - v87) + 3.14159265) / 6.28318531) * -6.28318531;
        if (qword_1EAFE2A58 != -1)
        {
          dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
        }

        v90 = v88;
        v91 = v89;
        v92 = qword_1EAFE2A60;
        if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEBUG))
        {
          v93 = *(a1 + 40);
          v94 = *(a1 + 44);
          v95 = (*(a1 + 28) * 57.296);
          *buf = 3.8526e-34;
          v124 = v93;
          *v125 = 2048;
          *&v125[2] = v94;
          v126 = 2048;
          v127 = (v90 * 57.296);
          v128 = 2048;
          v129 = v95;
          v130 = 2048;
          v131 = (v60 * 57.296);
          v132 = 2048;
          v133 = (v91 * 57.296);
          _os_log_impl(&dword_19B41C000, v92, OS_LOG_TYPE_DEBUG, "[CMDoTEstimator] position [%f, %f], gazeDiffDot, %.2f, dot %.2f, gaze, %.2f, swayDelta, %.2f\n", buf, 0x3Eu);
        }

        v96 = sub_19B420058();
        if (*(v96 + 160) > 1 || *(v96 + 164) > 1 || *(v96 + 168) > 1 || *(v96 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A58 != -1)
          {
            dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
          }

          v97 = *(a1 + 40);
          v98 = *(a1 + 44);
          v99 = (*(a1 + 28) * 57.296);
          v111 = 134219264;
          v112 = v97;
          v113 = 2048;
          v114 = v98;
          v115 = 2048;
          v116 = (v90 * 57.296);
          v117 = 2048;
          v118 = v99;
          v119 = 2048;
          v120 = (v60 * 57.296);
          v121 = 2048;
          v122 = (v91 * 57.296);
          v100 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "void CMPdrEstimatorOnHead::printDebugInfo(float, float) const", "CoreLocation: %s\n", v100);
          if (v100 != buf)
          {
            free(v100);
          }
        }

        v70 = *(a1 + 32);
      }

      else
      {
        v67 = vmul_f32(*(a1 + 60), vdup_n_s32(0x3F19999Au));
        v68.f32[0] = sub_19B73CDFC(a1 + 72, (a1 + 60));
        v68.i32[1] = v69;
        v70 = vadd_f32(v67, vmul_f32(v68, vdup_n_s32(0x3ECCCCCCu)));
        *(a1 + 32) = v70;
        *(a1 + 52) = 0;
      }

      v101 = atan2f(v70.f32[1], v70.f32[0]);
      *(a1 + 28) = v101;
      v102 = 0.0;
      if (v59 - *(a1 + 216) < 1.5)
      {
        v102 = 1.0;
      }

      sub_19B73CEB8((a1 + 256), v102, v60, v101, v59);
    }

    v103 = (*(a1 + 28) * 57.296);
    v104 = *(a1 + 40);
    v105 = *(a1 + 44);
    v106 = *(a1 + 52);
  }

  else
  {
    if (qword_1EAFE2A58 != -1)
    {
      dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
    }

    v35 = qword_1EAFE2A60;
    if (os_log_type_enabled(qword_1EAFE2A60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v35, OS_LOG_TYPE_DEFAULT, "[CMDoTEstimator] HeadSet Orientation is not set!", buf, 2u);
    }

    v36 = sub_19B420058();
    if (*(v36 + 160) > 1 || *(v36 + 164) > 1 || *(v36 + 168) > 1 || *(v36 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A58 != -1)
      {
        dispatch_once(&qword_1EAFE2A58, &unk_1F0E29B80);
      }

      LOWORD(v111) = 0;
      v37 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "Pdr::PdrOutput CMPdrEstimatorOnHead::feedImuData(const AccessoryActivity::ImuData *const, const CMAccessoryStepDetector::Impulse *const, BOOL)", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }
  }

  v107 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6E5C24()
{
  result = os_log_create("com.apple.locationd.Motion", "MotionContext");
  qword_1EAFE2A60 = result;
  return result;
}

void sub_19B6E5C6C(uint64_t a1, double *a2)
{
  v3 = *a2;
  *(a1 + 8) = *a2;
  *&v3 = 1.0 / v3;
  *(a1 + 16) = LODWORD(v3);
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 23) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  bzero((a1 + 56), 0x2D8uLL);
  *(a1 + 822) = 0;
  *(a1 + 818) = 0;
}

void sub_19B6E5CD0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *(a1 + 56) = 0;
  v1 = a1 + 56;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 776) = 0;
  *(a1 + 60) = 0;
  sub_19B45B7E4(a1 + 62);
  sub_19B45C958(v1 + 208, 0, 0, 0, v1, *(v1 + 720));
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
  }

  v2 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "compass calibrator has been reset", buf, 2u);
  }

  v3 = sub_19B420058();
  if (*(v3 + 160) > 1 || *(v3 + 164) > 1 || *(v3 + 168) > 1 || *(v3 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
    }

    v4 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompassCalibratorAKM::reset()", "CoreLocation: %s\n", v4);
    if (v4 != buf)
    {
      free(v4);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B6E5EB0(uint64_t a1, float *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  sub_19B45B8F8((a2[2] / 0.3 * 5.0), (a2[3] / 0.3 * 5.0), (a2[4] / 0.3 * 5.0), a1 + 62, (a1 + 254));
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0;
  if (sub_19B45CD04(0, 0, 0, (a1 + 264), a1 + 62, *(a1 + 254), 0, 1, a1 + 56, (a1 + 776), a1 + 784) >= 1)
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
    }

    v3 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 660);
      v5 = *(a1 + 798);
      v6 = *(a1 + 796);
      v7 = *(a1 + 800);
      v8 = *(a1 + 802);
      v9 = *(a1 + 786);
      v10 = *(a1 + 804);
      v11 = *(a1 + 806);
      v12 = *(a1 + 808);
      v13 = *(a1 + 792);
      v14 = *(a1 + 784);
      v15 = *(a1 + 810);
      v16 = *(a1 + 812);
      v17 = *(a1 + 814);
      v18 = *(a1 + 790);
      v19 = *(a1 + 788);
      v20 = *(a1 + 794);
      v21 = *(a1 + 816);
      *buf = 136319746;
      v44 = "Compass-DOE";
      v45 = 1024;
      v46 = v4;
      v47 = 1024;
      v48 = v5;
      v49 = 1024;
      v50 = v6;
      v51 = 1024;
      v52 = v7;
      v53 = 1024;
      v54 = v8;
      v55 = 1024;
      v56 = v9;
      v57 = 1024;
      v58 = v10;
      v59 = 1024;
      v60 = v11;
      v61 = 1024;
      v62 = v12;
      v63 = 1024;
      v64 = v13;
      v65 = 1024;
      v66 = v14;
      v67 = 1024;
      v68 = v15;
      v69 = 1024;
      v70 = v16;
      v71 = 1024;
      v72 = v17;
      v73 = 1024;
      v74 = v18;
      v75 = 1024;
      v76 = v19;
      v77 = 1024;
      v78 = v20;
      v79 = 1024;
      v80 = v21;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Type,%s,radius,%d,hrmin,%d,hrmax,%d,hrvar,%d,rvar,%d,m,%d,ovar,%d,%d,%d,hovar,%d,n,%d,vvar,%d,%d,%d,hvarA,%d,hvar,%d,hdistpl,%d,dvar,%d,", buf, 0x78u);
    }

    v22 = sub_19B420058();
    if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
      }

      v25 = *(a1 + 660);
      v26 = *(a1 + 798);
      v27 = *(a1 + 796);
      v28 = *(a1 + 800);
      v29 = *(a1 + 802);
      v30 = *(a1 + 786);
      v31 = *(a1 + 804);
      v32 = *(a1 + 806);
      v33 = *(a1 + 808);
      v34 = *(a1 + 792);
      v35 = *(a1 + 784);
      v36 = *(a1 + 810);
      v37 = *(a1 + 812);
      v38 = *(a1 + 814);
      v39 = *(a1 + 790);
      v40 = *(a1 + 788);
      v41 = *(a1 + 794);
      v42 = *(a1 + 816);
      v23 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompassCalibratorAKM::addSample(const CLVector3d<float> &, const CLClientQuaternion *, const CFTimeInterval &)", "CoreLocation: %s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }
  }

  *(a1 + 20) = *(a1 + 776);
  v24 = *MEMORY[0x1E69E9840];
}

void sub_19B6E62F0(uint64_t a1, float *a2, int *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  *(a1 + 56) = (a2[2] / 0.3 * 5.0);
  v6 = a1 + 56;
  *(a1 + 776) = v5;
  *(a1 + 20) = v5;
  *(a1 + 58) = (a2[3] / 0.3 * 5.0);
  *(a1 + 60) = (a2[4] / 0.3 * 5.0);
  sub_19B45B7E4(a1 + 62);
  sub_19B45C958(v6 + 208, 0, 0, 0, v6, *(v6 + 720));
  *(v6 - 28) = *(v6 + 720);
  *(v6 + 762) = *v6;
  *(v6 + 766) = *(v6 + 4);
  *(v6 - 32) = 1;
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
  }

  v7 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = *a3;
    *buf = 134218752;
    v20 = v8;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    v25 = 1024;
    v26 = v11;
    _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "compass calibrator has been set with offsets (%+.3f/%+.3f/%+.3f) and calibration level (%d)", buf, 0x26u);
  }

  v12 = sub_19B420058();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E29BA0);
    }

    v15 = a2[2];
    v16 = a2[3];
    v17 = a2[4];
    v18 = *a3;
    v13 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLCompassCalibratorAKM::setBias(const CLVector3d<float> &, const CLMotionTypeCompassCalibrationLevel &, const CLVector3d<float> &, const CLClientQuaternion *)", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6E65DC(uint64_t result, float *a2, _DWORD *a3)
{
  v3 = *(result + 776);
  *a3 = v3;
  v4 = *(result + 56);
  *(result + 20) = v3;
  v5 = (v4 / 5.0) * 0.3;
  *a2 = v5;
  v6 = (*(result + 58) / 5.0) * 0.3;
  a2[1] = v6;
  v7 = (*(result + 60) / 5.0) * 0.3;
  a2[2] = v7;
  v8 = *(result + 28);
  if (v8 == v3 && *(result + 818) == *(result + 56) && *(result + 820) == *(result + 58) && *(result + 822) == *(result + 60))
  {
    *(result + 25) = 0;
  }

  else
  {
    *(result + 26) = v8 <= v3;
    *(result + 24) = 256;
    *(result + 28) = v3;
    *(result + 818) = *(result + 56);
    *(result + 822) = *(result + 60);
  }

  return result;
}

float32_t sub_19B6E66C0(__int16 *a1, float32x2_t *a2, float32x2_t *a3)
{
  v3 = (a1[30] / 5.0) * 0.3;
  v4 = a2[2].f32[0] - v3;
  v5.i32[0] = a1[28];
  v5.i32[1] = a1[29];
  __asm { FMOV            V3.2S, #5.0 }

  v11 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(vdiv_f32(vcvt_f32_s32(v5), _D3)), vdupq_n_s64(0x3FD3333333333333uLL)));
  a2[1] = vsub_f32(a2[1], v11);
  a2[2].f32[0] = v4;
  result = a3[2].f32[0] - v3;
  a3[1] = vsub_f32(a3[1], v11);
  a3[2].f32[0] = result;
  return result;
}

void sub_19B6E68B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  if (v14)
  {
    sub_19B41FFEC(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E699C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15)
{
  if (a13)
  {
    sub_19B41FFEC(a13);
  }

  if (v15)
  {
    sub_19B41FFEC(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E6FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E70CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v12);
  _Unwind_Resume(a1);
}

void sub_19B6E715C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E71CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E72D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19B6E7374(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_19B6E738C(uint64_t a1, uint64_t a2)
{
  if (!sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataXKey", a1) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataYKey", (a1 + 8)) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataZKey", (a1 + 16)) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataMagnitudeKey", (a1 + 24)) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataHorizontalKey", (a1 + 32)) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataDeclinationKey", (a1 + 40)) || !sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataInclinationKey", (a1 + 48)))
  {
    return 0;
  }

  return sub_19B43D468(a2, "kCLMotionTypeGeomagneticModelDataTimestampKey", (a1 + 56));
}

BOOL sub_19B6E74A8(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  sub_19B5EF4EC(a4, "kCMActivityAlarmId", a1);
  sub_19B5EF4EC(a4, "kCMActivityAlarmTrigger", a2);

  return sub_19B5EFAF4(a4, "kCMActivityAlarmDuration", a3);
}

uint64_t sub_19B6E7520(_DWORD *a1, _DWORD *a2, void *a3, uint64_t a4)
{
  if (!sub_19B432FD8(a4, "kCMActivityAlarmId", a1) || !sub_19B432FD8(a4, "kCMActivityAlarmTrigger", a2))
  {
    return 0;
  }

  return sub_19B43D468(a4, "kCMActivityAlarmDuration", a3);
}

uint64_t sub_19B6E75C0(UInt8 *a1, uint64_t a2)
{
  cf = 0;
  if (sub_19B5EB694(a2, "kCMPressureBiasId", &cf))
  {
    v3 = cf == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDataGetTypeID())
  {
    return 0;
  }

  v5 = cf;
  if (CFDataGetLength(cf) < 0x1D)
  {
    return 0;
  }

  v8.location = 0;
  v8.length = 29;
  CFDataGetBytes(v5, v8, a1);
  return 1;
}

uint64_t sub_19B6E7774()
{
  result = sub_19B421620();
  if ((result & 0x200) != 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B6E7800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = sub_19B420D84();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B6E78D8;
  v9[3] = &unk_1E7534F68;
  v9[6] = a3;
  v9[7] = a2;
  v9[4] = &v10;
  v9[5] = a1;
  sub_19B420C9C(v6, v9);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_19B6E78C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6E78D8(const char **a1)
{
  v1 = a1;
  v44 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if ((sub_19B421620() & 0x200) != 0)
  {
    if (qword_1EAFE2800 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v27 = off_1EAFE2828;
    v2 = "assert";
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v41 = 0;
      *&v41[4] = 2082;
      *&v41[6] = "";
      *&v41[14] = 2082;
      *&v41[16] = "assert";
      v42 = 2081;
      v43 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }
    }

    v28 = off_1EAFE2828;
    if (os_signpost_enabled(off_1EAFE2828))
    {
      *buf = 68289539;
      *v41 = 0;
      *&v41[4] = 2082;
      *&v41[6] = "";
      *&v41[14] = 2082;
      *&v41[16] = "assert";
      v42 = 2081;
      v43 = "isAvailable()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLSPUEclipseInterface] Service required", "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }
    }

    v1 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v41 = 0;
      *&v41[4] = 2082;
      *&v41[6] = "";
      *&v41[14] = 2082;
      *&v41[16] = "assert";
      v42 = 2081;
      v43 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v1, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
LABEL_3:
  v3 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Sending query command.", buf, 2u);
  }

  v4 = sub_19B420058();
  if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    *v30 = 0;
    v5 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUEclipseClient::querySuppressionBlocking(BOOL &, CLMotionTypeTimestamp &)_block_invoke", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v31 = 5;
  memset(v30, 0, sizeof(v30));
  v29 = 37;
  v6 = sub_19B44CF80(*(v2 + 3), &v31, 1, v30, &v29);
  if (v6)
  {
    v7 = v6;
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v8 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      v9 = mach_error_string(v7);
      *buf = 136446466;
      *v41 = v9;
      *&v41[8] = 1026;
      *&v41[10] = v7;
      _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Query failed: %{public}s (0x%{public}x)", buf, 0x12u);
    }

    v10 = sub_19B420058();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v11 = mach_error_string(v7);
      v32 = 136446466;
      v33 = v11;
      v34 = 1026;
      LODWORD(v35) = v7;
LABEL_70:
      v25 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUEclipseClient::querySuppressionBlocking(BOOL &, CLMotionTypeTimestamp &)_block_invoke", "CoreLocation: %s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  else if (v29 == 37)
  {
    if (v30[1] == 1)
    {
      if (*&v30[10])
      {
        *v1[6].isa = *&v30[10] * 0.000001;
        *v1[7].isa = v30[19];
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
        }

        v12 = off_1EAFE2828;
        if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *v1[6].isa;
          v14 = *v1[7].isa;
          *buf = 134349824;
          *v41 = v13;
          *&v41[8] = 2050;
          *&v41[10] = *&v30[2] * 0.000001;
          *&v41[18] = 1026;
          *&v41[20] = v14;
          v42 = 1026;
          LODWORD(v43) = v30[20];
          _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_DEFAULT, "[CLSPUEclipseClient] Query reply: timestamp,%{public}f, replyTimestamp,%{public}f, suppress,%{public}d, awake,%{public}d", buf, 0x22u);
        }

        v15 = sub_19B420058();
        if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2800 != -1)
          {
            dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
          }

          v16 = *v1[6].isa;
          v17 = *v1[7].isa;
          v32 = 134349824;
          v33 = v16;
          v34 = 2050;
          v35 = *&v30[2] * 0.000001;
          v36 = 1026;
          v37 = v17;
          v38 = 1026;
          v39 = v30[20];
          v18 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "BOOL CLSPUEclipseClient::querySuppressionBlocking(BOOL &, CLMotionTypeTimestamp &)_block_invoke", "CoreLocation: %s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }

        *(*(v1[4].isa + 1) + 24) = 1;
      }

      else
      {
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
        }

        v23 = off_1EAFE2828;
        if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v23, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] No suppression event available yet.", buf, 2u);
        }

        v24 = sub_19B420058();
        if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2800 != -1)
          {
            dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
          }

          LOWORD(v32) = 0;
          goto LABEL_70;
        }
      }
    }

    else
    {
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v21 = off_1EAFE2828;
      if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Service not running.", buf, 2u);
      }

      v22 = sub_19B420058();
      if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2800 != -1)
        {
          dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
        }

        LOWORD(v32) = 0;
        goto LABEL_70;
      }
    }
  }

  else
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v19 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *v41 = v29;
      _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Unexpected response size: %{public}zu", buf, 0xCu);
    }

    v20 = sub_19B420058();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v32 = 134349056;
      v33 = v29;
      goto LABEL_70;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6E8350(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B6E8424;
  v7[3] = &unk_1E7533420;
  v7[5] = a1;
  v7[6] = a2;
  v7[4] = &v8;
  sub_19B420C9C(v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_19B6E840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19B6E8424(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if ((sub_19B421620() & 0x200) == 0)
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v17 = off_1EAFE2828;
    v5 = "assert";
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v29 = 0;
      *&v29[4] = 2082;
      *&v29[6] = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }
    }

    v18 = off_1EAFE2828;
    if (os_signpost_enabled(off_1EAFE2828))
    {
      *buf = 68289539;
      *v29 = 0;
      *&v29[4] = 2082;
      *&v29[6] = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "isAvailable()";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[CLSPUEclipseInterface] Service required", "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }
    }

    v4 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v29 = 0;
      *&v29[4] = 2082;
      *&v29[6] = "";
      v30 = 2082;
      v31 = "assert";
      v32 = 2081;
      v33 = "isAvailable()";
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[CLSPUEclipseInterface] Service required, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_42:
    dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
LABEL_4:
    v6 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      v7 = mach_error_string(v4);
      *buf = 136446466;
      *v29 = v7;
      *&v29[8] = 1026;
      *&v29[10] = v4;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] QueryStaticPose failed: %{public}s (0x%{public}x)", buf, 0x12u);
    }

    v8 = sub_19B420058();
    if ((*(v8 + 160) & 0x80000000) != 0 && (*(v8 + 164) & 0x80000000) != 0 && (*(v8 + 168) & 0x80000000) != 0 && !*(v8 + 152))
    {
      goto LABEL_26;
    }

    bzero(buf, 0x65CuLL);
    if (*(v5 + 256) != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v9 = mach_error_string(v4);
    v24 = 136446466;
    v25 = v9;
    v26 = 1026;
    v27 = v4;
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUEclipseClient::queryStaticPoseBlocking(CMEclipseReport::QueryStaticPoseReply &)_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      goto LABEL_26;
    }

LABEL_25:
    free(v10);
    goto LABEL_26;
  }

  v23 = 8;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 34;
  v3 = sub_19B44CF80(*(v2 + 24), &v23, 1, &v20, &v19);
  if (v3)
  {
    LODWORD(v4) = v3;
    v5 = &OBJC_IVAR___CMRecoverySession_fSessionHrRecovery;
    if (qword_1EAFE2800 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_42;
  }

  if (v19 == 34)
  {
    v11 = a1[6];
    v12 = v20;
    v13 = v21;
    *(v11 + 32) = v22;
    *v11 = v12;
    *(v11 + 16) = v13;
    *(*(a1[4] + 8) + 24) = 1;
    goto LABEL_26;
  }

  if (qword_1EAFE2800 != -1)
  {
    dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
  }

  v14 = off_1EAFE2828;
  if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
  {
    *buf = 134349056;
    *v29 = v19;
    _os_log_impl(&dword_19B41C000, v14, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Unexpected response size: %{public}zu", buf, 0xCu);
  }

  v15 = sub_19B420058();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v24 = 134349056;
    v25 = v19;
    v10 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "BOOL CLSPUEclipseClient::queryStaticPoseBlocking(CMEclipseReport::QueryStaticPoseReply &)_block_invoke", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_19B6E89E0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  v6 = 7;
  if (!sub_19B44CCDC(a1, &v6, 1))
  {
    if (qword_1EAFE2800 != -1)
    {
      dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
    }

    v2 = off_1EAFE2828;
    if (os_log_type_enabled(off_1EAFE2828, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_ERROR, "[CLSPUEclipseClient] Failed to release AP force wake assertion", buf, 2u);
    }

    v3 = sub_19B420058();
    if ((*(v3 + 160) & 0x80000000) == 0 || (*(v3 + 164) & 0x80000000) == 0 || (*(v3 + 168) & 0x80000000) == 0 || *(v3 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2800 != -1)
      {
        dispatch_once(&qword_1EAFE2800, &unk_1F0E28700);
      }

      v4 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "void CLSPUEclipseClient::releaseAPForceWakeAssertion()", "CoreLocation: %s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_19B6E8BA8(uint64_t a1)
{
  sub_19B7444EC(a1);

  JUMPOUT(0x19EAE76F0);
}

os_log_t sub_19B6E8BE8()
{
  result = os_log_create("com.apple.locationd.Motion", "Eclipse");
  off_1EAFE2828 = result;
  return result;
}

void sub_19B6E8CA8(uint64_t a1)
{
  sub_19B780E7C(a1);

  JUMPOUT(0x19EAE76F0);
}

void sub_19B6E8D94(void *a1)
{
  sub_19B74FAE8(a1);

  JUMPOUT(0x19EAE76F0);
}

double sub_19B6E8DCC(uint64_t a1, int a2, double *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
    }

    v4 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240192;
      LODWORD(v17) = a2;
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_FAULT, "[AccessoryInertialOdometry] Unrecognized update interval notification %{public}d", buf, 8u);
    }

    v5 = sub_19B420058();
    if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || (v7 = 0.0, *(v5 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual CFTimeInterval CLAccessoryInertialOdometry::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }

      v7 = 0.0;
    }
  }

  else
  {
    sub_19B750AC4(a1);
    v10 = *a3;
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
    }

    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
    }

    v7 = fmax(v10, 1.0);
    v11 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v17 = v7;
      _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_INFO, "[AccessoryInertialOdometry] Setting update interval to %{public}f", buf, 0xCu);
    }

    v12 = sub_19B420058();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
      }

      v13 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual CFTimeInterval CLAccessoryInertialOdometry::minimumUpdateIntervalChanged(int, const CFTimeInterval &)", "CoreLocation: %s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    sub_19B4238F4(*(a1 + 32), rint(v7 * 1000000.0));
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_19B6E9144(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (qword_1ED71C7B8 != -1)
  {
    dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
  }

  v4 = qword_1ED71C7C8;
  if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf[0]) = 68157955;
    DWORD1(buf[0]) = IntegerValue;
    WORD4(buf[0]) = 2097;
    *(buf + 10) = DataValue;
    _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_DEBUG, "[AccessoryInertialOdometry] payload,{%{private}.*P}", buf, 0x12u);
  }

  v5 = sub_19B420058();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
    }

    v6 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLAccessoryInertialOdometry::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  if (DataValue && IntegerValue == 101)
  {
    v7 = *DataValue;
    v8 = *(DataValue + 32);
    buf[1] = *(DataValue + 16);
    buf[2] = v8;
    buf[0] = v7;
    v9 = *(DataValue + 48);
    v10 = *(DataValue + 64);
    v11 = *(DataValue + 80);
    *&v18[13] = *(DataValue + 93);
    buf[4] = v10;
    *v18 = v11;
    buf[3] = v9;
    TimeStamp = IOHIDEventGetTimeStamp();
    v19 = sub_19B41E070(TimeStamp);
    sub_19B41DF08(a1, 0, buf, 109);
  }

  else
  {
    if (qword_1ED71C7B8 != -1)
    {
      dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
    }

    v13 = qword_1ED71C7C8;
    if (os_log_type_enabled(qword_1ED71C7C8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 134217984;
      *(buf + 4) = IntegerValue;
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_ERROR, "[AccessoryInertialOdometry] Invalid payload with size %zu", buf, 0xCu);
    }

    v14 = sub_19B420058();
    if ((*(v14 + 160) & 0x80000000) == 0 || (*(v14 + 164) & 0x80000000) == 0 || (*(v14 + 168) & 0x80000000) == 0 || *(v14 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C7B8 != -1)
      {
        dispatch_once(&qword_1ED71C7B8, &unk_1F0E27D20);
      }

      v15 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLAccessoryInertialOdometry::onEventData(void *, void *, IOHIDEventRef)", "CoreLocation: %s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

os_log_t sub_19B6E9510()
{
  result = os_log_create("com.apple.locationd.Motion", "Accessory");
  qword_1ED71C7C8 = result;
  return result;
}

uint64_t sub_19B6E9540(uint64_t result)
{
  v38 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_objectForKeyedSubscript_(v1, v2, @"CMOnBodyStatusManagerClassifierTheta0") && objc_msgSend_objectForKeyedSubscript_(v1, v3, @"CMOnBodyStatusManagerClassifierTheta1") && objc_msgSend_objectForKeyedSubscript_(v1, v4, @"CMOnBodyStatusManagerClassifierTheta2") && objc_msgSend_objectForKeyedSubscript_(v1, v5, @"CMOnBodyStatusManagerClassifierTheta3") && objc_msgSend_objectForKeyedSubscript_(v1, v6, @"CMOnBodyStatusManagerClassifierTheta4") && objc_msgSend_objectForKeyedSubscript_(v1, v7, @"CMOnBodyStatusManagerClassifierTheta5") && objc_msgSend_objectForKeyedSubscript_(v1, v8, @"CMOnBodyStatusManagerClassifierMinLowPower") && objc_msgSend_objectForKeyedSubscript_(v1, v9, @"CMOnBodyStatusManagerClassifierMaxLowPower") && objc_msgSend_objectForKeyedSubscript_(v1, v10, @"CMOnBodyStatusManagerClassifierMaxHighPower") && objc_msgSend_objectForKeyedSubscript_(v1, v11, @"CMOnBodyStatusManagerLowBandStart") && objc_msgSend_objectForKeyedSubscript_(v1, v12, @"CMOnBodyStatusManagerLowBandStop") && objc_msgSend_objectForKeyedSubscript_(v1, v13, @"CMOnBodyStatusManagerHighBandStart") && objc_msgSend_objectForKeyedSubscript_(v1, v14, @"CMOnBodyStatusManagerHighBandStop") && objc_msgSend_objectForKeyedSubscript_(v1, v15, @"CMOnBodyStatusManagerWakeThreshold") && objc_msgSend_objectForKeyedSubscript_(v1, v16, @"CMOnBodyStatusManagerOddsThreshold") && objc_msgSend_objectForKeyedSubscript_(v1, v17, @"CMOnBodyStatusManagerMedianFilterSize") && objc_msgSend_objectForKeyedSubscript_(v1, v18, @"CMOnBodyStatusManagerConfidenceThreshold") && objc_msgSend_objectForKeyedSubscript_(v1, v19, @"CMOnBodyStatusManagerUseHysteresis") && objc_msgSend_objectForKeyedSubscript_(v1, v20, @"CMOnBodyStatusManagerUseAngleOverride") && objc_msgSend_objectForKeyedSubscript_(v1, v21, @"CMOnBodyStatusManagerAngleMetricThreshold"))
    {
      result = 1;
    }

    else
    {
      if (qword_1EAFE2A48 != -1)
      {
        dispatch_once(&qword_1EAFE2A48, &unk_1F0E28C20);
      }

      v22 = qword_1EAFE2A50;
      if (os_log_type_enabled(qword_1EAFE2A50, OS_LOG_TYPE_FAULT))
      {
        v25 = objc_msgSend_description(v1, v23, v24);
        *buf = 136446210;
        v37 = objc_msgSend_UTF8String(v25, v26, v27);
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_FAULT, "Invalid parameters received:\n%{public}s", buf, 0xCu);
      }

      v28 = sub_19B420058();
      if ((*(v28 + 160) & 0x80000000) == 0 || (*(v28 + 164) & 0x80000000) == 0 || (*(v28 + 168) & 0x80000000) == 0 || *(v28 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A48 != -1)
        {
          dispatch_once(&qword_1EAFE2A48, &unk_1F0E28C20);
        }

        v31 = objc_msgSend_description(v1, v29, v30);
        objc_msgSend_UTF8String(v31, v32, v33);
        v34 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "static BOOL CLOnBodyNotifier_Type::Params::isValid(NSDictionary *)", "CoreLocation: %s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }

      result = 0;
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t sub_19B6E9924()
{
  result = os_log_create("com.apple.locationd.Motion", "OnBody");
  qword_1EAFE2A50 = result;
  return result;
}

void sub_19B6E9958(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_19B6F3630(a1, a2, a3);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6E9990(uint64_t a1, _DWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    result = 1;
  }

  else
  {
    if (!*(a1 + 112))
    {
      *(a1 + 120) = dispatch_queue_create("com.apple.CoreMotion.CLGeomagneticModelProviderClientPrivateQueue", 0);
      operator new();
    }

    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
    }

    v3 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_FAULT, "fLocationdConnection is not NULL", buf, 2u);
    }

    v4 = sub_19B420058();
    if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
      }

      v5 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLGeomagneticModelProviderClient::registerForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)", "CoreLocation: %s\n", v5);
      if (v5 != buf)
      {
        free(v5);
      }
    }

    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19B6E9D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a12)
  {
    sub_19B41FFEC(a12);
  }

  sub_19B41FFEC(v33);
  _Unwind_Resume(a1);
}

void *sub_19B6E9DC4(uint64_t a1, CLConnectionMessage **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_19B444AA4(v18, Dictionary);
  if (*(v18[0] + 856))(v18) >= 1 && (sub_19B6E738C(v17, v18))
  {
    v5 = *(v2 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v12 = v17[0];
    v13 = v17[1];
    v11[2] = sub_19B6EA05C;
    v11[3] = &unk_1E7534F88;
    v11[4] = v2;
    v14 = v17[2];
    v15 = v17[3];
    objc_msgSend_async_(v5, v4, v11);
  }

  else
  {
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
    }

    v6 = qword_1EAFE2888;
    if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "Could not get geomagnetic model data for message!", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2880 != -1)
      {
        dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
      }

      v16 = 0;
      v8 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLGeomagneticModelProviderClient::registerForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)_block_invoke", "CoreLocation: %s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  result = sub_19B445384(v18);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6EA05C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v2;
  v3 = *(a1 + 88);
  v6[2] = *(a1 + 72);
  v6[3] = v3;
  v5 = 0;
  return (*(*v1 + 152))(v1, &v5, v6, 1, 0xFFFFFFFFLL, 0);
}

void sub_19B6EA0D4(uint64_t a1, CLConnectionMessage **a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
  }

  v3 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_DEBUG))
  {
    v4 = CLConnectionMessage::name(*a2);
    if (*(v4 + 23) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *v4;
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEBUG, "Default handler received message %s", buf, 0xCu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
    }

    v7 = CLConnectionMessage::name(*a2);
    if (*(v7 + 23) < 0)
    {
      v8 = *v7;
    }

    v9 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 2, "virtual BOOL CLGeomagneticModelProviderClient::registerForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)_block_invoke", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6EA2CC(uint64_t a1, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    goto LABEL_4;
  }

  if (*(a1 + 112))
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
    *(a1 + 112) = 0;
    dispatch_release(*(a1 + 120));
    *(a1 + 120) = 0;
LABEL_4:
    result = 1;
    goto LABEL_5;
  }

  if (qword_1EAFE2880 != -1)
  {
    dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
  }

  v6 = qword_1EAFE2888;
  if (os_log_type_enabled(qword_1EAFE2888, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_FAULT, "fLocationdConnection is NULL", buf, 2u);
  }

  v7 = sub_19B420058();
  if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2880 != -1)
    {
      dispatch_once(&qword_1EAFE2880, &unk_1F0E28940);
    }

    v8 = _os_log_send_and_compose_impl();
    sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLGeomagneticModelProviderClient::unregisterForNotificationInternal(const CLGeomagneticModelProvider_Type::Notification &)", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  result = 0;
LABEL_5:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6EA4B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 108))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v8;
  v8[0] = 0;
  v8[1] = 0;
  v9 = a2;
  v3 = (a1 + 104);
  ++*(a1 + 104);
  v10 = a1 + 104;
  v4 = sub_19B65427C(a1 + 80, (a1 + 104));
  if (v4 + 5 != &v7)
  {
    sub_19B6543B4(v4 + 5, v7, v8);
  }

  v5 = v8[0];
  v4[8] = v9;
  v2 = *v3;
  sub_19B654634(&v7, v5);
  return v2;
}

void sub_19B6EA57C(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v13[0] = a2;
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 80;
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_19B654758(v5, v13);
    }

    else
    {
LABEL_9:
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      v7 = qword_1EAFE2820;
      if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
      {
        v8 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v18 = v8;
        v19 = 1026;
        v20 = a2;
        _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE27F8 != -1)
        {
          dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
        }

        v10 = (a1 + 8);
        if (*(a1 + 31) < 0)
        {
          v10 = *v10;
        }

        v13[1] = 136446466;
        v14 = v10;
        v15 = 1026;
        v16 = a2;
        v11 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "virtual void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::removeClient(int) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6EA820(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_19B65487C(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_19B6EA9AC(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    v3 = objc_alloc_init(CLNotifierServiceAdapter);
    *(a1 + 48) = v3;
    objc_msgSend_setValid_(v3, v4, 1);
    objc_msgSend_setAdaptedNotifier_(*(a1 + 48), v5, a1);
    return *(a1 + 48);
  }

  return result;
}

uint64_t sub_19B6EAA28(uint64_t a1, int a2, int *a3, char *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v34 = a2;
  if (*(a1 + 108))
  {
LABEL_24:
    result = 0;
    goto LABEL_25;
  }

  v6 = *(a1 + 88);
  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = a1 + 88;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v9 == a1 + 88 || *(v9 + 32) > a2)
  {
LABEL_9:
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
    }

    v10 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      v11 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v11 = *v11;
      }

      *buf = 136446466;
      *&buf[4] = v11;
      *&buf[12] = 1026;
      *&buf[14] = a2;
      _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
    }

    v12 = sub_19B420058();
    if ((*(v12 + 160) & 0x80000000) == 0 || (*(v12 + 164) & 0x80000000) == 0 || (*(v12 + 168) & 0x80000000) == 0 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      v13 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v13 = *v13;
      }

      *v35 = 136446466;
      *&v35[4] = v13;
      v36 = 1026;
      v37 = a2;
      v14 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::registerForNotification(int, const Notification_T &, const RegistrationInfo_T &) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    goto LABEL_24;
  }

  *v35 = v9;
  v17 = *a3;
  v20 = *(v9 + 48);
  v19 = v9 + 48;
  v18 = v20;
  if (!v20)
  {
    goto LABEL_33;
  }

  v21 = v19;
  do
  {
    if (*(v18 + 28) >= v17)
    {
      v21 = v18;
    }

    v18 = *(v18 + 8 * (*(v18 + 28) < v17));
  }

  while (v18);
  if (v21 == v19 || v17 < *(v21 + 28))
  {
LABEL_33:
    v21 = v19;
  }

  v22 = *(a1 + 64);
  if (!v22)
  {
    goto LABEL_41;
  }

  v23 = a1 + 64;
  do
  {
    if (*(v22 + 32) >= v17)
    {
      v23 = v22;
    }

    v22 = *(v22 + 8 * (*(v22 + 32) < v17));
  }

  while (v22);
  if (v23 != a1 + 64 && v17 >= *(v23 + 32))
  {
    v33 = v23;
    v30 = *(v23 + 56);
    v31 = *a4;
    *buf = &v34;
    *(sub_19B65570C(v23 + 40, &v34) + 32) = v31;
    v39 = 0u;
    v40 = 0u;
    memset(buf, 0, sizeof(buf));
    if (v21 == v19 && (*(*a1 + 128))(a1, a3, buf))
    {
      sub_19B6ED3FC();
    }

    if (v30)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_41:
    v24 = a1 + 56;
    v33 = a1 + 64;
    v25 = byte_1EAFE31A9;
    v32 = v17;
    *buf = &v32;
    *(sub_19B655538(a1 + 56, &v32) + 80) = v25;
    v32 = *a3;
    *buf = &v32;
    v26 = sub_19B655538(a1 + 56, &v32);
    v27 = v26[9];
    v26[8] = 0;
    v26[9] = 0;
    if (v27)
    {
      sub_19B41FFEC(v27);
    }

    v28 = *a4;
    v32 = *a3;
    *buf = &v32;
    v29 = sub_19B655538(v24, &v32);
    *buf = &v34;
    *(sub_19B65570C((v29 + 5), &v34) + 32) = v28;
  }

  (*(*a1 + 168))(a1, a3);
LABEL_45:
  if (v21 == v19)
  {
    *buf = *a3;
    sub_19B6562C0(*v35 + 40, buf);
  }

  result = 1;
LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19B6EAEC8(uint64_t a1, int a2, int *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v16 = *(v6 + 48);
    v14 = v6 + 48;
    v15 = v16;
    if (!v16)
    {
      goto LABEL_32;
    }

    v17 = *a3;
    v18 = v14;
    do
    {
      if (*(v15 + 28) >= v17)
      {
        v18 = v15;
      }

      v15 = *(v15 + 8 * (*(v15 + 28) < v17));
    }

    while (v15);
    if (v18 == v14 || v17 < *(v18 + 28))
    {
LABEL_32:
      v18 = v14;
    }

    result = v18 != v14;
  }

  else
  {
LABEL_8:
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
    }

    v7 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      *buf = 136446466;
      v20 = v8;
      v21 = 1026;
      v22 = a2;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      if (*(a1 + 31) < 0)
      {
        v10 = *(a1 + 8);
      }

      v11 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::clientRegistered(int, const Notification_T &) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    result = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6EB154(char *a1, int a2, int *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_19B65638C((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_19B65638C((v15 + 40), &v25);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
              }

              v16 = qword_1EAFE2820;
              if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              v19 = sub_19B420058();
              if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1EAFE27F8 != -1)
                {
                  dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_19B6BB7CC("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v3 ^ 1u;
}

void sub_19B6EB528(uint64_t a1, int *a2)
{
  v4 = *(a1 + 64);
  v2 = a1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = v2;
    do
    {
      if (*(v3 + 32) >= v5)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v5));
    }

    while (v3);
    if (v6 != v2 && v5 >= *(v6 + 32))
    {
      v7 = *(v6 + 72);
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      if (v7)
      {
        sub_19B41FFEC(v7);
      }
    }
  }
}

uint64_t sub_19B6EB578(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  v10 = v8[1];
  v11 = v8[3];
  a3[2] = v8[2];
  a3[3] = v11;
  *a3 = v9;
  a3[1] = v10;
  return 1;
}

void sub_19B6EB720(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  v11[6] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v10 = v11;
      memset(v11, 0, 32);
      sub_19B656A70(buf, a2, &v10);
      sub_19B656930();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_19B41FFEC(v7);
    }

    if (*(v6 + 56))
    {
      sub_19B6EC2A4();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_19B6EBC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_19B656DE8(va);
  sub_19B6556D0(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_19B6EBC74(uint64_t a1)
{
  *(&v35[202] + 2) = *MEMORY[0x1E69E9840];
  if (*(a1 + 108) == 1)
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
    }

    v2 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v33 = v3;
      _os_log_impl(&dword_19B41C000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    v4 = sub_19B420058();
    if (*(v4 + 160) > 1 || *(v4 + 164) > 1 || *(v4 + 168) > 1 || *(v4 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      if (*(a1 + 31) < 0)
      {
        v5 = *(a1 + 8);
      }

      v6 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::listClients() [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  else
  {
    if (qword_1EAFE27F8 != -1)
    {
      dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
    }

    v7 = qword_1EAFE2820;
    if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v9 = *(a1 + 96);
      *buf = 136315394;
      v33 = v8;
      v34 = 2048;
      v35[0] = v9;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    v10 = sub_19B420058();
    if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE27F8 != -1)
      {
        dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
      }

      if (*(a1 + 31) < 0)
      {
        v11 = *(a1 + 8);
      }

      v29 = *(a1 + 96);
      v12 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::listClients() [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = *(a1 + 80);
    if (v13 != (a1 + 88))
    {
      v14 = (a1 + 8);
      do
      {
        v15 = v13[5];
        if (v15 != v13 + 6)
        {
          do
          {
            if (qword_1EAFE27F8 != -1)
            {
              dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
            }

            v16 = qword_1EAFE2820;
            if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_DEBUG))
            {
              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v14;
              }

              v18 = *(v13 + 8);
              v19 = *(v15 + 7);
              *buf = 136315650;
              v33 = v17;
              v34 = 1024;
              LODWORD(v35[0]) = v18;
              WORD2(v35[0]) = 1024;
              *(v35 + 6) = v19;
              _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            v20 = sub_19B420058();
            if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
              }

              if (*(a1 + 31) < 0)
              {
                v21 = *v14;
              }

              v30 = *(v13 + 8);
              v31 = *(v15 + 7);
              v22 = _os_log_send_and_compose_impl();
              sub_19B6BB7CC("Generic", 1, 0, 2, "virtual void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::listClients() [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v22);
              if (v22 != buf)
              {
                free(v22);
              }
            }

            v23 = v15[1];
            if (v23)
            {
              do
              {
                v24 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v24 = v15[2];
                v25 = *v24 == v15;
                v15 = v24;
              }

              while (!v25);
            }

            v15 = v24;
          }

          while (v24 != v13 + 6);
        }

        v26 = v13[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v13[2];
            v25 = *v27 == v13;
            v13 = v27;
          }

          while (!v25);
        }

        v13 = v27;
      }

      while (v27 != (a1 + 88));
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

double sub_19B6EC28C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xBFF0000000000000;
  return result;
}

void sub_19B6EC358(uint64_t a1, int *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 64;
    v4 = *(a1 + 64);
    if (v4)
    {
      v8 = *a2;
      v9 = a1 + 64;
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_19B6EC8DC(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = (a1 + 88);
          v13 = (a1 + 8);
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 88;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 32), v15 >= v17))
            {
              v38 = v16;
              sub_19B6EC748(a1, &v38, &v39, a3);
              v25 = *(a1 + 64);
              if (!v25)
              {
                break;
              }

              v26 = *a2;
              v27 = v5;
              do
              {
                if (*(v25 + 32) >= v26)
                {
                  v27 = v25;
                }

                v25 = *(v25 + 8 * (*(v25 + 32) < v26));
              }

              while (v25);
              if (v27 == v5 || v26 < *(v27 + 32))
              {
                break;
              }

              v39 = v27;
              v29 = *(v27 + 48);
              v11 = (v27 + 48);
              v28 = v29;
              if (v29)
              {
                v30 = v11;
                v31 = v28;
                do
                {
                  if (*(v31 + 28) >= v17)
                  {
                    v30 = v31;
                  }

                  v31 = *(v31 + 8 * (*(v31 + 28) < v17));
                }

                while (v31);
                if (v30 == v11 || v17 < *(v30 + 7))
                {
                  do
                  {
                    v32 = *(v28 + 28);
                    v33 = v17 < v32;
                    v34 = v17 >= v32;
                    if (v33)
                    {
                      v11 = v28;
                    }

                    v28 = *(v28 + 8 * v34);
                  }

                  while (v28);
                }

                else
                {
                  v35 = v30[1];
                  if (v35)
                  {
                    do
                    {
                      v11 = v35;
                      v35 = *v35;
                    }

                    while (v35);
                  }

                  else
                  {
                    do
                    {
                      v11 = v30[2];
                      v36 = *v11 == v30;
                      v30 = v11;
                    }

                    while (!v36);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 88;
              if (qword_1EAFE27F8 != -1)
              {
                dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
              }

              v18 = qword_1EAFE2820;
              if (os_log_type_enabled(qword_1EAFE2820, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 8;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              v21 = sub_19B420058();
              if ((*(v21 + 160) & 0x80000000) == 0 || (*(v21 + 164) & 0x80000000) == 0 || (*(v21 + 168) & 0x80000000) == 0 || *(v21 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE27F8 != -1)
                {
                  dispatch_once(&qword_1EAFE27F8, &unk_1F0E27F60);
                }

                v22 = a1 + 8;
                if (*(a1 + 31) < 0)
                {
                  v22 = *v13;
                }

                v23 = *(v11 + 7);
                v40 = 136446466;
                v41 = v22;
                v42 = 1026;
                v43 = v23;
                v24 = _os_log_send_and_compose_impl();
                sub_19B6BB7CC("Generic", 1, 0, 0, "void CLNotifier<CLGeomagneticModelProvider_Type::Notification, CLGeomagneticModelProvider_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLGeomagneticModelProvider_Type::Notification, NotificationData_T = CLGeomagneticModelProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "CoreLocation: %s\n", v24);
                if (v24 != buf)
                {
                  free(v24);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19B6EC748(uint64_t result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((*(result + 108) & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v13) = *(*a3 + 32);
    v9 = sub_19B6EC8DC(a4);
    v10 = *a3;
    v14 = (*a2 + 32);
    v11 = sub_19B65570C(v10 + 40, v14);
    result = (*(*v7 + 192))(v7, v8, &v13, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return objc_msgSend_onNotification_withData_(*(*a2 + 64), v12, *(*a3 + 32), a4, v13);
    }
  }

  return result;
}

void sub_19B6EC860(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F0E2AC60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B6EC8BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

uint64_t sub_19B6EC8DC(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_19B6EC978(a1, v2, v3);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_19B6ECD0C(a1, v5, v6);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19B6EC978(void *a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (v4)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
      }

      v8 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v23 = v4;
        v24 = 2048;
        v25 = 0;
        v26 = 2080;
        v27 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v8, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v9 = sub_19B420058();
      if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
      {
        goto LABEL_23;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 == -1)
      {
LABEL_21:
        v16 = 134218498;
        v17 = v4;
        v18 = 2048;
        v19 = 0;
        v20 = 2080;
        v21 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        v13 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGeomagneticModelProvider_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:241:46)]", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }

LABEL_23:
        result = 0;
        goto LABEL_24;
      }
    }

    else
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
      }

      v11 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v23 = v4;
        v24 = 2048;
        v25 = 0;
        v26 = 2080;
        v27 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v11, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v12 = sub_19B420058();
      if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
      {
        goto LABEL_23;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 == -1)
      {
        goto LABEL_21;
      }
    }

    dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
    goto LABEL_21;
  }

  result = sub_19B6ED0D8(&v15, a1, v7);
LABEL_24:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19B6ECD0C(void *a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_binaryVersion(a1, a2, a3);
  objc_msgSend_sizeOfType(a1, v5, v6);
  if (v4)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
      }

      v9 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v18 = v4;
        v19 = 2048;
        v20 = 0;
        v21 = 2080;
        v22 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v9, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v10 = sub_19B420058();
      if ((*(v10 + 160) & 0x80000000) != 0 && (*(v10 + 164) & 0x80000000) != 0 && (*(v10 + 168) & 0x80000000) != 0 && !*(v10 + 152))
      {
        goto LABEL_25;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 == -1)
      {
LABEL_23:
        v15 = _os_log_send_and_compose_impl();
        sub_19B6BB7CC("Generic", 1, 0, 0, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLGeomagneticModelProvider_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLCppContainer.h:250:46)]", "CoreLocation: %s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }

LABEL_25:
        v16 = *MEMORY[0x1E69E9840];
        return 0;
      }
    }

    else
    {
      if (qword_1EAFE2958 != -1)
      {
        dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
      }

      v13 = qword_1EAFE2960;
      if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218498;
        v18 = v4;
        v19 = 2048;
        v20 = 0;
        v21 = 2080;
        v22 = "N31CLGeomagneticModelProvider_Type16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
      }

      v14 = sub_19B420058();
      if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
      {
        goto LABEL_25;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2958 == -1)
      {
        goto LABEL_23;
      }
    }

    dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
    goto LABEL_23;
  }

  v11 = *MEMORY[0x1E69E9840];

  return objc_msgSend_cppObjectPtr(a1, v7, v8);
}

uint64_t sub_19B6ED0D8(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_cppObjectPtr(a2, a2, a3))
  {
    v6 = objc_msgSend_compatibilityInfo(a2, v4, v5);
    if (objc_msgSend_isEqual_(v6, v7, &unk_1F0E6A678))
    {
      v8 = objc_msgSend_serialized(a2, v4, v5);
      if (objc_msgSend_length(v8, v9, v10) != 64)
      {
        if (qword_1EAFE2958 != -1)
        {
          dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
        }

        v20 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = "assert";
          v29 = 2081;
          v30 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
          }
        }

        v21 = qword_1EAFE2960;
        if (os_signpost_enabled(qword_1EAFE2960))
        {
          *buf = 68289539;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = "assert";
          v29 = 2081;
          v30 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_signpost_emit_with_name_impl(&dword_19B41C000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "The total size of the POD types on the 2 architectures is expected to be the same.", "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
          if (qword_1EAFE2958 != -1)
          {
            dispatch_once(&qword_1EAFE2958, &unk_1F0E281C0);
          }
        }

        v22 = qword_1EAFE2960;
        if (os_log_type_enabled(qword_1EAFE2960, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v24 = 0;
          v25 = 2082;
          v26 = "";
          v27 = 2082;
          v28 = "assert";
          v29 = 2081;
          v30 = "sizeof(Object_T) == podContainer.serialized.length";
          _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:The total size of the POD types on the 2 architectures is expected to be the same., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np();
      }

      v13 = objc_msgSend_serialized(a2, v11, v12);
      v16 = objc_msgSend_bytes(v13, v14, v15);
      objc_msgSend_setCppObjectPtr_(a2, v17, v16);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return objc_msgSend_cppObjectPtr(a2, v4, v5);
}

os_log_t sub_19B6ED39C()
{
  result = os_log_create("com.apple.locationd.Support", "Support");
  qword_1EAFE2960 = result;
  return result;
}

os_log_t sub_19B6ED3CC()
{
  result = os_log_create("com.apple.locationd.Core", "Notifier");
  qword_1EAFE2820 = result;
  return result;
}

uint64_t sub_19B6ED4B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    JUMPOUT(0x19EAE76F0);
  }

  return result;
}

void sub_19B6ED854(uint64_t a1, mach_error_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
    }

    v4 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      *buf = 134218242;
      v15 = v5;
      v16 = 2080;
      v17 = mach_error_string(a2);
      _os_log_impl(&dword_19B41C000, v4, OS_LOG_TYPE_INFO, "[CLHidManager] setReport: id=0x%lx, failed=%s", buf, 0x16u);
    }

    v6 = sub_19B420058();
    if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
      }

      v12 = *(a1 + 32);
      mach_error_string(a2);
LABEL_24:
      v10 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CLHidDevice setReport:payload:length:]_block_invoke", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    if (qword_1ED71C830 != -1)
    {
      dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
    }

    v7 = off_1ED71C838;
    if (os_log_type_enabled(off_1ED71C838, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 134218240;
      v15 = v8;
      v16 = 1024;
      LODWORD(v17) = 1;
      _os_log_impl(&dword_19B41C000, v7, OS_LOG_TYPE_INFO, "[CLHidManager] setReport: id=0x%lx, success=%d", buf, 0x12u);
    }

    v9 = sub_19B420058();
    if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED71C830 != -1)
      {
        dispatch_once(&qword_1ED71C830, &unk_1F0E29C40);
      }

      v13 = *(a1 + 32);
      goto LABEL_24;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}